package imgui.util;

import cpp.Float32;

@:include('linc_imgui.h')
@:native('ImVec2')
@:structAccess
extern class ImVec2
{
    public var x : Float32;
    public var y : Float32;

    @:native('ImVec2') static function create(_x : Float32 = 0, _y : Float32 = 0) : ImVec2;
}
