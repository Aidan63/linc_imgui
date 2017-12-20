package imgui;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.ConstCharStar;
import cpp.CastCharStar;
import cpp.Char;
import cpp.SizeT;
import cpp.Callable;
import cpp.Reference;
import imgui.ImGui;
import imgui.util.ImVec2;

@:include('linc_imgui.h')
extern class ImInput
{
    @:overload(function(_label : String, _buffer : Array<Char>) : Bool {})
    @:native('ImGui::linc::InputText') static function inputText(_label : String, _buffer : Array<Char>, _flags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _buffer : Array<Char>) : Bool {})
    @:overload(function(_label : String, _buffer : Array<Char>, _size : ImVec2) : Bool {})
    @:native('ImGui::linc::InputTextMultiline') static function inputTextMultiline(_label : String, _buffer : Array<Char>, _size : ImVec2, _flags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Float) : Bool {})
    @:overload(function(_label : String, _v : Float, _step : Float) : Bool {})
    @:overload(function(_label : String, _v : Float, _step : Float, _stepFast : Float) : Bool {})
    @:overload(function(_label : String, _v : Float, _step : Float, _stepFast : Float, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::linc::InputFloat') static function inputFloat(_label : String, _v : Float, _step : Float, _stepFast : Float, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Float>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::linc::InputFloat2') static function inputFloat2(_label : String, _v : Array<Float>, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Float>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::linc::InputFloat3') static function inputFloat3(_label : String, _v : Array<Float>, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Float>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::linc::InputFloat4') static function inputFloat4(_label : String, _v : Array<Float>, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Int) : Bool {})
    @:overload(function(_label : String, _v : Int, _step : Int) : Bool {})
    @:overload(function(_label : String, _v : Int, _step : Int, _stepFast : Int) : Bool {})
    @:native('ImGui::linc::InputInt') static function inputInt(_label : String, _v : Int, _step : Int, _stepFast : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:native('ImGui::linc::InputInt2') static function inputInt2(_label : String, _v : Array<Int>, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:native('ImGui::linc::InputInt3') static function inputInt3(_label : String, _v : Array<Int>, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:native('ImGui::linc::InputInt4') static function inputInt4(_label : String, _v : Array<Int>, _extraFlags : ImGuiInputTextFlags) : Bool;

    // Imput utils

    /**
      map ImGuiKey_* values into user's key index. == io.KeyMap[key]
     */
    @:native('ImGui::GetKeyIndex') static function getKeyIndex(_imgui_key : ImGuiKey) : Int;

    /**
      is key being held. == io.KeysDown[user_key_index]. note that imgui doesn't know the semantic of each entry of io.KeyDown[].
      Use your own indices/enums according to how your backend/engine stored them into KeyDown[]!
     */
    @:native('ImGui::IsKeyDown') static function isKeyDown(_userKeyIndex : Int) : Bool;

    /**
      was key pressed (went from !Down to Down). if repeat=true, uses io.KeyRepeatDelay / KeyRepeatRate
     */
    @:native('ImGui::IsKeyPressed') static function isKeyPressed(_userKeyIndex : Int, _repeat : Bool = true) : Bool;

    /**
      was key released (went from Down to !Down)..
     */
    @:native('ImGui::IsKeyReleased') static function isKeyReleased(_userKeyIndex : Int) : Bool;

    /**
      uses provided repeat rate/delay. return a count, most often 0 or 1 but might be >1 if RepeatRate is small enough that DeltaTime > RepeatRate
     */
    @:native('ImGui::GetKeyPressedAmount') static function getKeyPressedAmount(_keyIndex : Int, _repeatDelay : Float, _rate : Float) : Int;

    /**
      is mouse button held
     */
    @:native('ImGui::IsMouseDown') static function isMouseDown(_button : Int) : Bool;

    /**
      did mouse button clicked (went from !Down to Down)
     */
    @:native('ImGui::IsMouseClicked') static function isMouseClicked(_button : Int, _repeat : Bool = false) : Bool;

    /**
      did mouse button double-clicked. a double-click returns false in IsMouseClicked(). uses io.MouseDoubleClickTime.
     */
    @:native('ImGui::IsMouseDoubleClicked') static function isMouseDoubleClicked(_button : Int) : Bool;

    /**
      did mouse button released (went from Down to !Down)
     */
    @:native('ImGui::IsMouseReleased') static function isMouseReleased(_button : Int) : Bool;

    /**
      is mouse dragging. if lock_threshold < -1.0f uses io.MouseDraggingThreshold
     */
    @:native('ImGui::IsMouseDragging') static function isMouseDragging(_button : Int = 0, _lockThreshold : Float = -1.0) : Bool;

    /**
      is mouse hovering given bounding rect (in screen space). clipped by current clipping settings.
      disregarding of consideration of focus/window ordering/blocked by a popup.
     */
    @:native('ImGui::IsMouseHoveringRect') static function isMouseHoveringRect(_rMin : ImVec2, _rMax : ImVec2, _clip : Bool = true) : Bool;
    @:native('ImGui::IsMousePosValid') static function isMousePosValid(_mousePos : ImVec2 = null) : Bool;

    /**
      shortcut to ImGui::GetIO().MousePos provided by user, to be consistent with other calls
     */
    @:native('ImGui::GetMousePos') static function getMousePos() : ImVec2;

    /**
      retrieve backup of mouse positioning at the time of opening popup we have BeginPopup() into
     */
    @:native('ImGui::GetMousePosOnOpeningCurrentPopup') static function getMousePosOnOpeningCurrentPopup() : ImVec2;

    /**
      dragging amount since clicking. if lock_threshold < -1.0f uses io.MouseDraggingThreshold
     */
    @:native('ImGui::GetMouseDragDelta') static function getMouseDragDelta(_button : Int = 0, _lockThreshold : Float = -1.0) : ImVec2;
    @:native('ImGui::ResetMouseDragDelta') static function resetMouseDragDelta(_button : Int = 0) : Void;

    /**
      get desired cursor type, reset in ImGui::NewFrame(), this is updated during the frame. valid before Render().
      If you use software rendering by setting io.MouseDrawCursor ImGui will render those for you
     */
    @:native('ImGui::GetMouseCursor') static function getMouseCursor() : ImGuiMouseCursor;

    /**
      set desired cursor type
     */
    @:native('ImGui::SetMouseCursor') static function setMouseCursor(_type : ImGuiMouseCursor) : Void;

    /**
      manually override io.WantCaptureKeyboard flag next frame (said flag is entirely left for your application handle).
      
      e.g. force capture keyboard when your widget is being hovered.
     */
    @:native('ImGui::CaptureKeyboardFromApp') static function captureKeyboardFromApp(_capture : Bool = true) : Void;

    /**
      manually override io.WantCaptureMouse flag next frame (said flag is entirely left for your application handle).
     */
    @:native('ImGui::CaptureMouseFromApp') static function captureMouseFromApp(_capture : Bool = true) : Void;
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
