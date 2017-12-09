package imgui.font;

import cpp.Pointer;
import cpp.ConstPointer;
import imgui.ImGui;
import imgui.util.ImVec2;

@:keep
@:include('linc_imgui.h')
@:native('ImFontConfig')
@:structAccess
@:unreflective
extern class ImFontConfig
{
    public var FontData : Pointer<Void>;
    public var FontDataSize : Int;
    public var FontDataOwnedByAtas : Bool;
    public var FontNo : Int;
    public var SizePixels : Float;
    public var OversampleH : Int;
    public var OversampleV : Int;
    public var GlyphExtraSpacing : ImVec2;
    public var GlyphOffset : ImVec2;
    public var GlyphRanges : ConstPointer<ImWchar>;
    public var MergeMode : Bool;
    public var RasterizerFlags : UInt;
    public var RasterizerMultiply : Float;

    @:native('new ImFontConfig') static function create() : Pointer<ImFontConfig>;
}
