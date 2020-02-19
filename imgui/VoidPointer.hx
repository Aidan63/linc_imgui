package imgui;

import cpp.Star;

using cpp.Native;

abstract VoidPointer(Star<cpp.Void>) to Star<cpp.Void>
{
    function new(_ptr : Star<cpp.Void>)
    {
        this = _ptr;
    }

    @:from public static function fromObject(_object : cpp.Object)
    {
        return new VoidPointer(cast _object.addressOf());
    }
}
