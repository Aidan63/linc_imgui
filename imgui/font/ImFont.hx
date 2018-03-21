package imgui.font;

import imgui.ImGui;
import imgui.draw.ImDrawList;
import imgui.font.ImFontGlyph;
import imgui.util.ImVec2;
import imgui.util.ImVec4;
import cpp.Float32;
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
    @:native('FontSize') public var fontSize : Float32;

    /**
      Base font scale, multiplied by the per-window font scale which you can adjust with SetFontScale()
     */
    @:native('Scale') public var scale : Float32;

    /**
      Offset font rendering by xx pixels
     */
    @:native('DisplayOffset') public var displayOffset : ImVec2;

    /**
      All glyphs.
     */
    @:native('Glyphs') public var glyphs : ImVectorImFontGlyph;

    /**
      Sparse. Glyphs->AdvanceX in a directly indexable way (more cache-friendly, for CalcTextSize functions which are often bottleneck in large UI).
     */
    @:native('IndexAdvanceX') public var indexAdvanceX : ImVectorFloat;

    /**
      Sparse. Index glyphs by Unicode code-point.
     */
    @:native('IndexLookup') public var indexLookup : ImVectorInt;

    /**
      == FindGlyph(FontFallbackChar)
     */
    @:native('FallbackGlyph') public var fallbackGlyph : ConstPointer<ImFontGlyph>;

    /**
      == FallbackGlyph->AdvanceX
     */
    @:native('FallbackAdvanceX') public var fallbackAdvanceX : Float32;

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
    @:native('Ascent') public var ascent : Float32;
    @:native('Descent') public var descent : Float32;

    /**
      Total surface in pixels to get an idea of the font rasterization/texture cost (not exact, we approximate the cost of padding between glyphs)
     */
    @:native('MetricsTotalSurface') public var metricsTotalSurface : Int;

    @:native('ClearOutputData')  function clearOutputData() : Void;
    @:native('BuildLookupTable') function buildLookupTable() : Void;
    @:native('FindGlyph')        function findGlyph(_c : ImWchar) : ConstPointer<ImFontGlyph>;
    @:native('SetFallbackChar')  function setFallbackChar(_c : ImWchar) : Void;
    @:native('GetCharAdvance')   function getCharAdvance(_c : ImWchar) : Float32;
    @:native('IsLoaded')         function isLoaded(_c : ImWchar) : Bool;
    @:native('GetDebugName')     function getDebugName() : String;

    @:native('CalcTextSizeA') function calcTextSizeA(_size : Float32, _maxWidth : Float32, _wrapWidth : Float32, _textBegin : ConstCharStar, _textEnd : ConstCharStar = null, _remaining : Pointer<ConstCharStar> = null) : ImVec2;
    @:native('CalcWordWrapPositionA') function calcWordWrapPositionA(_scale : Float32, _text : ConstCharStar, _textEnd : ConstCharStar, _wrapWidth : Float32) : ConstCharStar;
    @:native('RenderChar') function renderChar(_drawList : Pointer<ImDrawList>, _size : Float32, _pos : ImVec2, _col : ImU32, _c : UInt16) : Void;
    @:native('RenderText') function renderText(_drawList : Pointer<ImDrawList>, _size : Float32, _pos : ImVec2, _col : ImU32, _clipRect : Reference<ImVec4>, _textBegin : ConstCharStar, _textEnd : ConstCharStar, _wrapWidth : Float32 = 0.0, _cpuFineClip : Bool = false) : Void;
}
