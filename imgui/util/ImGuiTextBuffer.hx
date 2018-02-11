package imgui.util;

import imgui.ImGui;

@:include('linc_imgui.h')
@:native('ImGuiTextBuffer')
@:structAccess
@:unreflective
extern class ImGuiTextBuffer
{
    @:native('Buf') public var buf : ImVectorImWchar;

    @:native('ImGuiTextBuffer') public static function create() : ImGuiTextBuffer;

    public inline function begin() : String {
        return cast untyped __cpp__('{0}.begin()', this);
    }
    public inline function end() : String {
        return cast untyped __cpp__('{0}.end()', this);
    }
    @:native('size')    public function size() : Int;
    @:native('empty')   public function empty() : Bool;
    @:native('clear')   public function clear() : Void;
    @:native('reserve') public function reserve(_capacity : Int) : Void;
    @:native('c_str')   public function c_str() : cpp.ConstCharStar;
    public inline function append(_string : String) : Void {
        untyped __cpp__('{0}.appendf("%s", {1}.c_str())', this, _string);
    }
}
