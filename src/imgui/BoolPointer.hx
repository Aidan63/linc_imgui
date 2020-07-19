package imgui;

import imgui.utils.VarPointer;

abstract BoolPointer(cpp.Pointer<Bool>) from cpp.Pointer<Bool> to cpp.Pointer<Bool>
{
    inline function new(_ptr : cpp.Pointer<Bool>)
    {
        this = _ptr;
    }

    @:from public static inline function fromBool(_bool : Bool)
    {
        return new BoolPointer(VarPointer.addressOf(_bool));
    }

    @:from public static inline function fromBoolArray(_array : Array<Bool>)
    {
        return new BoolPointer(VarPointer.arrayElem(_array, 0));
    }

    @:to public inline function toBool() : Bool
    {
        return this.value;
    }

    @:to public inline function toPtr() : cpp.Star<Bool>
    {
        return this.ptr;
    }

    @:to public inline function toRaw() : cpp.RawPointer<Bool>
    {
        return this.raw;
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