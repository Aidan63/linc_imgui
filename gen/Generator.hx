
import haxe.macro.Printer;
import sys.io.File;
import ImGuiJsonReader;

using Generator.StringBufChainer;

class Generator
{
    final printer : Printer;
    final buffer : StringBuf;
    final reader : ImGuiJsonReader;

    public function new()
    {
        printer = new Printer();
        buffer  = new StringBuf();
        reader  = new ImGuiJsonReader(
            File.getContent('lib/cimgui/generator/output/typedefs_dict.json'),
            File.getContent('lib/cimgui/generator/output/structs_and_enums.json'),
            File.getContent('lib/cimgui/generator/output/definitions.json'));

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

        buffer.append(printer.printTypeDefinition(reader.generateEmptyExtern('ImGuiContext'), false));
        buffer.newline();
        buffer.newline();

        buffer.append(printer.printTypeDefinition(reader.generateEmptyExtern('ImDrawListSharedData'), false));
        buffer.newline();
        buffer.newline();

        for (type in reader.generateImVectors())
        {
            buffer.append(printer.printTypeDefinition(type, false));
            buffer.newline();
            buffer.newline();
        }

        File.saveContent('imgui/ImGui.hx', buffer.toString());
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
