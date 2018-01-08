package imgui.font;

import imgui.ImGui;
import imgui.draw.ImDrawList;
import imgui.util.ImVec2;
import imgui.util.ImVec4;
import cpp.UInt16;
import cpp.ConstPointer;
import cpp.Pointer;
import cpp.RawPointer;
import cpp.ConstCharStar;
import cpp.Int16;
import cpp.Reference;

@:include('linc_imgui.h')
@:native('ImFont')
@:structAccess
@:unreflective
extern class ImFont
{
    /**
      Height of characters, set during loading (don't change after loading)
     */
    @:native('FontSize') public var fontSize : Float;

    /**
      Base font scale, multiplied by the per-window font scale which you can adjust with SetFontScale()
     */
    @:native('Scale') public var scale : Float;

    /**
      Offset font rendering by xx pixels
     */
    @:native('DisplayOffset') public var displayOffset : ImVec2;

    /**
      All glyphs.
     */
    @:native('Glyphs') public var glyphs : Dynamic;

    /**
      Sparse. Glyphs->AdvanceX in a directly indexable way (more cache-friendly, for CalcTextSize functions which are often bottleneck in large UI).
     */
    @:native('IndexAdvanceX') public var indexAdvanceX : Dynamic;

    /**
      Sparse. Index glyphs by Unicode code-point.
     */
    @:native('IndexLookup') public var indexLookup : Dynamic;

    /**
      == FindGlyph(FontFallbackChar)
     */
    @:native('FallbackGlyph') public var fallbackGlyph : ConstPointer<ImFontGlyph>;

    /**
      == FallbackGlyph->AdvanceX
     */
    @:native('FallbackAdvanceX') public var fallbackAdvanceX : Float;

    /**
      Replacement glyph if one isn't found. Only set via SetFallbackChar()
     */
    @:native('FallbackChar') public var fallbackChar : ImWchar;

    /**
      Number of ImFontConfig involved in creating this font. Bigger than 1 when merging multiple font sources into one ImFont.
     */
    @:native('ConfigDataCount') public var configDataCount : Int16;

    /**
      Pointer within ContainerAtlas->ConfigData
     */
    @:native('ConfigData') public var configData : RawPointer<ImFontConfig>;

    /**
      What we has been loaded into
     */
    @:native('ContainerAtlas') public var containerAtlas : RawPointer<ImFontAtlas>;

    /**
      distance from top to bottom of e.g. 'A' [0..FontSize]
     */
    @:native('Ascent') public var ascent : Float;
    @:native('Descent') public var descent : Float;

    /**
      Total surface in pixels to get an idea of the font rasterization/texture cost (not exact, we approximate the cost of padding between glyphs)
     */
    @:native('MetricsTotalSurface') public var metricsTotalSurface : Int;

    @:native('ClearOutputData')  function clearOutputData() : Void;
    @:native('BuildLookupTable') function buildLookupTable() : Void;
    @:native('FindGlyph')        function findGlyph(_c : ImWchar) : ConstPointer<ImFontGlyph>;
    @:native('SetFallbackChar')  function setFallbackChar(_c : ImWchar) : Void;
    @:native('GetCharAdvance')   function getCharAdvance(_c : ImWchar) : Float;
    @:native('IsLoaded')         function isLoaded(_c : ImWchar) : Bool;
    @:native('GetDebugName')     function getDebugName() : String;

    @:native('CalcTextSizeA') function calcTextSizeA(_size : Float, _maxWidth : Float, _wrapWidth : Float, _textBegin : ConstCharStar, _textEnd : ConstCharStar = null, _remaining : Pointer<ConstCharStar> = null) : ImVec2;
    @:native('CalcWordWrapPositionA') function calcWordWrapPositionA(_scale : Float, _text : ConstCharStar, _textEnd : ConstCharStar, _wrapWidth : Float) : ConstCharStar;
    @:native('RenderChar') function renderChar(_drawList : Pointer<ImDrawList>, _size : Float, _pos : ImVec2, _col : ImU32, _c : UInt16) : Void;
    @:native('RenderText') function renderText(_drawList : Pointer<ImDrawList>, _size : Float, _pos : ImVec2, _col : ImU32, _clipRect : Reference<ImVec4>, _textBegin : ConstCharStar, _textEnd : ConstCharStar, _wrapWidth : Float = 0.0, _cpuFineClip : Bool = false) : Void;
}

@:native('ImFont')
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
    @:native('AdvanceX') public var advanceX : Float;

    /**
      Top left x glyph position
     */
    @:native('X0') public var x0 : Float;

    /**
      Top left y glyph position
     */
    @:native('Y0') public var y0 : Float;

    /**
      Bottom right x glyph position
     */
    @:native('X1') public var x1 : Float;

    /**
      Bottom right y glyph position
     */
    @:native('Y1') public var y1 : Float;

    /**
      Top left x texture position
     */
    @:native('U0') public var u0 : Float;

    /**
      Top left y texture position
     */
    @:native('V0') public var v0 : Float;

    /**
      Bottom right x texture position
     */
    @:native('U1') public var u1 : Float;

    /**
      Bottom right y texture position
     */
    @:native('V1') public var v1 : Float;
}
