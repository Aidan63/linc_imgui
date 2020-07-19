package imgui;

abstract FloatPointer(cpp.Pointer<cpp.Float32>) from cpp.Pointer<cpp.Float32> to cpp.Pointer<cpp.Float32>
{
    inline function new(_ptr : cpp.Pointer<cpp.Float32>)
    {
        this = _ptr;
    }

    @:from public static inline function fromFloat(_float : cpp.Float32)
    {
        return new FloatPointer(cpp.VarPointer.addressOf(_float));
    }

    @:from public static inline function fromFloatArray(_array : Array<cpp.Float32>)
    {
        return new FloatPointer(cpp.VarPointer.arrayElem(_array, 0));
    }

    @:to public inline function toFloat32() : cpp.Float32
    {
        return this.value;
    }

    @:to public inline function toPtr() : cpp.Star<cpp.Float32>
    {
        return cast this;
    }

    @:to public inline function toRaw() : cpp.RawPointer<cpp.Float32>
    {
        return cast this;
    }
}