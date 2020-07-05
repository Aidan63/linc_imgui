package imgui;

import cpp.Star;
import cpp.Pointer;
import cpp.RawPointer;
import cpp.Float32;

abstract FloatPointer(RawPointer<Float32>) from RawPointer<Float32> to RawPointer<Float32>
{
    inline function new(_ptr : RawPointer<Float32>)
    {
        this = _ptr;
    }

    @:from public static inline function fromFloat(_float : Float32)
    {
        return new FloatPointer(cast cpp.Native.addressOf(_float));
    }

    @:from public static inline function fromFloatArray(_array : Array<Float32>)
    {
        return new FloatPointer(Pointer.arrayElem(_array, 0).raw);
    }

    @:to public inline function toFloat32() : Float32
    {
        return Pointer.fromRaw(this).value;
    }

    @:to public inline function toStar() : Star<Float32>
    {
        return cast this;
    }
}