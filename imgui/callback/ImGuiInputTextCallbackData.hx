package imgui.callback;

import imgui.ImGui;

@:include('linc_imgui.h')
@:native('ImGuiInputTextCallbackData')
@:structAccess
@:unreflective
extern class ImGuiInputTextCallbackData
{
    @:native('EventFlag') var eventFlag : ImGuiInputTextFlags;
    @:native('Flags')     var flags     : ImGuiInputTextFlags;
    @:native('UserData')  var userData  : cpp.RawPointer<cpp.Void>;

    // Char filter event.
    @:native('EventChar')      var eventChar      : ImWchar;


    // Completion,History,Always events:
    // If you modify the buffer contents make sure you update 'BufTextLen' and set 'BufDirty' to true.
    @:native('ImGuiKey')       var eventKey       : ImGuiKey;
    @:native('Buf')            var buf            : cpp.RawPointer<Int>;
    @:native('BufTextLen')     var bufTextLen     : Int;
    @:native('BufDirty')       var bufDirty       : Bool;
    @:native('CursorPos')      var cursorPos      : Int;
    @:native('SelectionStart') var selectionStart : Int;
    @:native('SelectionEnd')   var selectionEnd   : Int;

    // Helper Functions
    @:native('DeleteChars') function deleteChars(_pos : Int, _bytesCount : Int) : Void;

    @:overload(function(_pos : Int, _text : String) : Void {})
    @:native('InsertChars') function insertChars(_pos : Int, _text : String, _textEnd : String) : Void;

    @:native('HasSelection') function hasSelection() : Bool;
}
