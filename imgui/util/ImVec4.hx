package imgui.util;

import cpp.Float32;

@:include('linc_imgui.h')
@:native('ImVec4')
@:structAccess
extern class ImVec4
{
    public var x : Float32;
    public var y : Float32;
    public var z : Float32;
    public var w : Float32;

    @:native('ImVec4') static function create(_x : Float32 = 0, _y : Float32 = 0, _z : Float32 = 0, _w : Float32 = 0) : ImVec4;
}
