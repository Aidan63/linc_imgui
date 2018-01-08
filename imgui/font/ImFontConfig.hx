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
    @:native('FontData')            public var fontData : Pointer<Void>;
    @:native('FontDataSize')        public var fontDataSize : Int;
    @:native('FontDataOwnedByAtas') public var fontDataOwnedByAtas : Bool;
    @:native('FontNo')              public var fontNo : Int;
    @:native('SizePixels')          public var sizePixels : Float;
    @:native('OversampleH')         public var oversampleH : Int;
    @:native('OversampleV')         public var oversampleV : Int;
    @:native('GlyphExtraSpacing')   public var glyphExtraSpacing : ImVec2;
    @:native('GlyphOffset')         public var glyphOffset : ImVec2;
    @:native('GlyphRanges')         public var glyphRanges : ConstPointer<ImWchar>;
    @:native('MergeMode')           public var mergeMode : Bool;
    @:native('RasterizerFlags')     public var rasterizerFlags : UInt;
    @:native('RasterizerMultiply')  public var rasterizerMultiply : Float;

    @:native('new ImFontConfig') static function create() : Pointer<ImFontConfig>;
}
