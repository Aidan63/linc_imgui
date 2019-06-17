import cpp.RawPointer;
import cpp.Star;
import cpp.Reference;

@:keep
@:unreflective
@:structAccess
@:include('imgui.h')
extern class ImVector<T>
{
    @:native('Size')
    var size : Int;

    @:native('Capacity')
    var capacity : Int;

    @:native('Data')
    var data : RawPointer<T>;

    function empty() : Bool;

    function size_in_bytes() : Int;

    function clear() : Void;

    function begin() : Star<T>;

    function end() : Star<T>;

    function front() : Reference<T>;

    function back() : Reference<T>;

    function swap(_rhs : Reference<ImVector<T>>) : Void;

    @:overload(function(_newSize : Int) : Void {})
    function resize(_newSize : Int, _v : Reference<T>) : Void;

    function reserve(_newCapacity : Int) : Void;
}