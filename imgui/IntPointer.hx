package imgui;

import cpp.Star;
import cpp.Pointer;
import cpp.RawPointer;

abstract IntPointer(RawPointer<Int>) from RawPointer<Int> to RawPointer<Int>
{
    function new(_ptr : RawPointer<Int>)
    {
        this = _ptr;
    }

    @:from public static function fromInt(_int : Int)
    {
        return new IntPointer(Pointer.addressOf(_int).raw);
    }

    @:from public static function fromIntArray(_array : Array<Int>)
    {
        return new IntPointer(Pointer.arrayElem(_array, 0).raw);
    }

    @:to public function toInt() : Int
    {
        return Pointer.fromRaw(this).value;
    }

    @:to public function toStar() : Star<Int>
    {
        return Pointer.fromRaw(this).ptr;
    }
}