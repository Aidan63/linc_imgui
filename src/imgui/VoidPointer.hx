package imgui;

import cpp.Pointer;
import cpp.Star;
import cpp.RawPointer;

abstract VoidPointer(RawPointer<cpp.Void>) from RawPointer<cpp.Void> to RawPointer<cpp.Void>
{
    inline function new(_ptr : RawPointer<cpp.Void>)
    {
        this = _ptr;
    }

    @:from public static inline function fromObject(_object : Any)
    {
        return new VoidPointer(cast cpp.Native.addressOf(_object));
    }

    @:to public inline function toStar() : Star<cpp.Void>
    {
        return cast this;
    }

    @:to public inline function toAny() : Any
    {
        return (cast this : cpp.Star<Any>);
    }
}
