
import json2object.JsonParser;

using StringTools;
using Safety;

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

    public function new(_typedefs : String, _enumStruct : String, _definitions : String)
    {
        typedefs    = new JsonParser<Map<String, String>>().fromJson(_typedefs);
        enumStruct  = new JsonParser<JsonEnumStruct>().fromJson(_enumStruct);
        definitions = new JsonParser<JsonDefinitions>().fromJson(_definitions);
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

    /**
     * Read all enum values pre-calculated values.
     * @param _json Json object to read.
     * @return Map off enum names and array of their members.
     */
    public function generateEnums() return [
        for (name => values in enumStruct.enums)
        {
            name => [ for (val in values) { name : val.name, value : val.calc_value } ];
        }
    ];

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
