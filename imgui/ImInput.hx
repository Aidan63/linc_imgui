package imgui;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.ConstCharStar;
import cpp.CastCharStar;
import cpp.Char;
import cpp.SizeT;
import cpp.Callable;
import cpp.Reference;
import imgui.util.ImVec2;

@:include('linc_imgui.h')
extern class ImInput
{
    @:overload(function(_label : String, _buffer : Array<Int>) : Bool {})
    @:native('ImGui::linc::InputText') static function inputText(_label : String, _buffer : Array<Int>, _flags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _buffer : Array<Int>) : Bool {})
    @:overload(function(_label : String, _buffer : Array<Int>, _size : ImVec2) : Bool {})
    @:native('ImGui::linc::InputTextMultiline') static function inputTextMultiline(_label : String, _buffer : Array<Int>, _size : ImVec2, _flags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _step : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _step : Float, _stepFast : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _step : Float, _stepFast : Float, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::InputFloat') static function inputFloat(_label : ConstCharStar, _v : Pointer<Float>, _step : Float, _stepFast : Float, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::InputFloat2') static function inputFloat2(_label : ConstCharStar, _v : Pointer<Float>, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::InputFloat3') static function inputFloat3(_label : ConstCharStar, _v : Pointer<Float>, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::InputFloat4') static function inputFloat4(_label : ConstCharStar, _v : Pointer<Float>, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _step : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _step : Int, _stepFast : Int) : Bool {})
    @:native('ImGui::InputInt') static function inputInt(_label : ConstCharStar, _v : Pointer<Int>, _step : Int, _stepFast : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>) : Bool {})
    @:native('ImGui::InputInt2') static function inputInt2(_label : ConstCharStar, _v : Pointer<Int>, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>) : Bool {})
    @:native('ImGui::InputInt3') static function inputInt3(_label : ConstCharStar, _v : Pointer<Int>, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>) : Bool {})
    @:native('ImGui::InputInt4') static function inputInt4(_label : ConstCharStar, _v : Pointer<Int>, _extraFlags : ImGuiInputTextFlags) : Bool;
}

@:keep
@:native('ImGuiTextEditCallbackData')
@:structAccess
@:unreflective
extern class ImGuiTextEditCallbackData
{
    //
}

/**
  Flags for ImGui::InputText()
 */
@:enum abstract ImGuiInputTextFlags(Int) from Int to Int
{
    /**
      Allow 0123456789.+-*\/
     */
    var CharsDecimal = 1 << 0;

    /**
      Allow 0123456789ABCDEFabcdef
     */
    var CharsHexadecimal = 1 << 1;

    /**
      Turn a..z into A..Z
     */
    var CharsUppercase = 1 << 2;

    /**
      Filter out spaces, tabs
     */
    var CharsNoBlank = 1 << 3;

    /**
      Select entire text when first taking mouse focus
     */
    var AutoSelectAll = 1 << 4;

    /**
      Return 'true' when Enter is pressed (as opposed to when the value was modified)
     */
    var EnterReturnsTrue = 1 << 5;

    /**
      Call user function on pressing TAB (for completion handling)
     */
    var CallbackCompletion = 1 << 6;

    /**
      Call user function on pressing Up/Down arrows (for history handling)
     */
    var CallbackHistory = 1 << 7;

    /**
      Call user function every time. User code may query cursor position, modify text buffer.
     */
    var CallbackAlways = 1 << 8;

    /**
      Call user function to filter character. Modify data->EventChar to replace/filter input, or return 1 to discard character.
     */
    var CallbackCharFilter = 1 << 9;

    /**
      Pressing TAB input a '\t' character into the text field
     */
    var AllowTabInput = 1 << 10;

    /**
      In multi-line mode, unfocus with Enter, add new line with Ctrl+Enter (default is opposite: unfocus with Ctrl+Enter, add line with Enter).
     */
    var CtrlEnterForNewLine = 1 << 11;

    /**
      Disable following the cursor horizontally
     */
    var NoHorizontalScroll = 1 << 12;

    /**
      Insert mode
     */
    var AlwaysInsertMode = 1 << 13;

    /**
      Read-only mode
     */
    var ReadOnly = 1 << 14;

    /**
      Password mode, display all characters as '*'
     */
    var Password = 1 << 15;
}
