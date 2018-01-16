package imgui.util;

import cpp.RawPointer;

@:include("linc_imgui.h")
extern class ImVector<T>
{
    @:native('Size') public var size : Int;
    @:native('Capacity') public var capacity : Int;
    @:native('Data') public var data : RawPointer<T>;
}
