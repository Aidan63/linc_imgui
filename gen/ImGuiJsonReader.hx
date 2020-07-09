
import json2object.JsonParser;
import haxe.macro.Expr;

using StringTools;
using Lambda;
using Safety;

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
    
    var abstractPtrs = true;

    public function new(_typedefs : String, _enumStruct : String, _definitions : String)
    {
        typedefs     = new JsonParser<Map<String, String>>().fromJson(_typedefs);
        enumStruct   = new JsonParser<JsonEnumStruct>().fromJson(_enumStruct);
        definitions  = new JsonParser<JsonDefinitions>().fromJson(_definitions);
    }

    /**
     * Generate type definitions for all typedef aliases found in the json.
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
     * Generate type definitions for all the enums found in the json.
     * Integer based abstract enums are generated with implicit to and from int conversions.
     * 
     * The json definition enum names are post fixed with `_` so we substring the last character away.
     * Enum members are also prefixed with the enum struct they belong to, so we remove that from each enum members name.
     * @return Array<TypeDefinition>
     */
    public function generateEnums() : Array<TypeDefinition>
    {
        return [
            for (name => values in enumStruct.enums)
            {
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
            }
        ];
    }

    /**
     * Generate externs for each struct in the enums and structs json.
     * Also searches the definitions json for functions which belong to each struct.
     * 
     * Destructors are not current generated, stack based constructors only right now.
     * @return Array<TypeDefinition>
     */
    public function generateStructs() : Array<TypeDefinition>
    {
        final structs = [];

        for (name => values in enumStruct.structs)
        {
            final struct    = macro class $name {};
            struct.isExtern = true;
            struct.meta     = [
                { name: ':keep', pos : null },
                { name: ':structAccess', pos : null },
                { name: ':include', pos : null, params: [ macro $i{ '"imgui.h"' } ] },
                { name: ':native', pos : null, params: [ macro $i{ '"$name"' } ] }
            ];

            // Generate fields
            for (value in values)
            {
                // Ignore union types for now
                if (value.type.contains('union {'))
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
                        final ctInner = TPath({ pack : [ ], name : 'ImVector${value.template_type.replace('*', '')}Pointer' });

                        finalType = macro : cpp.Star<$ctInner>;
                    }
                    else
                    {
                        finalType = TPath({ pack : [ ], name : 'ImVector${value.template_type}' });
                    }
                }
                else
                {
                    // Get the corresponding (and potentially simplified) complex type.
                    final ctType = parseNativeString(value.type);

                    // If its an array type wrap it in a pointer.
                    // cpp.Star doesn't allow array access so we need to use the old cpp.RawPointer.
                    if (value.size > 0)
                    {
                        // Attempt to simplify again now that its wrapped in a raw pointer
                        finalName = value.name.split('[')[0];
                        finalType = simplifyComplexType(macro : cpp.RawPointer<$ctType>);
                    }
                    else
                    {
                        finalType = ctType;
                    }
                }

                struct.fields.push({
                    name : getHaxefriendlyName(finalName),
                    kind : FVar(finalType),
                    pos  : null,
                    meta : [ { name: ':native', pos : null, params: [ macro $i{ '"$finalName"' } ] } ]
                });
            }

            for (field in generateFunctionFieldsArray(
                definitions.map(f -> f.filter(i -> i.stname == name && !i.destructor)), false))
            {
                struct.fields.push(field);
            }

            structs.push(struct);
        }

        return structs;
    }

    /**
     * Generate an ImVector generic and sub classes for all found ImVectors.
     * Same as structs, no descructors and stack based constructors only.
     * @return Array<TypeDefinition>
     */
    public function generateImVectors() : Array<TypeDefinition>
    {
        final generatedVectors = [];
        final imVectorClass    = macro class ImVector<T> {
            @:native('Data') var data : cpp.RawPointer<T>;
        };
        imVectorClass.isExtern = true;
        imVectorClass.meta     = [
            { name: ':keep', pos : null },
            { name: ':structAccess', pos : null },
            { name: ':include', pos : null, params: [ macro $i{ '"imgui.h"' } ] },
            { name: ':native', pos : null, params: [ macro $i{ '"ImVector"' } ] }
        ];
        imVectorClass.fields = imVectorClass.fields.concat(generateFunctionFieldsArray(
            definitions.map(f -> f.filter(i -> !i.constructor && !i.destructor && i.templated)), false));

        generatedVectors.push(imVectorClass);

        // Compile a list of all known vector templates
        // Search the argument and variable types of all structs and functions.
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

            final fullname = 'ImVector$name';
            final templated    = macro class $fullname extends ImVector<$ct> {};
            templated.isExtern = true;
            templated.meta     = [
                { name: ':keep', pos : null },
                { name: ':structAccess', pos : null },
                { name: ':include', pos : null, params: [ macro $i{ '"imgui.h"' } ] },
                { name: ':native', pos : null, params: [ macro $i{ '"ImVector<$templatedType>"' } ] }
            ];

            // Add constructors for each imvector child
            // Has a standard constructor and one which copies from another vector of the same type.
            final constructor : Field = {
                name   : 'create',
                pos    : null,
                access : [ AStatic ], kind: FFun(generateFunctionAst(fullname, false, [], false))
            };
            constructor.meta = [
                { name : ':native', pos : null, params : [ macro $i{ '"ImVector<$templatedType>"' } ] },
                {
                    name   : ':overload',
                    pos    : null,
                    params : [
                        {
                            expr : EFunction(FAnonymous, generateFunctionAst(fullname, false, [ {
                                    name      : 'src',
                                    type      : fullname,
                                    signature : ''
                                } ], true)),
                            pos  : null
                        }
                    ]
                }
            ];

            templated.fields.push(constructor);

            generatedVectors.push(templated);
        }

        return generatedVectors;
    }

    /**
     * Generate an empty extern, needed to create context type.
     * @param _name Name of the extern to generate.
     * @return TypeDefinition
     */
    public function generateEmptyExtern(_name : String) : TypeDefinition
    {
        final def    = macro class $_name {};
        def.isExtern = true;
        def.meta     = [
            { name: ':keep', pos : null },
            { name: ':structAccess', pos : null },
            { name: ':include', pos : null, params: [ macro $i{ '"imgui.h"' } ] },
            { name: ':native', pos : null, params: [ macro $i{ '"$_name"' } ] }
        ];

        return def;
    }

    /**
     * Generate the the type definition for the extern class which will contain all the top level static imgui functions.
     * @return TypeDefinition
     */
    public function generateTopLevelFunctions() : TypeDefinition
    {
        final topLevelClass    = macro class ImGui { };
        topLevelClass.fields   = generateFunctionFieldsArray(definitions.map(f -> f.filter(i -> i.stname == '')), true);
        topLevelClass.isExtern = true;
        topLevelClass.meta     = [
            { name: ':keep', pos : null },
            { name: ':structAccess', pos : null },
            { name: ':include', pos : null, params: [ macro $i{ '"imgui.h"' } ] },
            { name: ':build', pos : null, params: [ macro imgui.linc.Linc.xml('imgui') ] },
            { name: ':build', pos : null, params: [ macro imgui.linc.Linc.touch() ] }
        ];

        return topLevelClass;
    }

    /**
     * Generates a array of field function definitions.
     * Overloads are generated based on actual overloads and arguments with default values.
     * In haxe default values must be constant, so we use overloads for this.
     * @param _overloads Array of all pre-defined overloads for functions.
     * @param _isTopLevel If this function is to be generated as a static function.
     * @return Array field functions in the type definition format.
     */
    function generateFunctionFieldsArray(_overloads : Array<Array<JsonFunction>>, _isTopLevel : Bool) : Array<Field>
    {
        final fields = [];

        for (overloads in _overloads.filter(a -> a.length > 0))
        {
            var baseFn = null;

            for (overloadedFn in overloads)
            {
                if (baseFn == null)
                {
                    baseFn = generateFunction(overloadedFn, _isTopLevel, overloadedFn.constructor);
                }
                else
                {
                    baseFn.meta.push({
                        name   : ':overload',
                        pos    : null,
                        params : [ { pos: null, expr: EFunction(FAnonymous, generateFunctionAst(
                            overloadedFn.constructor ? overloadedFn.stname : overloadedFn.retorig.or(overloadedFn.ret),
                            overloadedFn.retref == '&',
                            overloadedFn.argsT.copy(),
                            true)) } ]
                    });
                }

                // For each overloaded function also look at the default values.
                // Generate additional overloads by filtering the aguments based on a growing list of arguments to remove.
                // We pop from the list as default arguments 
                final defaults = [ for (k in overloadedFn.defaults.keys()) k ];
                final filtered = [];

                while (defaults.length > 0)
                {
                    filtered.push(defaults.pop());

                    baseFn.meta.push({
                        name   : ':overload',
                        pos    : null,
                        params : [ { pos: null, expr: EFunction(FAnonymous, generateFunctionAst(
                            overloadedFn.constructor ? overloadedFn.stname : overloadedFn.retorig.or(overloadedFn.ret),
                            overloadedFn.retref == '&',
                            overloadedFn.argsT.filter(i -> !filtered.has(i.name)),
                            true)) } ]
                    });
                }
            }

            fields.push(baseFn);
        }

        return fields;
    }

    /**
     * Generates a field function type definiton from a json definition.
     * @param _function Json definition to generate a function from.
     * @param _isTopLevel If the function doesn't belong to a struct.
     * If true the function is generated as static and the native type is prefixed with the `ImGui::` namespace.
     * @param _isConstructor if this function is a constructor.
     * @return Field
     */
    function generateFunction(_function : JsonFunction, _isTopLevel : Bool, _isConstructor : Bool) : Field
    {
        final nativeType = _isTopLevel ? 'ImGui::${_function.funcname}' : _function.funcname;
        final funcName   = _isConstructor ? 'create' : getHaxefriendlyName(_function.funcname);
        final returnType = _isConstructor ? _function.stname : _function.retorig.or(_function.ret);

        return {
            name   : funcName,
            pos    : null,
            access : _isTopLevel || _isConstructor ? [ AStatic ] : [],
            kind   : FFun(generateFunctionAst(returnType, _function.retref == '&', _function.argsT.copy(), false)),
            meta   : [
                { name: ':native', pos : null, params: [ macro $i{ '"$nativeType"' } ] }
            ]
        }
    }

    /**
     * Generates an AST representation of a function.
     * AST representations do not contain a function name, this type is then wrapped in an anonymous and function expr or type definition.
     * @param _return String of the native return type.
     * @param _reference If the return type is a reference.
     * @param _args Array of arguments for this function.
     * @param _block If this function should be generated with an EBlock expr (needed for correct overload syntax).
     * @return Function
     */
    function generateFunctionAst(_return : String, _reference : Bool, _args : Array<JsonFunctionArg>, _block : Bool) : Function
    {
        // If the first argument is called 'self' then thats part of cimgui
        // we can safely remove it as we aren't using the c bindings code.
        if (_args.length > 0)
        {
            if (_args[0].name == 'self')
            {
                _args.shift();
            }
        }

        return {
            expr : _block ? { expr: EBlock([]), pos : null } : null,
            ret  : buildReturnType(parseNativeString(_return), _reference),
            args : [ for (arg in _args) generateFunctionArg(arg.name, arg.type) ]
        }
    }

    /**
     * Generate a function argument AST representation.
     * @param _name name of the argument.
     * Will prefix this with and _ to avoid collisions with haxe preserved keyworks and will force the first character to a lower case.
     * @param _type Native type of this argument.
     * @return FunctionArg
     */
    function generateFunctionArg(_name : String, _type : String) : FunctionArg
    {
        return {
            name : '_${ getHaxefriendlyName(_name) }',
            type : parseNativeString(_type)
        }
    }

    /**
     * Parse the provided string containing a native c type into the equivilent haxe type.
     * Currently parses pointer types and functions.
     * @param _in Native c type.
     * @return ComplexType
     */
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

    function parseType(_in : String, _nativeVoid = true) : ComplexType
    {
        // count how many pointer levels then strip any of that away
        final const   = _in.contains('const');
        final pointer = occurance(_in, '*');
        final refType = occurance(_in, '&');
        final cleaned = cleanNativeType(_in);
        var ct;

        if (cleaned.startsWith('ImVector_'))
        {
            var hxType = cleaned.replace('ImVector_', '');
            for (_ in 0...pointer)
            {
                hxType += 'Pointer';
            }

            return TPath({ pack: [ ], name: 'ImVector$hxType' });
        }

        if (cleaned.contains('['))
        {
            // Array types use cpp.RawPointer instead of cpp.Star to allow array access
            // Also allows us to pattern match against it and generate abstracts to easy array <-> pointer interop.

            final arrayType = _in.split('[')[0];
            final hxType    = parseType(arrayType);

            ct = macro : cpp.RawPointer<$hxType>;
        }
        else
        {
            ct = getHaxeType(cleaned, _nativeVoid);

            // Get the base complex type, then wrap it in as many pointer as is required.
            for (_ in 0...pointer)
            {
                if (const)
                {
                    ct = macro : cpp.RawConstPointer<$ct>;
                }
                else
                {
                    ct = macro : cpp.Star<$ct>;
                }
            }
            for (_ in 0...refType)
            {
                ct = macro : cpp.Reference<$ct>;
            }

            ct = simplifyComplexType(ct);
        }

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

            abstractPtrs = false;

            ctArgs.push(parseNativeString(type));

            abstractPtrs = true;
        }

        final ctParams = TFunction(ctArgs, parseType(returnType, false));

        return macro : cpp.Callable<$ctParams>;
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

    function getHaxeType(_in : String, _nativeVoid = true) : ComplexType
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
            case 'void'                        : _nativeVoid ? macro : cpp.Void : macro : Void;
            case 'T'                           : macro : T;
            case 'ImVector'                    : macro : ImVector<T>;
            case _other: TPath({ pack: [ ], name : _other });
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

                // Attempt to simplify some base type pointers to a custom abstracts.
                // Makes common pointer types easier to deal with.
                if (p.name == 'Star' || p.name == 'RawPointer')
                {
                    final inner = getInnerParameter(p.params);

                    switch inner.name
                    {
                        case 'UInt8' if (abstractPtrs): return macro : imgui.CharPointer;
                        case 'Void' if (abstractPtrs): return macro : imgui.VoidPointer;
                        case 'Int' if (abstractPtrs): return macro : imgui.IntPointer;
                        case 'Float32' if (abstractPtrs): return macro : imgui.FloatPointer;
                        case 'Bool' if (abstractPtrs): return macro : imgui.BoolPointer;
                        case 'Star':
                            final inner = getInnerParameter(inner.params);
                            
                            if (inner.name == 'ImDrawList')
                            {
                                return macro : cpp.RawPointer<cpp.Star<ImDrawList>>;
                            }
                        case _: // Not other pointer simplifications at this point
                    }
                }

                // If we have a RawConstPointer<Int8> the re-type it as a ConstCharStar
                // else, re-type it in a cpp.Star for easier use
                if (p.name == 'RawConstPointer')
                {
                    final inner = getInnerParameter(p.params);

                    switch inner.name
                    {
                        case 'Int8': return macro : cpp.ConstCharStar;
                        case _:
                            final ct = TPath(inner);

                            return macro : cpp.Star<$ct>;
                    }
                }
            case _:
        }

        return _ct;
    }

    function getInnerParameter(_params : Array<TypeParam>) : TypePath
    {
        for (param in _params)
        {
            switch param
            {
                case TPType(t):
                    switch t
                    {
                        case TPath(p): return p;
                        case _:
                    }
                case _:
            }
        }

        return null;
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
            return '${ _in.charAt(0).toLowerCase() }${ _in.substr(1) }';
        }
    }

    static function cleanNativeType(_in : String) : String
    {
        return _in.replace('*', '').replace('const', '').replace('&', '').trim();
    }
}
