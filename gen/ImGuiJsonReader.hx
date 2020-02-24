
import json2object.JsonParser;
import haxe.macro.Expr;

using StringTools;
using Lambda;

typedef JsonEnum = {
    calc_value : Int,
    name       : String,
    value      : String
};
typedef JsonStruct = {
    var name : String;
    var type : String;
    @:default(0)
    var size : Int;
    @:default('')
    var template_type : String;
};
typedef JsonEnumStruct = {
    var enums : Map<String, Array<JsonEnum>>;
    var structs : Map<String, Array<JsonStruct>>;
}
typedef JsonFunctionArg = {
    var name : String;
    var type : String;
    @:default('')
    var signature : String;
}
typedef JsonFunction = {
    var args : String;
    var argsT : Array<JsonFunctionArg>;
    var argsoriginal : String;
    var call_args : String;
    var cimguiname : String;
    var ov_cimguiname : String;
    var funcname : String;
    var stname : String;
    var signature : String;

    @:default([])
    var defaults : Map<String, String>;

    @:default(false)
    var constructor : Bool;

    @:default(false)
    var destructor : Bool;

    @:default(false)
    var templatedgen : Bool;
    @:default(false)
    var templated : Bool;
    var ?isvararg : String;
    var ?retref : String;
    var ?namespace : String;
    var ?ret : String;
    var ?retorig : String;
}
typedef JsonDefinitions = Map<String, Array<JsonFunction>>;
typedef JsonTypedef = Map<String, String>;

class ImGuiJsonReader
{
    final typedefs : JsonTypedef;
    final enumStruct : JsonEnumStruct;
    final definitions : JsonDefinitions;

    public function new(_typedefs : String, _enumStruct : String, _definitions : String)
    {
        typedefs     = new JsonParser<Map<String, String>>().fromJson(_typedefs);
        enumStruct   = new JsonParser<JsonEnumStruct>().fromJson(_enumStruct);
        definitions  = new JsonParser<JsonDefinitions>().fromJson(_definitions);
    }

    /**
     * Generate expr type definitions for all typedef aliases found in the json.
     * Ignores flags, structs, and iterators and they are generated else where.
     * @return Array<TypeDefinition>
     */
    public function generateTypedefs() : Array<TypeDefinition>
    {
        return [
            for (name => value in typedefs)
            {
                if (name == 'iterator' ||
                    name == 'const_iterator' ||
                    name == 'value_type' ||
                    name.endsWith('Flags') ||
                    value.contains('struct '))
                {
                    continue;
                }

                if (enumStruct.enums.exists('${ name }_'))
                {
                    continue;
                }

                { pack: [ 'imgui' ], name: name, pos: null, fields: [], kind: TDAlias(parseNativeString(value)) }
            }
        ];
    }

    /**
     * Generate expr type definitions for all the enums found in the json.
     * Integer based abstract enums are generated with implicit to and from int conversions.
     * 
     * The json definition enum names are post fixed with `_` so we substring the last character away.
     * Enum members are also prefixed with the enum struct they belong to, so we remove that from each enum members name.
     * @return Array<TypeDefinition>
     */
    public function generateEnums() : Array<TypeDefinition>
    {
        return [ for (name => values in enumStruct.enums) {
            pack   : [ 'imgui' ],
            kind   : TDAbstract(macro : Int, [ macro : Int ], [ macro : Int ]),
            name   : name.substr(0, name.length - 1),
            pos    : null,
            meta   : [ { name: ':enum', pos : null } ],
            fields : [ for (value in values) {
                name : value.name.replace(name, ''),
                kind : FVar(macro : Int, { pos: null, expr: EConst(CInt('${value.calc_value}')) }),
                pos  : null,
            } ]
        } ];
    }

    public function generateStructs() : Array<TypeDefinition>
    {
        final structs = [];

        for (name => values in enumStruct.structs)
        {
            final struct : TypeDefinition = {
                pack     : [ 'imgui' ],
                kind     : TDClass(null, null, false, false),
                name     : name,
                pos      : null,
                fields   : [ ],
                isExtern : true,
                meta     : [
                    { name: ':keep', pos : null },
                    { name: ':structAccess', pos : null },
                    { name: ':include', pos : null, params: [ { expr : EConst(CString('imgui.h', SingleQuotes)), pos : null } ] },
                    { name: ':native', pos : null, params: [ { expr : EConst(CString(name, SingleQuotes)), pos : null } ] }
                ]
            }

            // Generate fields
            for (value in values)
            {
                // Ignore function and union types for now
                if (value.type.contains('(*)') || value.type.contains('union {'))
                {
                    continue;
                }

                var finalType;
                var finalName = value.name;

                if (value.template_type != '')
                {
                    // TODO : Very lazy and should be improved.
                    // Exactly one of the templated types is also a pointer, so do a quick check and manually wrap it.
                    // Can't use parseNativeType as we need a user friendly string name, not the actual type
                    if (value.template_type.contains('*'))
                    {
                        finalType = TPath({ pack: [ 'cpp' ], name: 'Star' , params: [
                            TPType(TPath({pack : [ ], name : 'ImVector${value.template_type.replace('*', '')}Pointer'}))
                        ] });
                    }
                    else
                    {
                        finalType = TPath({ pack : [ ], name : 'ImVector${value.template_type}' });
                    }
                }
                else
                {
                    // Get the corresponding (and potentially simplified) complex type.
                    final type = parseNativeString(value.type);

                    // If its an array type wrap it in a pointer.
                    // cpp.Star doesn't allow array access so we need to use the old cpp.RawPointer.
                    if (value.size > 0)
                    {
                        finalName = value.name.split('[')[0];
                        finalType = TPath({ pack : [ 'cpp' ], name : 'RawPointer', params : [ TPType(type) ] });
                    }
                    else
                    {
                        finalType = type;
                    }
                }

                struct.fields.push({
                    name : getHaxefriendlyName(finalName),
                    kind : FVar(finalType),
                    pos  : null,
                    meta : [ { name: ':native', params: [ { expr: EConst(CString(finalName, SingleQuotes)), pos : null } ], pos : null } ]
                });
            }

            // Generate functions
            for (_ => overloads in definitions)
            {
                var baseFunction = null;
                for (overloadedFn in overloads)
                {
                    if (overloadedFn.stname != name || overloadedFn.constructor || overloadedFn.destructor)
                    {
                        continue;
                    }

                    if (baseFunction == null)
                    {
                        baseFunction = generateFunction(overloadedFn, null, false);
                    }
                    else
                    {
                        baseFunction.meta.push({
                            name   : ':overload',
                            pos    : null,
                            params : [ { pos: null, expr: extractFunctionExpr(generateFunction(overloadedFn, EBlock([]), false)) } ]
                        });
                    }
                }

                if (baseFunction != null)
                {
                    struct.fields.push(baseFunction);
                }
            }

            structs.push(struct);
        }

        return structs;
    }

    public function generateImVectors() : Array<TypeDefinition>
    {
        // Generic class
        final generatedVectors = [];
        final imVectorClass : TypeDefinition = {
            pos      : null,
            pack     : [ 'imgui' ],
            name     : 'ImVector',
            kind     : TDClass(null, null, null, null),
            fields   : [],
            isExtern : true,
            params   : [ { name: 'T' } ],
            meta     : [
                { name: ':keep', pos : null },
                { name: ':structAccess', pos : null },
                { name: ':include', pos : null, params: [ { expr : EConst(CString('imgui.h', SingleQuotes)), pos : null } ] },
                { name: ':native', pos : null, params: [ { expr : EConst(CString('ImVector', SingleQuotes)), pos : null } ] }
            ]
        }

        // Manually add data field
        // This is a special RawPointer field to allow array access to the vectors items.
        imVectorClass.fields.push({
            name : 'data',
            pos  : null,
            kind : FVar(macro : cpp.RawPointer<T>),
            meta : [ { name: ':native', pos : null, params: [ { expr : EConst(CString('Data', SingleQuotes)), pos : null } ] } ]
        });

        generatedVectors.push(imVectorClass);

        // Fill in fields for generic class
        for (_ => overloads in definitions)
        {
            var baseFunction = null;
            for (overloadedFn in overloads)
            {
                if (overloadedFn.constructor || overloadedFn.destructor || !overloadedFn.templated)
                {
                    continue;
                }

                if (baseFunction == null)
                {
                    baseFunction = generateFunction(overloadedFn, null, false);
                }
                else
                {
                    baseFunction.meta.push({
                        name   : ':overload',
                        pos    : null,
                        params : [ { pos: null, expr: extractFunctionExpr(generateFunction(overloadedFn, EBlock([]), false)) } ]
                    });
                }
            }

            if (baseFunction != null)
            {
                imVectorClass.fields.push(baseFunction);
            }
        }

        // Compile a list of all known vector templates
        final templatedTypes = [];
        for (_ => fields in enumStruct.structs)
        {
            for (field in fields)
            {
                if (field.template_type != '')
                {
                    if (!templatedTypes.has(field.template_type))
                    {
                        templatedTypes.push(field.template_type);
                    }
                }
            }
        }
        for (_ => overloads in definitions)
        {
            for (overloadFn in overloads)
            {
                if (overloadFn.constructor || overloadFn.destructor || overloadFn.templated)
                {
                    continue;
                }

                if (overloadFn.ret.startsWith('ImVector_'))
                {
                    final templatedType = overloadFn.ret.replace('ImVector_', '');
                    if (!templatedTypes.has(templatedType))
                    {
                        templatedTypes.push(templatedType);
                    }
                }

                for (arg in overloadFn.argsT)
                {
                    if (arg.type.startsWith('ImVector_'))
                    {
                        final templatedType = arg.type.replace('ImVector_', '');
                        if (!templatedTypes.has(templatedType))
                        {
                            templatedTypes.push(templatedType);
                        }
                    }
                }
            }
        }

        // Generate an extern for each templated type
        for (templatedType in templatedTypes)
        {
            final ct = parseNativeString(templatedType);
            var name = cleanNativeType(templatedType);

            for (_ in 0...occurance(templatedType, '*'))
            {
                name += 'Pointer';
            }

            generatedVectors.push({
                pos      : null,
                pack     : [ 'imgui' ],
                name     : 'ImVector$name',
                kind     : TDClass({ pack: [ 'imgui' ], name: 'ImVector', params: [ TPType(ct) ] }, null, null, null),
                fields   : [],
                isExtern : true,
                meta     : [
                    { name: ':keep', pos : null },
                    { name: ':structAccess', pos : null },
                    { name: ':include', pos : null, params: [ { expr : EConst(CString('imgui.h', SingleQuotes)), pos : null } ] },
                    { name: ':native', pos : null, params: [ { expr : EConst(CString('ImVector<$templatedType>', SingleQuotes)), pos : null } ] }
            ]});
        }

        return generatedVectors;
    }

    public function generateEmptyExtern(_name : String) : TypeDefinition
    {
        return {
            pos      : null,
            pack     : [ 'imgui' ],
            name     : _name,
            kind     : TDClass(null, null, null, null),
            fields   : [],
            isExtern : true,
            meta     : [
                { name: ':keep', pos : null },
                { name: ':structAccess', pos : null },
                { name: ':include', pos : null, params: [ { expr : EConst(CString('imgui.h', SingleQuotes)), pos : null } ] },
                { name: ':native', pos : null, params: [ { expr : EConst(CString(_name, SingleQuotes)), pos : null } ] }
            ]
        }
    }

    public function generateTopLevelFunctions() : TypeDefinition
    {
        final topLevelClass : TypeDefinition = {
            pos: null,
            pack     : [ 'imgui' ],
            name     : 'ImGui',
            kind     : TDClass(null, null, null, null),
            fields   : [],
            isExtern : true,
            meta     : [
                { name: ':keep', pos : null },
                { name: ':structAccess', pos : null },
                { name: ':include', pos : null, params: [ { expr : EConst(CString('imgui.h', SingleQuotes)), pos : null } ] }
            ]
        }

        for (_ => overloads in definitions)
        {
            if (overloads[0].stname != '')
            {
                continue;
            }

            final baseFunction = generateFunction(overloads[0], null, true);

            for (overloadedFunction in overloads.slice(1))
            {
                baseFunction.meta.push({
                    name   : ':overload',
                    pos    : null,
                    params : [
                        { pos: null, expr: extractFunctionExpr(generateFunction(overloadedFunction, EBlock([]), true)) }
                    ]
                });
            }

            topLevelClass.fields.push(baseFunction);
        }

        return topLevelClass;
    }

    function extractFunctionExpr(_function : Field) : ExprDef
    {
        switch _function.kind
        {
            case FFun(f): return EFunction(FAnonymous, f);
            case _: throw 'should be function';
        }
    }

    function generateFunction(_function : JsonFunction, _endExpr : ExprDef, _isStatic : Bool) : Field
    {
        // Take out the first argument if its called 'self'
        // This is used for the cimgui bindings but we don't need it as we can use the original c++ structs and functions.
        if (_function.argsT.length > 0)
        {
            if (_function.argsT[0].name == 'self')
            {
                _function.argsT.shift();
            }
        }

        final ftype : Function = {
            expr : null,
            ret  : buildReturnType(parseNativeString(_function.retorig != null ? _function.retorig : _function.ret), _function.retref != null),
            args : [ for (arg in _function.argsT) {
                name : '_${ getHaxefriendlyName(arg.name) }',
                type : parseNativeString(arg.type)
            } ]
        }

        if (_endExpr != null)
        {
            ftype.expr = { expr: _endExpr, pos: null }
        }

        return
        {
            name   : getHaxefriendlyName(_function.funcname),
            pos    : null,
            access : _isStatic ? [ AStatic ] : [],
            kind   : FFun(ftype),
            meta   : [
                { name : ':native', params : [ { expr: EConst(CString('ImGui::${_function.funcname}', SingleQuotes)), pos : null } ], pos : null }
            ]
        }
    }

    function parseNativeString(_in : String) : ComplexType
    {
        if (_in.contains('(*)'))
        {
            return parseFunction(_in);
        }
        else
        {
            return parseType(_in);
        }
    }

    function parseType(_in : String) : ComplexType
    {
        // count how many pointer levels then strip any of that away
        final pointer = occurance(_in, '*');
        final refType = occurance(_in, '&');
        final cleaned = _in.replace('const', '').replace('*', '').replace('&', '').trim();
        var ct;

        if (cleaned.startsWith('ImVector_'))
        {
            var type = cleaned.replace('ImVector_', '');
            for (_ in 0...pointer)
            {
                type += 'Pointer';
            }

            return TPath({ pack: [ ], name: 'ImVector$type' });
        }

        if (cleaned.contains('['))
        {
            // Array type
            // This should be simplified to an abstract in the future for easy array assignment.
            // Should add this type to an array so abstracts can be auto generated in the future.

            final arrayType = cleaned.split('[')[0];

            ct = TPath({ pack: [ 'cpp' ], name: 'Star', params: [ TPType( getHaxeType(arrayType) ) ] });
        }
        else
        {
            ct = getHaxeType(cleaned);
        }

        // Get the base complex type, then wrap it in as many pointer as is required.
        for (_ in 0...pointer)
        {
            ct = TPath({ pack: [ 'cpp' ], name: 'Star', params: [ TPType(ct) ] });
        }
        for (_ in 0...refType)
        {
            ct = TPath({ pack: [ 'cpp' ], name: 'Reference', params: [ TPType(ct) ] });
        }

        // Attempt to detect pointer patters and map them to custom abstracts for easier end-user usage.
        return simplifyComplexType(ct);
    }

    function parseFunction(_in : String) : ComplexType
    {
        final returnType    = _in.split('(*)')[0];
        final bracketedArgs = _in.split('(*)')[1];
        final splitArgs     = bracketedArgs.substr(1, bracketedArgs.length - 2).split(',');

        final ctArgs = [];
        for (arg in splitArgs)
        {
            final split = arg.split(' ');

            final name = split.pop();
            final type = split.join(' ');

            ctArgs.push(parseNativeString(type));
        }

        return TPath({ pack: [ 'cpp' ], name: 'Callable', params: [ TPType(TFunction(ctArgs, parseType(returnType))) ] });
    }

    function buildReturnType(_ct : ComplexType, _reference : Bool)
    {
        if (_reference)
        {
            switch _ct
            {
                case TPath(p):
                    // If the return type is a reference and the outer-most complex type is a pointer
                    // Strip that pointer off and make it a reference instead.
                    if (p.name == 'Star')
                    {
                        return TPath({ pack: [ 'cpp' ], name: 'Reference', params: p.params });
                    }
                case _:
            }
        }

        return _ct;
    }

    function getHaxeType(_in : String) : ComplexType
    {
        return switch _in.trim()
        {
            case 'int', 'signed int'           : macro : Int;
            case 'unsigned int'                : macro : UInt;
            case 'short', 'signed short'       : macro : cpp.Int16;
            case 'unsigned short'              : macro : cpp.UInt16;
            case 'float'                       : macro : cpp.Float32;
            case 'double'                      : macro : Float;
            case 'bool'                        : macro : Bool;
            case 'char', 'signed char'         : macro : cpp.Int8;
            case 'unsigned char', 'const char' : macro : cpp.UInt8;
            case 'int64_t'                     : macro : cpp.Int64;
            case 'uint64_t'                    : macro : cpp.UInt64;
            case 'va_list', '...'              : macro : cpp.VarArg;
            case 'size_t'                      : macro : cpp.SizeT;
            case 'void'                        : macro : cpp.Void;
            case 'T'                           : macro : T;
            case 'ImVector'                    : macro : imgui.ImVector<T>;
            case _other: TPath({ pack: [ 'imgui' ], name : _other });
        }
    }

    function simplifyComplexType(_ct : ComplexType) : ComplexType
    {
        switch _ct
        {
            case TPath(p):
                // If we have no type parameters there is no simplification we can make.
                if (p.params == null || p.params.length == 0)
                {
                    return _ct;
                }

                // Attempt to simplify `unsigned char*` and `void*` pointers to a custom abstract type.
                // Makes common pointer types easier to deal with.
                if (p.name == 'Star')
                {
                    for (param in p.params)
                    {
                        switch param
                        {
                            case TPType(inner):
                                switch inner
                                {
                                    case TPath(innerPath):
                                        switch innerPath.name
                                        {
                                            case 'UInt8', 'Int8': return TPath({ pack: [ 'imgui' ], name: 'CharPointer' });
                                            case 'Void': return TPath({ pack: [ 'imgui' ], name: 'VoidPointer' });
                                            case _: // Not other pointer simplifications at this point
                                        }
                                    case _: throw 'complex type parameter should be another TPath';
                                }
                            case _: throw 'complex type parameter should be another TPath';
                        }
                    }
                }

            case _: throw 'complex type should not be anything but TPath';
        }

        return _ct;
    }

    function occurance(_in : String, _search : String) : Int
    {
        var pointer = 0;
        for (i in 0..._in.length)
        {
            if (_in.charAt(i) == _search)
            {
                pointer++;
            }
        }

        return pointer;
    }

    function getHaxefriendlyName(_in : String)
    {
        if (_in == '...')
        {
            return 'vargs';
        }
        else
        {
            return '${_in.charAt(0).toLowerCase()}${_in.substr(1)}';
        }
    }

    static function cleanNativeType(_in : String) : String
    {
        return _in == 'const char*' ? 'ConstCharStar' : _in.replace('*', '').replace('const', '').replace('&', '').trim();
    }

    static function getPointerLevel(_in : String) : Int
    {
        if (_in == 'const char*') return 0;
        if (_in.contains('**')) return 1;

        var count = 0;
        for (i in 0..._in.length)
        {
            if (_in.charAt(i) == '*') count++;
        }

        return count;
    }
}
