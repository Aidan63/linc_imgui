package imgui.util;

import cpp.RawPointer;
import cpp.Reference;

@:include("linc_imgui.h")
extern class ImVector<T>
{
    @:native('Size') public var size : Int;
    @:native('Capacity') public var capacity : Int;
    @:native('Data') public var data : RawPointer<T>;

    @:native('empty') public function empty() : Bool;
    @:native('clear') public function clear() : Void;

    @:native('begin') public function begin() : RawPointer<T>;
    @:native('end') public function end() : RawPointer<T>;
    @:native('front') public function front() : Reference<T>;
    @:native('back') public function back() : Reference<T>;

    @:native('swap') public function swap(_rhs : Reference<ImVector<T>>) : Void;

    @:native('resize') public function resize(_newSize : Int) : Void;
    @:native('reserve') public function reserve(_newCapacity : Int) : Void;

    @:native('push_back') public function pushBack() : Void;
    @:native('pop_back') public function popBack() : Void;
    @:native('push_front') public function pushFront() : Void;

    @:native('') public function erase(_it : RawPointer<T>) : RawPointer<T>;
    @:native('') public function insert(_it : RawPointer<T>, _v : Reference<T>) : RawPointer<T>;
    @:native('') public function contains(_v : Reference<T>) : Bool;
}
