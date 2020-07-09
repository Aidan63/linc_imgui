package imgui;

import haxe.io.Bytes;
import haxe.io.BytesData;

using cpp.NativeArray;

abstract CharPointer(cpp.Pointer<cpp.UInt8>) from cpp.Pointer<cpp.UInt8> to cpp.Pointer<cpp.UInt8>
{
    inline function new(_ptr : cpp.Pointer<cpp.UInt8>)
    {
        this = _ptr;
    }

    @:from public static inline function fromBytes(_bytes : Bytes)
    {
        return new CharPointer(_bytes.getData().address(0));
    }

    @:from public static inline function fromBytesData(_bytes : BytesData)
    {
        return new CharPointer(_bytes.address(0));
    }

    @:to public inline function toPtr() : cpp.Star<cpp.UInt8>
    {
        return this.ptr;
    }

    @:to public inline function toRaw() : cpp.RawPointer<cpp.UInt8>
    {
        return this.raw;
    }
}
