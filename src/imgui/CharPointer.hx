package imgui;

import haxe.io.Bytes;
import haxe.io.BytesData;
import cpp.RawPointer;
import cpp.Star;
import cpp.UInt8;

using cpp.NativeArray;

abstract CharPointer(RawPointer<UInt8>) from RawPointer<UInt8> to RawPointer<UInt8>
{
    inline function new(_ptr : RawPointer<UInt8>)
    {
        this = _ptr;
    }

    @:from public static inline function fromBytes(_bytes : Bytes)
    {
        return new CharPointer(cast _bytes.getData().address(0).ptr);
    }

    @:from public static inline function fromBytesData(_bytes : BytesData)
    {
        return new CharPointer(cast _bytes.address(0).ptr);
    }

    @:to public inline function toStar() : Star<UInt8>
    {
        return cast this;
    }
}
