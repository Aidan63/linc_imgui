
import haxe.macro.Printer;
import sys.io.File;
import ImGuiJsonReader;

using StringTools;
using Generator.StringBufChainer;

class Generator
{
    final printer : Printer;
    final buffer : StringBuf;
    final reader : ImGuiJsonReader;

    public function new()
    {
        printer   = new Printer();
        buffer    = new StringBuf();
        reader    = new ImGuiJsonReader(
            File.getContent('gen/typedefs_dict.json'),
            File.getContent('gen/structs_and_enums.json'),
            File.getContent('gen/definitions.json')
        );
        // structs   = reader.generateStructs();
        // namespace = reader.generateNamespace();

        for (type in reader.generateTypedefs())
        {
            buffer.append(printer.printTypeDefinition(type, false));
            buffer.newline();
            buffer.newline();
        }

        for (type in reader.generateEnums())
        {
            buffer.append(printer.printTypeDefinition(type, false));
            buffer.newline();
            buffer.newline();
        }

        for (type in reader.generateStructs())
        {
            buffer.append(printer.printTypeDefinition(type, false));
            buffer.newline();
            buffer.newline();
        }

        buffer.append(printer.printTypeDefinition(reader.generateTopLevelFunctions(), false));
        buffer.newline();
        buffer.newline();

        write();
    }

    function write()
    {
        // writeHeader();

        // for (name => value in typedefs)
        // {
        //     writeTypedef(name, value);
        // }

        // for (name => values in structs)
        // {
        //     writeStruct(name, values);
        // }

        // writeNamespace();

        File.saveContent('imgui/ImGui.hx', buffer.toString());
    }

    function writeHeader()
    {
        buffer.append('package imgui;').newline();
        buffer.newline();
        buffer.append('import cpp.Star;').newline();
        buffer.append('import cpp.RawPointer;').newline();
        buffer.append('import cpp.Reference;').newline();
        buffer.append('import cpp.Char;').newline();
        buffer.append('import cpp.UInt8;').newline();
        buffer.append('import cpp.Int8;').newline();
        buffer.append('import cpp.UInt16;').newline();
        buffer.append('import cpp.Int16;').newline();
        buffer.append('import cpp.UInt64;').newline();
        buffer.append('import cpp.Int64;').newline();
        buffer.append('import cpp.Float32;').newline();
        buffer.append('import cpp.ConstCharStar;').newline();
        buffer.append('import cpp.VarArg;').newline();
        buffer.append('import cpp.SizeT;').newline();
        buffer.append('import cpp.Callable;').newline();
        buffer.newline();
        buffer.append('typedef ImDrawCallback = Callable<Star<ImDrawList>->Star<ImDrawCmd>->cpp.Void>;').newline();
        buffer.newline();
        buffer.append('typedef ImGuiInputTextCallback = Callable<Star<ImGuiInputTextCallbackData>->Int>;').newline();
        buffer.newline();
        buffer.append('typedef ImGuiSizeCallback = Callable<Star<ImGuiSizeCallbackData>->cpp.Void>;').newline();
        buffer.newline();
    }

    function writeTypedef(_name : String, _typedef : TypedefDefinition)
    {
        buffer.append('typedef $_name = ');
        _typedef.star > 0 ? writePointerType(getHaxeType(_typedef.type), _typedef.star) : buffer.add(getHaxeType(_typedef.type));
        buffer.append(';').newline();
        buffer.newline();
    }

    function writeStruct(_name : String, _values : StructDefinition)
    {
        buffer.append('@:keep').newline();
        buffer.append('@:unreflective').newline();
        buffer.append('@:structAccess').newline();
        buffer.append('@:include("imgui.h")').newline();
        buffer.append('@:native("${getNativeStructName(_name)}")').newline();
        buffer.append('extern class $_name').newline();
        buffer.append('{').newline();

        writeStructFields(_values.fields);
        writeStructFunctions(_values.functions, _name);

        buffer.append('}').newline();
        buffer.newline();
    }

    function writeStructFields(_fields : Array<FieldDefinition>)
    {
        for (field in _fields)
        {
            if (field.name == '' || field.name.endsWith('Fn'))
            {
                continue;
            }

            buffer.tab().append('@:native("${field.name}")').newline();
            buffer.tab().append('var ${getHaxefriendlyName(field.name)} : ');

            if (field.size > 0)
            {
                writeNativeArrayType(field.type, field.pointer);
            }
            else if (field.pointer > 0)
            {
                writePointerType(field.type, field.pointer);
            }
            else
            {
                buffer.append(getHaxeType(field.type));
            }

            buffer.append(';').newline();
            buffer.newline();
        }
    }

    function writeStructFunctions(_functions : Array<FunctionDefinition>, _struct : String)
    {
        for (fun in _functions)
        {
            if (fun.name == 'SetAllocatorFunctions')
            {
                continue;
            }

            buffer.tab().append('@:native("${fun.constructor ? _struct : fun.name}")').newline();
            writeFunction(fun, fun.constructor);
        }
    }

    function writeNamespace()
    {
        buffer.append('@:keep').newline();
        buffer.append('@:unreflective').newline();
        buffer.append('@:structAccess').newline();
        buffer.append('@:include("imgui.h")').newline();
        buffer.append('#if !display').newline();
        buffer.append('@:build(linc.Linc.touch())').newline();
        buffer.append('@:build(linc.Linc.xml("imgui"))').newline();
        buffer.append('#end').newline();
        buffer.append('extern class NativeImGui').newline();
        buffer.append('{').newline();

        // for (fun in namespace)
        // {
        //     buffer.tab().append('@:native("ImGui::${fun.name}")').newline();
        //     writeFunction(fun, true);
        // }

        buffer.append('}').newline();
    }

    function writeFunction(_function : FunctionDefinition, _static : Bool = false)
    {
        if (_function.destructor)
        {
            return;
        }

        for (i in 0..._function.overloads.length)
        {
            if (i < _function.overloads.length - 1)
            {
                writeOverload(_function.overloads[i], _function.constructor);
            }
            else
            {
                writeBaseFunction(_function.overloads[i], _function.constructor, _static);
            }
        }
    }

    function writeOverload(_overload : FunctionOverloadDefinition, _constructor : Bool)
    {
        buffer.tab().append('@:overload(function(');

        for (i in 0..._overload.arguments.length)
        {
            if (_overload.arguments[i].name == 'self' || _overload.arguments[i].name == 'pOut')
            {
                continue;
            }
            
            writeFunctionArgument(
                _overload.arguments[i],
                _overload.arguments.length == 1 ? false : i < _overload.arguments.length - 1
            );
        }

        buffer.append(') : ');
        if (_constructor)
        {
            buffer.append(_overload.name);
        }
        else
        {
            writePointerType(_overload.type, _overload.pointer, _overload.retref, true);
        }
        buffer.append(' {})').newline();
    }

    function writeBaseFunction(_function : FunctionOverloadDefinition, _constructor : Bool, _static : Bool)
    {
        buffer.tab();
        if (_static) buffer.append('static ');
        buffer.append('function ');
        if (_constructor) buffer.append('create') else buffer.append(getHaxefriendlyName(_function.name));
        buffer.append('(');

        for (i in 0..._function.arguments.length)
        {
            if (_function.arguments[i].name == 'self' || _function.arguments[i].name == 'pOut')
            {
                continue;
            }
            
            writeFunctionArgument(
                _function.arguments[i],
                _function.arguments.length == 1 ? false : i < _function.arguments.length - 1
            );
        }

        buffer.append(') : ');
        if (_constructor)
        {
            buffer.append(_function.name);
        }
        else
        {
            writePointerType(_function.type, _function.pointer, _function.retref, true);
        }
        buffer.append(';').newline();
        buffer.newline();
    }

    function writeFunctionArgument(_argument : FieldDefinition, _comma : Bool)
    {
        if (_argument.name == '...')
        {
            buffer.append('_args : VarArg');

            return;
        }
        if (_argument.signature != '')
        {
            buffer.append('_${_argument.name} : Dynamic${_comma ? ', ' : ''}');

            return;
        }

        buffer.append('_${_argument.name} : ');
        writePointerType(_argument.type, _argument.pointer);

        if (_comma)
        {
            buffer.append(', ');
        }
    }

    function writePointerType(_type : String, _pointers : Int, _refref : Bool = false, _return = false)
    {
        if (_refref)
        {
            buffer.append('Reference<${getHaxeType(_type, _return)}>');
        }
        else
        {
            for (i in 0..._pointers) buffer.append('Star<');
            buffer.append(getHaxeType(_type, _return));
            for (i in 0..._pointers) buffer.append('>');
        }
    }

    function writeNativeArrayType(_type : String, _pointers : Int)
    {
        buffer.append('RawPointer<');
        writePointerType(_type, _pointers);
        buffer.append('>');
    }

    function getNativeStructName(_name : String) : String
    {
        final split = _name.split('_');

        return switch split.length
        {
            case 2: '${split[0]}<${split[1]}>';
            case _: _name;
        }
    }

    function getHaxefriendlyName(_in : String) return '${_in.charAt(0).toLowerCase()}${_in.substr(1)}';

    function getHaxeType(_native : String, _return : Bool = false) : String return switch _native.trim() {
        case 'int', 'signed int'                 : 'Int';
        case 'unsigned int'                      : 'Int';
        case 'short', 'signed short'             : 'Int16';
        case 'unsigned short'                    : 'UInt16';
        case 'float'                             : 'Float32';
        case 'double'                            : 'Float';
        case 'bool'                              : 'Bool';
        case 'char', 'const char', 'signed char' : 'Int8';
        case 'const char*'                       : 'ConstCharStar';
        case 'unsigned char'                     : 'UInt8';
        case 'int64_t'                           : 'Int64';
        case 'uint64_t'                          : 'UInt64';
        case 'va_list'                           : 'VarArg';
        case 'size_t'                            : 'SizeT';
        case 'void'                              : _return ? 'Void' : 'cpp.Void';
        default : _native.replace('*', '').replace('const', '').replace('&', '').trim();
    }
}

class StringBufChainer
{
    public static function append(_buffer : StringBuf, _text : String) : StringBuf
    {
        _buffer.add(_text);

        return _buffer;
    }

    public static function newline(_buffer : StringBuf) : StringBuf
    {
        _buffer.add('\r\n');

        return _buffer;
    }

    public static function tab(_buffer : StringBuf) : StringBuf
    {
        _buffer.add('\t');

        return _buffer;
    }
}
