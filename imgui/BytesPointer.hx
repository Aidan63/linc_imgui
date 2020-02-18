package imgui;

import haxe.io.Bytes;
import haxe.io.BytesData;
import cpp.Star;
import cpp.UInt8;

using cpp.NativeArray;

abstract BytesPointer(Star<UInt8>) to Star<UInt8>
{
    function new(_ptr : Star<UInt8>)
    {
        this = _ptr;
    }

    @:from public static function fromString(_string : String)
    {
        return new BytesPointer(untyped _string.__s);
    }

    @:from public static function fromBytes(_bytes : Bytes)
    {
        return new BytesPointer(_bytes.getData().address(0).ptr);
    }

    @:from public static function fromBytesData(_bytes : BytesData)
    {
        return new BytesPointer(_bytes.address(0).ptr);
    }

    @:to public function toString()
    {
        return new String(untyped this);
    }
}
