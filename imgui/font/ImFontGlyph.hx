package imgui.font;

import cpp.Float32;
import imgui.ImGui;
import imgui.util.ImVector;

@:native('ImFontGlyph')
@:include('linc_imgui.h')
@:structAccess
@:unreflective
extern class ImFontGlyph
{
    /**
      0x0000..0xFFFF
     */
    @:native('Codepoint') public var codepoint : ImWchar;

    /**
      Distance to next character (= data from font + ImFontConfig::GlyphExtraSpacing.x baked in)
     */
    @:native('AdvanceX') public var advanceX : Float32;

    /**
      Top left x glyph position
     */
    @:native('X0') public var x0 : Float32;

    /**
      Top left y glyph position
     */
    @:native('Y0') public var y0 : Float32;

    /**
      Bottom right x glyph position
     */
    @:native('X1') public var x1 : Float32;

    /**
      Bottom right y glyph position
     */
    @:native('Y1') public var y1 : Float32;

    /**
      Top left x texture position
     */
    @:native('U0') public var u0 : Float32;

    /**
      Top left y texture position
     */
    @:native('V0') public var v0 : Float32;

    /**
      Bottom right x texture position
     */
    @:native('U1') public var u1 : Float32;

    /**
      Bottom right y texture position
     */
    @:native('V1') public var v1 : Float32;
}

@:native('ImVector<ImFontGlyph>')
@:structAccess
@:unreflective
extern class ImVectorImFontGlyph extends ImVector<ImFontGlyph>
{
  @:native('ImVector<ImFontGlyph>') public static function create() : ImVectorImFontGlyph;
}
