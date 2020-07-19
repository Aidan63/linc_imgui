package imgui;

abstract IntPointer(cpp.Pointer<Int>) from cpp.Pointer<Int> to cpp.Pointer<Int>
{
    inline function new(_ptr : cpp.Pointer<Int>)
    {
        this = _ptr;
    }

    @:from public static inline function fromInt(_int : Int)
    {
        return new IntPointer(cpp.VarPointer.addressOf(_int));
    }

    @:from public static inline function fromIntArray(_array : Array<Int>)
    {
        return new IntPointer(cpp.VarPointer.arrayElem(_array, 0));
    }

    @:to public inline function toInt() : Int
    {
        return this.value;
    }

    @:to public inline function toRaw() : cpp.RawPointer<Int>
    {
        return this.raw;
    }

    @:to public inline function toPtr() : cpp.Star<Int>
    {
        return this.ptr;
    }

    @:arrayAccess public inline function get(_idx : Int) : Int
    {
        return this[_idx];
    }

    @:arrayAccess public inline function set(_idx : Int, _val : Int)
    {
        this[_idx] = _val;
    }
}