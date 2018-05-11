package imgui.font;

import imgui.ImGui;
import imgui.util.ImVec2;
import cpp.Float32;
import cpp.UInt8;
import cpp.Pointer;
import cpp.ConstPointer;
import cpp.ConstCharStar;
import cpp.Reference;

@:include('linc_imgui.h')
@:native('ImFontAtlas')
@:structAccess
@:unreflective
extern class ImFontAtlas
{
    @:native('Flags') public var flags : ImFontAtlasFlags;

    /**
      User data to refer to the texture once it has been uploaded to user's graphic systems.

      It is passed back to you during rendering via the ImDrawCmd structure.
     */
    @:native('TexID') public var texID : ImTextureID;

    /**
      Texture width desired by user before Build(). Must be a power-of-two.

      If have many glyphs your graphics API have texture size restrictions you may want to increase texture width to decrease height.
     */
    @:native('TexDesiredWidth') public var texDesiredWidth : Int;

    /**
      Padding between glyphs within texture in pixels. Defaults to 1.
     */
    @:native('TexGlyphPadding') public var texGlyphPadding : Int;

    //-----------------------------//
    // Constructor and Destructors //
    //-----------------------------//

    @:native('new ImFontAtlas') static function create() : Pointer<ImFontAtlas>;
    @:native('~ImFontAtlas') static function delete() : Void;

    //-----------------------//
    // Font adding functions //
    //-----------------------//

    @:native('AddFont')              function addFont(_fontCfg : ConstPointer<ImFontConfig>) : Pointer<ImFont>;
    @:native('AddFontDefault')       function addFontDefault(_fontCfg : ConstPointer<ImFontConfig> = null) : Pointer<ImFont>;
    @:native('AddFontFromFileTTF')   function addFontFromFileTTF(_filename : ConstCharStar, _sizePixels : Float32, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont>;
    @:native('AddFontFromMemoryTTF') function addFontFromMemoryTTF(_fontData : Pointer<Void>, _fontSize : Int, _sizePixels : Float32, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont>;
    @:native('AddFontFromMemoryCompressedTTF')       function addFontFromMemoryCompressedTTF(_fontData : Pointer<Void>, _fontSize : Int, _sizePixels : Float32, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont>;
    @:native('AddFontFromMemoryCompressedBase85TTF') function addFontFromMemoryCompressedBase85TTF(_fontData : Pointer<Void>, _sizePixels : Float32, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont>;

    /**
      Clear the CPU-size texture data. Saves RAM once the texture has been copied to graphics memory.
     */
    @:native('ClearTexData') function clearTexData() : Void;

    /**
      Clear the input TTF data (inc sizes, glyph ranges).
     */
    @:native('ClearInputData') function clearInputData() : Void;

    /**
      Clear the ImGui-side font data (glyphs storage, UV coordinates)
     */
    @:native('ClearFonts') function clearFonts() : Void;

    /**
      Clear all.
     */
    @:native('Clear') function clear() : Void;

    //-------------------------------//
    // Build and retrieve pixel data //
    //-------------------------------//

    @:native('Build') function build() : Void;
    @:native('ImGui::linc::GetTexDataAsRGBA32') private static function _getTexDataAsRGBA32(_atlas : Pointer<ImFontAtlas>, _outWidth : Int, _outHeight : Int) : Pointer<UInt8>;
    @:native('ImGui::linc::GetTexDataAsAlpha8') private static function _getTexDataAsAlpha8(_atlas : Pointer<ImFontAtlas>, _outWidth : Int, _outHeight : Int) : Pointer<UInt8>;

    inline function getTexDataAsRGBA32(_pixels : Reference<Array<Int>>, _outWidth : Int, _outHeight : Int) : Void {
        var ptr = _getTexDataAsRGBA32(Pointer.addressOf(this), _outWidth, _outHeight);
        _pixels = cast ptr.toUnmanagedArray((_outWidth * _outHeight) * 4);
    }
    inline function getTexDataAsAlpha8(_pixels : Reference<Array<Int>>, _outWidth : Int, _outHeight : Int) : Void {
        var ptr = _getTexDataAsAlpha8(Pointer.addressOf(this), _outWidth, _outHeight);
        _pixels = cast ptr.toUnmanagedArray(_outWidth * _outHeight);
    }

    @:native('SetTexID') function setTexID(_id : ImTextureID) : Void;

    //--------------//
    // Glyph Ranges //
    //--------------//

    /**
      Basic Latin, Extended Latin.
      @return ConstPointer<ImWchar>
     */
    @:native('GetGlyphRangesDefault') function getGlyphRangesDefault() : ConstPointer<ImWchar>;

    /**
      Default + Korean characters.
      @return ConstPointer<ImWchar>
     */
    @:native('GetGlyphRangesKorean') function getGlyphRangesKorean() : ConstPointer<ImWchar>;

    /**
      Default + Hiragana, Katakana, Half-Width, Selection of 1946 Ideographs.
      @return ConstPointer<ImWchar>
     */
    @:native('GetGlyphRangesJapanese') function getGlyphRangesJapanese() : ConstPointer<ImWchar>;

    /**
      Default + Japanese + full set of about 21000 CJK Unified Ideographs.
      @return ConstPointer<ImWchar>
     */
    @:native('GetGlyphRangesChinese') function getGlyphRangesChinese() : ConstPointer<ImWchar>;

    /**
      Default + about 400 Cyrillic characters.
      @return ConstPointer<ImWchar>
     */
    @:native('GetGlyphRangesCyrillic') function getGlyphRangesCyrillic() : ConstPointer<ImWchar>;

    /**
      Default + Thai characters.
      @return ConstPointer<ImWchar>
     */
    @:native('GetGlyphRangesThai') function getGlyphRangesThai() : ConstPointer<ImWchar>;

    //--------------------------------//
    // Custom Rectangles / Glyphs API //
    //--------------------------------//

    @:native('AddCustomRectRegular') public function addCustomRectRegular(_id : Int, _width : Int, _height : Int) : Int;

    @:overload(function(_font : Pointer<ImFont>, _id : ImWchar, _width : Int, _height : Int, _advanceX : Float32) : Int {})
    @:native('AddCustomRectFontGlyph') public function AddCustomRectFontGlyph(_font : Pointer<ImFont>, _id : ImWchar, _width : Int, _height : Int, _advanceX : Float32, _offset : ImVec2) : Int;

    @:native('CalcCustomRectUV') public function calcCustomRectUV(_rect : ConstPointer<CustomRect>, _outUVMin : Pointer<ImVec2>, _outUVMax : Pointer<ImVec2>) : Void;
    @:native('GetCustomRectByIndex') public function getCustomRectByIndex(_index : Int) : ConstPointer<CustomRect>;
}

@:native('ImFontAtlas::GlyphRangesBuilder')
@:structAccess
@:unreflective
extern class GlyphRangesBuilder
{
  @:native('UsedChars') public var usedChars : ImVectorImWchar;

  @:native('new ImFontAtlas::GlyphRangesBuilder') public static function create() : Pointer<GlyphRangesBuilder>;
  @:native('GetBit') public function getBit(_n : Int) : Bool;
  @:native('SetBit') public function setBit(_n : Int) : Void;

  @:overload(function(_text : String) : Void {})
  @:native('AddText') public function addText(_text : String, _textEnd : String) : Void;

  @:native('AddRanges') public function addRanges(_ranges : ConstPointer<ImWchar>) : Void;
  @:native('BuildRanges') public function buildRanges(_outRanges : Pointer<ImVectorImWchar>) : Void;
}

@:native('ImFontAtlas::CustomRect')
@:structAccess
@:unreflective
extern class CustomRect
{
  @:native('ID')     public var id     : Int;
  @:native('Width')  public var width  : Int;
  @:native('Height') public var height : Int;
  @:native('X') public var x : Int;
  @:native('Y') public var y : Int;
  @:native('GlyphAdvanceX') public var glyphAdvanceX : Float32;
  @:native('GlyphOffset')   public var glyphOffset   : ImVec2;
  @:native('Font') public var font : cpp.RawPointer<ImVec2>;

  @:native('new ImFontAtlas::CustomRect') public static function create() : Pointer<CustomRect>;
  @:native('IsPacked') public function isPacked() : Bool;
}
