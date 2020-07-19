package imgui;

abstract VoidPointer(cpp.Pointer<cpp.Void>) from cpp.Pointer<cpp.Void> to cpp.Pointer<cpp.Void>
{
    inline function new(_ptr : cpp.Pointer<cpp.Void>)
    {
        this = _ptr;
    }

    @:from public static inline function fromInt(_int : Int)
    {
        return new VoidPointer(cpp.VarPointer.addressOf(_int).reinterpret());
    }

    @:from public static inline function fromFloat(_float : Float)
    {
        return new VoidPointer(cpp.VarPointer.addressOf(_float).reinterpret());
    }

    @:from public static inline function fromBool(_bool : Bool)
    {
        return new VoidPointer(cpp.VarPointer.addressOf(_bool).reinterpret());
    }

    @:to public inline function toRaw() : cpp.RawPointer<cpp.Void>
    {
        return this.raw;
    }

    @:to public inline function toPtr() : cpp.Star<cpp.Void>
    {
        return this.ptr;
    }
}
