package imgui.font;

import cpp.UInt8;
import cpp.Pointer;

@:keep
@:include('linc_imgui.h')
@:native('ImFontAtlas')
@:structAccess
@:unreflective
extern class ImFontAtlas
{
    static inline function getTexDataAsRGBA32(_atlas : Pointer<ImFontAtlas>, _outWidth : Int, _outHeight : Int) : Array<Int> {
        return cast _getTexDataAsRGBA32(_atlas, Pointer.addressOf(_outWidth), Pointer.addressOf(_outHeight)).toUnmanagedArray((_outWidth * _outHeight) * 4);
    }
    @:native('ImGui::linc::GetTexDataAsRGBA32') private static function _getTexDataAsRGBA32(_atlas : Pointer<ImFontAtlas>, _outWidth : Pointer<Int>, _outHeight : Pointer<Int>) : Pointer<UInt8>;

    @:native('ImGui::linc::SetTexID') static function setTexID(_atlas : Pointer<ImFontAtlas>, _data : String) : Pointer<cpp.Void>;
}
