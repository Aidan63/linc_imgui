package imgui.font;

import imgui.ImGui;
import imgui.draw.ImDrawList;
import imgui.util.ImVec2;
import imgui.util.ImVec4;
import cpp.UInt16;
import cpp.ConstPointer;
import cpp.Pointer;
import cpp.ConstCharStar;
import cpp.Int16;
import cpp.Reference;

@:keep
@:include('linc_imgui.h')
@:native('ImFont')
@:structAccess
@:unreflective
extern class ImFont
{
    /**
      Height of characters, set during loading (don't change after loading)
     */
    public var FontSize : Float;

    /**
      Base font scale, multiplied by the per-window font scale which you can adjust with SetFontScale()
     */
    public var Scale : Float;

    /**
      Offset font rendering by xx pixels
     */
    public var DisplayOffset : ImVec2;

    /**
      All glyphs.
     */
    @:native('ImVector<ImFontGlyph>') public var Glyphs : Dynamic;

    /**
      Sparse. Glyphs->AdvanceX in a directly indexable way (more cache-friendly, for CalcTextSize functions which are often bottleneck in large UI).
     */
    @:native('ImVector<float>') public var IndexAdvanceX : Dynamic;

    /**
      Sparse. Index glyphs by Unicode code-point.
     */
    @:native('ImVector<unsigned short>') public var IndexLookup : Dynamic;

    /**
      == FindGlyph(FontFallbackChar)
     */
    public var FallbackGlyph : ConstPointer<ImFontGlyph>;

    /**
      == FallbackGlyph->AdvanceX
     */
    public var FallbackAdvanceX : Float;

    /**
      Replacement glyph if one isn't found. Only set via SetFallbackChar()
     */
    public var FallbackChar : ImWchar;

    /**
      Number of ImFontConfig involved in creating this font. Bigger than 1 when merging multiple font sources into one ImFont.
     */
    public var ConfigDataCount : Int16;

    /**
      Pointer within ContainerAtlas->ConfigData
     */
    public var ConfigData : Pointer<ImFontConfig>;

    /**
      What we has been loaded into
     */
    public var ContainerAtlas : Pointer<ImFontAtlas>;

    /**
      distance from top to bottom of e.g. 'A' [0..FontSize]
     */
    public var Ascent : Float;
    public var Descent : Float;

    /**
      Total surface in pixels to get an idea of the font rasterization/texture cost (not exact, we approximate the cost of padding between glyphs)
     */
    public var MetricsTotalSurface : Int;

    @:native('ClearOutputData')  function clearOutputData() : Void;
    @:native('BuildLookupTable') function buildLookupTable() : Void;
    @:native('FindGlyph')        function findGlyph(_c : ImWchar) : ConstPointer<ImFontGlyph>;
    @:native('SetFallbackChar')  function setFallbackChar(_c : ImWchar) : Void;
    @:native('GetCharAdvance')   function getCharAdvance(_c : ImWchar) : Float;
    @:native('IsLoaded')         function isLoaded(_c : ImWchar) : Bool;

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
    public var Codepoint : ImWchar;

    /**
      Distance to next character (= data from font + ImFontConfig::GlyphExtraSpacing.x baked in)
     */
    public var AdvanceX : Float;

    /**
      Top left x glyph position
     */
    public var X0 : Float;

    /**
      Top left y glyph position
     */
    public var Y0 : Float;

    /**
      Bottom right x glyph position
     */
    public var X1 : Float;

    /**
      Bottom right y glyph position
     */
    public var Y1 : Float;

    /**
      Top left x texture position
     */
    public var U0 : Float;

    /**
      Top left y texture position
     */
    public var V0 : Float;

    /**
      Bottom right x texture position
     */
    public var U1 : Float;

    /**
      Bottom right y texture position
     */
    public var V1 : Float;
}
