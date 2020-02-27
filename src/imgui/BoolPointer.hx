package imgui;

import cpp.Star;
import cpp.Pointer;
import cpp.RawPointer;

abstract BoolPointer(RawPointer<Bool>) from RawPointer<Bool> to RawPointer<Bool>
{
    function new(_ptr : RawPointer<Bool>)
    {
        this = _ptr;
    }

    @:from public static function fromBool(_int : Bool)
    {
        return new BoolPointer(Pointer.addressOf(_int).raw);
    }

    @:from public static function fromBoolArray(_array : Array<Bool>)
    {
        return new BoolPointer(Pointer.arrayElem(_array, 0).raw);
    }

    @:to public function toInt() : Bool
    {
        return Pointer.fromRaw(this).value;
    }

    @:to public function toStar() : Star<Bool>
    {
        return Pointer.fromRaw(this).ptr;
    }

    @:arrayAccess public function get(_idx : Int) : Bool
    {
        return this[_idx];
    }

    @:arrayAccess public function set(_idx : Int, _val : Bool)
    {
        this[_idx] = _val;
    }
}