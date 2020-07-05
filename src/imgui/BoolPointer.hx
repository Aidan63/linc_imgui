package imgui;

import cpp.Star;
import cpp.Pointer;
import cpp.RawPointer;
import haxe.extern.AsVar;

abstract BoolPointer(RawPointer<Bool>) from RawPointer<Bool> to RawPointer<Bool>
{
    inline function new(_ptr : RawPointer<Bool>)
    {
        this = _ptr;
    }

    @:from public static inline function fromBool(_bool : Bool)
    {
        return new BoolPointer(cast cpp.Native.addressOf(_bool));
    }

    @:from public static inline function fromBoolArray(_array : Array<Bool>)
    {
        return new BoolPointer(Pointer.arrayElem(_array, 0).raw);
    }

    @:to public inline function toBool() : Bool
    {
        return (cast this : cpp.Star<Bool>);
    }

    @:to public inline function toStar() : Star<Bool>
    {
        return cast this;
    }

    @:arrayAccess public inline function get(_idx : Int) : Bool
    {
        return this[_idx];
    }

    @:arrayAccess public inline function set(_idx : Int, _val : Bool)
    {
        this[_idx] = _val;
    }
}