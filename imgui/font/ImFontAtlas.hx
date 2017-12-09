package imgui.font;

import imgui.ImGui;
import cpp.UInt8;
import cpp.Pointer;
import cpp.ConstPointer;
import cpp.ConstCharStar;
import cpp.Reference;

@:keep
@:include('linc_imgui.h')
@:native('ImFontAtlas')
@:structAccess
@:unreflective
extern class ImFontAtlas
{
    /**
      User data to refer to the texture once it has been uploaded to user's graphic systems.

      It is passed back to you during rendering via the ImDrawCmd structure.
     */
    public var TexID : ImTextureID;

    /**
      Texture width desired by user before Build(). Must be a power-of-two.

      If have many glyphs your graphics API have texture size restrictions you may want to increase texture width to decrease height.
     */
    public var TexDesiredWidth : Int;

    /**
      Padding between glyphs within texture in pixels. Defaults to 1.
     */
    public var TexGlyphPadding : Int;

    // Private native functions
    @:native('~ImFontAtlas') private function _destroy() : Void;

    @:native('AddFont')              private function _addFont(_fontCfg : ConstPointer<ImFontConfig>) : Pointer<ImFont>;
    @:native('AddFontDefault')       private function _addFontDefault(_fontCfg : ConstPointer<ImFontConfig> = null) : Pointer<ImFont>;
    @:native('AddFontFromFileTTF')   private function _addFontFromFileTTF(_filename : ConstCharStar, _sizePixels : Float, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont>;
    @:native('AddFontFromMemoryTTF') private function _addFontFromMemoryTTF(_fontData : Pointer<Void>, _fontSize : Int, _sizePixels : Float, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont>;
    @:native('AddFontFromMemoryCompressedTTF')       private function _addFontFromMemoryCompressedTTF(_fontData : Pointer<Void>, _fontSize : Int, _sizePixels : Float, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont>;
    @:native('AddFontFromMemoryCompressedBase85TTF') private function _addFontFromMemoryCompressedBase85TTF(_fontData : Pointer<Void>, _sizePixels : Float, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont>;

    @:native('ClearTexData')   private function _clearTexData() : Void;
    @:native('ClearInputData') private function _clearInputData() : Void;
    @:native('ClearFonts')     private function _clearFonts() : Void;
    @:native('Clear')          private function _clear() : Void;

    @:native('Build') private function _build() : Void;
    @:native('ImGui::linc::GetTexDataAsRGBA32') private static function _getTexDataAsRGBA32(_atlas : Pointer<ImFontAtlas>, _outWidth : Pointer<Int>, _outHeight : Pointer<Int>) : Pointer<UInt8>;
    @:native('ImGui::linc::GetTexDataAsAlpha8') private static function _getTexDataAsAlpha8(_atlas : Pointer<ImFontAtlas>, _outWidth : Pointer<Int>, _outHeight : Pointer<Int>) : Pointer<UInt8>;

    @:native('GetGlyphRangesDefault')  private function _getGlyphRangesDefault() : ConstPointer<ImWchar>;
    @:native('GetGlyphRangesKorean')   private function _getGlyphRangesKorean() : ConstPointer<ImWchar>;
    @:native('GetGlyphRangesJapanese') private function _getGlyphRangesJapanese() : ConstPointer<ImWchar>;
    @:native('GetGlyphRangesChinese')  private function _getGlyphRangesChinese() : ConstPointer<ImWchar>;
    @:native('GetGlyphRangesCyrillic') private function _getGlyphRangesCyrillic() : ConstPointer<ImWchar>;
    @:native('GetGlyphRangesThai')     private function _getGlyphRangesThai() : ConstPointer<ImWchar>;

    // Public facing inline functions

    //-----------------------------//
    // Constructor and Destructors //
    //-----------------------------//

    @:native('new ImFontAtlas') static function create() : Pointer<ImFontAtlas>;
    inline static function destroy(_atlas : Pointer<ImFontAtlas>) : Void { _atlas.ref._destroy(); }

    //-----------------------//
    // Font adding functions //
    //-----------------------//

    inline static function addFont(_atlas : Pointer<ImFontAtlas>, _fontCfg : ConstPointer<ImFontConfig>) : Pointer<ImFont> {
        return _atlas.ref._addFont(_fontCfg);
    }
    inline static function addFontDefault(_atlas : Pointer<ImFontAtlas>, _fontCfg : ConstPointer<ImFontConfig> = null) : Pointer<ImFont> {
        return _atlas.ref._addFontDefault(_fontCfg);
    }
    inline static function addFontFromFileTTF(_atlas : Pointer<ImFontAtlas>, _filename : ConstCharStar, _sizePixels : Float, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont> {
        return _atlas.ref._addFontFromFileTTF(_filename, _sizePixels, _fontCfg, _glyphRanges);
    }
    inline static function addFontFromMemoryTTF(_atlas : Pointer<ImFontAtlas>, _fontData : Pointer<Void>, _fontSize : Int, _sizePixels : Float, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont> {
        return _atlas.ref._addFontFromMemoryTTF(_fontData, _fontSize, _sizePixels, _fontCfg, _glyphRanges);
    }
    inline static function addFontFromMemoryCompressedTTF(_atlas : Pointer<ImFontAtlas>, _fontData : Pointer<Void>, _fontSize : Int, _sizePixels : Float, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont> {
        return _atlas.ref._addFontFromMemoryCompressedTTF(_fontData, _fontSize, _sizePixels, _fontCfg, _glyphRanges);
    }
    inline static function addFontFromMemoryCompressedBase85TTF(_atlas : Pointer<ImFontAtlas>, _fontData : Pointer<Void>, _sizePixels : Float, _fontCfg : ConstPointer<ImFontConfig> = null, _glyphRanges : ConstPointer<ImWchar> = null) : Pointer<ImFont> {
        return _atlas.ref._addFontFromMemoryCompressedBase85TTF(_fontData, _sizePixels, _fontCfg, _glyphRanges);
    }

    /**
      Clear the CPU-size texture data. Saves RAM once the texture has been copied to graphics memory.
      @param _atlas The atlas to clear
     */
    inline static function clearTexData(_atlas : Pointer<ImFontAtlas>) : Void { _atlas.ref._clearTexData(); }

    /**
      Clear the input TTF data (inc sizes, glyph ranges).
      @param _atlas The atlas to clear
     */
    inline static function clearInputData(_atlas : Pointer<ImFontAtlas>) : Void { _atlas.ref._clearInputData(); }

    /**
      Clear the ImGui-side font data (glyphs storage, UV coordinates)
      @param _atlas The atlas to clear
     */
    inline static function clearFonts(_atlas : Pointer<ImFontAtlas>) : Void { _atlas.ref._clearFonts(); }

    /**
      Clear all.
      @param _atlas The atlas to clear
     */
    inline static function clear(_atlas : Pointer<ImFontAtlas>) : Void { _atlas.ref._clear(); }

    // ------------------------------//
    // Build and retrieve pixel data //
    // ------------------------------//

    inline static function build(_atlas : Pointer<ImFontAtlas>) : Void { _atlas.ref._build(); }
    static inline function getTexDataAsRGBA32(_atlas : Pointer<ImFontAtlas>, _pixels : Reference<Array<Int>>, _outWidth : Int, _outHeight : Int) : Void {
        var ptr = _getTexDataAsRGBA32(_atlas, Pointer.addressOf(_outWidth), Pointer.addressOf(_outHeight));
        _pixels = cast ptr.toUnmanagedArray((_outWidth * _outHeight) * 4);
    }
    static inline function getTexDataAsAlpha8(_atlas : Pointer<ImFontAtlas>, _pixels : Reference<Array<Int>>, _outWidth : Int, _outHeight : Int) : Void {
        var ptr = _getTexDataAsAlpha8(_atlas, Pointer.addressOf(_outWidth), Pointer.addressOf(_outHeight));
        _pixels = cast ptr.toUnmanagedArray(_outWidth * _outHeight);
    }
    @:native('ImGui::linc::SetTexID') static function setTexID(_atlas : Pointer<ImFontAtlas>, _data : String) : Pointer<Void>;

    //--------------//
    // Glyph Ranges //
    //--------------//

    /**
      Basic Latin, Extended Latin.
      @param _atlas The atlas to use
      @return ConstPointer<ImWchar>
     */
    static inline function getGlyphRangesDefault(_atlas : Pointer<ImFontAtlas>) : ConstPointer<ImWchar> { return _atlas.ref._getGlyphRangesDefault(); }

    /**
      Default + Korean characters.
      @param _atlas The atlas to use
      @return ConstPointer<ImWchar>
     */
    static inline function getGlyphRangesKorean(_atlas : Pointer<ImFontAtlas>) : ConstPointer<ImWchar> { return _atlas.ref._getGlyphRangesKorean(); }

    /**
      Default + Hiragana, Katakana, Half-Width, Selection of 1946 Ideographs.
      @param _atlas The atlas to use
      @return ConstPointer<ImWchar>
     */
    static inline function getGlyphRangesJapanese(_atlas : Pointer<ImFontAtlas>) : ConstPointer<ImWchar> { return _atlas.ref._getGlyphRangesJapanese(); }

    /**
      Default + Japanese + full set of about 21000 CJK Unified Ideographs.
      @param _atlas The atlas to use
      @return ConstPointer<ImWchar>
     */
    static inline function getGlyphRangesChinese(_atlas : Pointer<ImFontAtlas>) : ConstPointer<ImWchar> { return _atlas.ref._getGlyphRangesChinese(); }

    /**
      Default + about 400 Cyrillic characters.
      @param _atlas The atlas to use
      @return ConstPointer<ImWchar>
     */
    static inline function getGlyphRangesCyrillic(_atlas : Pointer<ImFontAtlas>) : ConstPointer<ImWchar> { return _atlas.ref._getGlyphRangesCyrillic(); }

    /**
      Default + Thai characters.
      @param _atlas The atlas to use
      @return ConstPointer<ImWchar>
     */
    static inline function getGlyphRangesThai(_atlas : Pointer<ImFontAtlas>) : ConstPointer<ImWchar> { return _atlas.ref._getGlyphRangesThai(); }
}
