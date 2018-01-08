package imgui.util;

@:include('linc_imgui.h')
@:native('ImVec4')
@:structAccess
extern class ImVec4
{
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public var w : Float;

    @:native('ImVec4') static function create(_x : Float = 0, _y : Float = 0, _z : Float = 0, _w : Float = 0) : ImVec4;
}
