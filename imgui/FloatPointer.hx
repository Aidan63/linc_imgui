package imgui;

import cpp.Star;
import cpp.Pointer;
import cpp.RawPointer;
import cpp.Float32;

abstract FloatPointer(RawPointer<Float32>) from RawPointer<Float32> to RawPointer<Float32>
{
    function new(_ptr : RawPointer<Float32>)
    {
        this = _ptr;
    }

    @:from public static function fromFloat(_int : Float32)
    {
        return new FloatPointer(Pointer.addressOf(_int).raw);
    }

    @:from public static function fromFloatArray(_array : Array<Float32>)
    {
        return new FloatPointer(Pointer.arrayElem(_array, 0).raw);
    }

    @:to public function toInt() : Float32
    {
        return Pointer.fromRaw(this).value;
    }

    @:to public function toStar() : Star<Float32>
    {
        return Pointer.fromRaw(this).ptr;
    }
}