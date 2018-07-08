package imgui.font;

import cpp.Float32;
import cpp.Pointer;
import imgui.ImGui;
import imgui.util.ImVec2;

@:keep
@:include('linc_imgui.h')
@:native('ImFontConfig')
@:structAccess
@:unreflective
extern class ImFontConfig
{
    @:native('FontData')            public var fontData : cpp.RawPointer<cpp.Void>;
    @:native('FontDataSize')        public var fontDataSize : Int;
    @:native('FontDataOwnedByAtas') public var fontDataOwnedByAtas : Bool;
    @:native('FontNo')              public var fontNo : Int;
    @:native('SizePixels')          public var sizePixels : Float32;
    @:native('OversampleH')         public var oversampleH : Int;
    @:native('OversampleV')         public var oversampleV : Int;
    @:native('PixelSnapH')          public var pixelSnapH : Bool;
    @:native('GlyphExtraSpacing')   public var glyphExtraSpacing : ImVec2;
    @:native('GlyphOffset')         public var glyphOffset : ImVec2;
    @:native('GlyphRanges')         public var glyphRanges : cpp.RawConstPointer<ImWchar>;
    @:native('GlyphMinAdvanceX')    public var glyphMinAdvanceX : Float32;
    @:native('GlyphMaxAdvanceX')    public var glyphMaxAdvanceX : Float32;
    @:native('MergeMode')           public var mergeMode : Bool;
    @:native('RasterizerFlags')     public var rasterizerFlags : Int;
    @:native('RasterizerMultiply')  public var rasterizerMultiply : Float32;

    @:native('new ImFontConfig') static function create() : Pointer<ImFontConfig>;
}
