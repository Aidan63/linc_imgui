package imgui;

import cpp.Pointer;
import cpp.Star;
import cpp.RawPointer;

abstract VoidPointer(RawPointer<cpp.Void>) from RawPointer<cpp.Void> to RawPointer<cpp.Void>
{
    function new(_ptr : RawPointer<cpp.Void>)
    {
        this = _ptr;
    }

    @:from public static function fromObject(_object : Dynamic)
    {
        return new VoidPointer(cast Pointer.addressOf(_object).raw);
    }

    @:to public function toStar() : Star<cpp.Void>
    {
        return cast this;
    }

    @:to public function toDynamic() : Dynamic
    {
        final ptr : Pointer<Dynamic> = Pointer.fromRaw(this).reinterpret();

        return ptr.ref;
    }
}
