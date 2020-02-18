
import haxe.macro.Printer;
import json2object.JsonParser;
import haxe.macro.Type;
import haxe.macro.Expr;

using StringTools;
using Safety;
using Lambda;

typedef JsonEnumStruct = {
    var enums : Map<String, Array<{
        calc_value : Int,
        name       : String,
        value      : String
    }>>;
    var structs : Map<String, Array<{
        var name : String;
        var type : String;
        var ?size : Int;
        var ?template_type : String;
    }>>;
}
typedef JsonFunctionArg = {
    var name : String;
    var type : String;
    @:default('')
    var signature : String;
}
typedef JsonDefinitions = Map<String, Array<{
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
    var ?isvararg : String;
    var ?retref : String;
    var ?namespace : String;
    var ?ret : String;
    var ?retorig : String;
}>>;

typedef TypedefDefinition = {
    var type : String;
    var star : Int;
};
typedef EnumValueDefinition = {
    var name : String;
    var value : Int;
};
typedef FieldDefinition = {
    var name : String;
    var type : String;
    var generic : String;
    var size : Int;
    var pointer : Int;
    var signature : String;
};
typedef FunctionDefinition = {
    var name : String;
    var constructor : Bool;
    var destructor : Bool;
    var overloads : Array<FunctionOverloadDefinition>;
};
typedef FunctionOverloadDefinition = {
    var name : String;
    var type : String;
    var pointer : Int;
    var retref : Bool;
    var arguments : Array<FieldDefinition>;
};
typedef StructDefinition = {
    var fields : Array<FieldDefinition>;
    var functions : Array<FunctionDefinition>;
};

class ImGuiJsonReader
{
    final typedefs : Map<String, String>;
    final enumStruct : JsonEnumStruct;
    final definitions : JsonDefinitions;

    final templatedGen : Array<String>;

    public function new(_typedefs : String, _enumStruct : String, _definitions : String)
    {
        typedefs     = new JsonParser<Map<String, String>>().fromJson(_typedefs);
        enumStruct   = new JsonParser<JsonEnumStruct>().fromJson(_enumStruct);
        definitions  = new JsonParser<JsonDefinitions>().fromJson(_definitions);
        templatedGen = [];
    }

    /**
     * Read all the typedef values.
     * Filters out iterators, enums, and structs. These types are read from other json structures.
     * @param _json Json object to read.
     * @return Map of typedef names and values.
     */
    public function generateTypedefs() : Map<String, TypedefDefinition>
    {
        return [
            for (name => value in typedefs)
            {
                if (name == 'iterator' ||
                    name == 'const_iterator' ||
                    name == 'value_type' ||
                    name.endsWith('Flags') ||
                    name.endsWith('Callback') ||
                    value.contains('struct '))
                {
                    continue;
                }

                name => { type: cleanNativeType(value), star: getPointerLevel(value) }
            }
        ];
    }

    public function generateEnumExprs() : Array<TypeDefinition>
        return [ for (name => values in enumStruct.enums) {
            pack   : [ 'imgui' ],
            kind   : TDAbstract(macro : Int, [ macro : Int ], [ macro : Int ]),
            name   : name,
            pos    : null,
            fields : [ for (value in values) {
                name : value.name,
                kind : FVar(macro : Int),
                pos  : null
            } ]
        } ];

    public function generateStructExprs()
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

            for (value in values)
            {
                // Ignore function and union types for now
                if (value.type.contains('(*)') || value.type.contains('union {'))
                {
                    continue;
                }

                var finalType;
                var finalName = value.name;

                if (value.template_type != null)
                {
                    if (!templatedGen.has(value.template_type))
                    {
                        templatedGen.push(value.template_type);
                    }

                    // TODO : Very lazy and should be improved.
                    // Exactly one of the templated types is also a pointer, so do a quick check and manually wrap it.
                    if (value.template_type.contains('*'))
                    {
                        finalType = TPath({ pack: [ 'cpp' ], name: 'Star' , params: [
                            TPType(TPath({pack : [ 'imgui' ], name : 'ImVector', sub : 'ImVector${value.template_type.replace('*', '')}'}))
                        ] });
                    }
                    else
                    {
                        finalType = TPath({ pack : [ 'imgui' ], name : 'ImVector', sub : 'ImVector${value.template_type}' });
                    }
                }
                else
                {
                    // Get the corresponding (and potentially simplified) complex type.
                    final type = parseNativeType(value.type);

                    // If its an array type wrap it in a pointer.
                    // cpp.Star doesn't allow array access so we need to use the old cpp.RawPointer.
                    if (value.size != null)
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

            structs.push(struct);
        }

        return structs;
    }

    function parseNativeType(_in : String) : ComplexType
    {
        // strip const-ness
        final cleaned  = _in.replace('const', '').trim();
        final pointer  = occurance(cleaned);

        // Get the base complex type, then wrap it in as many pointer as is required.
        var ct = getHaxeType(cleaned.replace('*', ''));
        for (_ in 0...pointer)
        {
            ct = TPath({ pack: [ 'cpp' ], name: 'Star', params: [ TPType(ct) ] });
        }

        // Attempt to detect pointer patters and map them to custom abstracts for easier end-user usage.
        return simplifyComplexType(ct);
    }

    function getHaxeType(_in : String) : ComplexType
        return switch _in {
            case 'int', 'signed int'                 : macro : Int;
            case 'unsigned int'                      : macro : UInt;
            case 'short', 'signed short'             : macro : cpp.Int16;
            case 'unsigned short'                    : macro : cpp.UInt16;
            case 'float'                             : macro : cpp.Float32;
            case 'double'                            : macro : Float;
            case 'bool'                              : macro : Bool;
            case 'char', 'signed char'               : macro : cpp.Int8;
            case 'unsigned char', 'const char'       : macro : cpp.UInt8;
            case 'int64_t'                           : macro : cpp.Int64;
            case 'uint64_t'                          : macro : cpp.UInt64;
            case 'va_list'                           : macro : cpp.VarArg;
            case 'size_t'                            : macro : cpp.SizeT;
            case 'void'                              : macro : cpp.Void;
            default : TPath({ pack: [ 'imgui' ], name : _in });
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
                                            case 'UInt8' : return TPath({ pack: [ 'imgui' ], name: 'BytesPointer' });
                                            case 'Void'  : return TPath({ pack: [ 'imgui' ], name: 'VoidPointer' });
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

    function occurance(_in : String)
    {
        var pointer = 0;
        for (i in 0..._in.length)
        {
            if (_in.charAt(i) == '*')
            {
                pointer++;
            }
        }

        return pointer;
    }

    /**
     * [Description]
     * @param _typedefs 
     * @param _structs 
     * @param _definitions 
     * @return Map<String, StructDefinition>
     */
    public function generateStructs() : Map<String, StructDefinition>
    {
        final structs = new Map<String, StructDefinition>();

        // First, read any structs from the typedefs.
        for (name => value in typedefs)
        {
            if (value.contains('struct '))
            {
                structs.set(name, { fields : [], functions : [] });
            }
        }

        // Pass over all definitions looking for any structure names which are not yet known.
        for (_ => functions in definitions)
        {
            for (fun in functions)
            {
                if (fun.stname == '')
                {
                    continue;
                }

                if (!structs.exists(fun.stname))
                {
                    structs.set(fun.stname, { fields : [], functions : [] });
                }
            }
        }

        // Read all struct fields
        for (struct => fields in enumStruct.structs)
        {
            if (!structs.exists(struct))
            {
                continue;
            }

           for (field in fields)
           {
                structs[struct].fields.push({
                    name      : getSanitisedName(field.name),
                    type      : cleanNativeType(field.type),
                    pointer   : getPointerLevel(field.type),
                    size      : field.type.contains('**') ? 1 : field.size.or(0),
                    generic   : field.template_type.or(''),
                    signature : ''
                });
           }
        }

        // Read all functions which belong to structs
        for (_ => overloads in definitions)
        {
            if (!structs.exists(overloads[0].stname))
            {
                continue;
            }

            final overloadDefinitions = [];
            for (fun in overloads)
            {
                // Create overloads for functions which have default values
                var i = 1;
                for (_ => _ in fun.defaults)
                {
                    overloadDefinitions.push({
                        name        : fun.funcname,
                        type        : cleanNativeType(fun.retorig.or(fun.ret.or(''))),
                        pointer     : getPointerLevel(fun.retorig.or(fun.ret.or(''))),
                        retref      : fun.retref == null ? false : true,
                        arguments   : [
                            for (j in 0...fun.argsT.length - i) {
                                name      : getSanitisedName(fun.argsT[j].name),
                                type      : getSanitisedName(cleanNativeType(fun.argsT[j].type)),
                                size      : 0,
                                pointer   : Std.int(Math.max(getPointerLevel(fun.argsT[j].type), getSizePointerLevel(fun.argsT[j].type))),
                                generic   : '',
                                signature : fun.argsT[j].signature.or(''),
                            }
                        ]
                    });

                    i++;
                }

                // Default overloaded type
                overloadDefinitions.push({
                    name        : fun.funcname,
                    type        : cleanNativeType(fun.retorig.or(fun.ret.or(''))),
                    pointer     : getPointerLevel(fun.retorig.or(fun.ret.or(''))),
                    retref      : fun.retref == null ? false : true,
                    arguments   : [
                        for (arg in fun.argsT) {
                            name      : getSanitisedName(arg.name),
                            type      : getSanitisedName(cleanNativeType(arg.type)),
                            size      : 0,
                            pointer   : Std.int(Math.max(getPointerLevel(arg.type), getSizePointerLevel(arg.type))),
                            generic   : '',
                            signature : arg.signature.or(''),
                        }
                    ]
                });
            }
            
            structs[overloads[0].stname].functions.push({
                name        : overloads[0].funcname,
                constructor : overloads[0].constructor.or(false),
                destructor  : overloads[0].destructor.or(false),
                overloads   : overloadDefinitions
            });
        }

        return structs;
    }

    function getHaxefriendlyName(_in : String)
        return '${_in.charAt(0).toLowerCase()}${_in.substr(1)}';

    public function generateNamespace() : Array<FunctionDefinition>
    {
        final functions = [];

        for (_ => overloads in definitions)
        {
            final overloadDefinitions = [];
            for (fun in overloads)
            {
                if (fun.namespace != 'ImGui' || fun.stname != '')
                {
                    continue;
                }

                // Create overloads for functions which have default values
                var i = 1;
                for (_ => _ in fun.defaults)
                {
                    overloadDefinitions.push({
                        name        : fun.funcname,
                        type        : cleanNativeType(fun.retorig.or(fun.ret.or(''))),
                        pointer     : getPointerLevel(fun.retorig.or(fun.ret.or(''))),
                        retref      : fun.retref == null ? false : true,
                        arguments   : [
                            for (j in 0...fun.argsT.length - i) {
                                name      : getSanitisedName(fun.argsT[j].name),
                                type      : getSanitisedName(cleanNativeType(fun.argsT[j].type)),
                                size      : 0,
                                pointer   : Std.int(Math.max(getPointerLevel(fun.argsT[j].type), getSizePointerLevel(fun.argsT[j].type))),
                                generic   : '',
                                signature : fun.argsT[j].signature.or(''),
                            }
                        ]
                    });

                    i++;
                }

                // Default overloaded type
                overloadDefinitions.push({
                    name        : fun.funcname,
                    type        : cleanNativeType(fun.retorig.or(fun.ret.or(''))),
                    pointer     : getPointerLevel(fun.retorig.or(fun.ret.or(''))),
                    retref      : fun.retref == null ? false : true,
                    arguments   : [
                        for (arg in fun.argsT) {
                            name      : getSanitisedName(arg.name),
                            type      : getSanitisedName(cleanNativeType(arg.type)),
                            size      : 0,
                            pointer   : Std.int(Math.max(getPointerLevel(arg.type), getSizePointerLevel(arg.type))),
                            generic   : '',
                            signature : arg.signature.or(''),
                        }
                    ]
                });
            }
            
            functions.push({
                name        : overloads[0].funcname,
                constructor : overloads[0].constructor.or(false),
                destructor  : overloads[0].destructor.or(false),
                overloads   : overloadDefinitions
            });
        }

        return functions;
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

    static function getSanitisedName(_in : String) : String return _in.split('[')[0];

    static function getSizePointerLevel(_in : String) : Int return _in.contains('[') ? 1 : 0;
}
