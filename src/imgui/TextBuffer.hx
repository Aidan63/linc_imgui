package imgui;

import cpp.Char;

abstract TextBuffer(Array<cpp.Char>) {
    public function new(_size : Int) {
        this = [ for (_ in 0..._size) 0x0 ];
    }

    public function set(_text : String) {
        for (i in 0..._text.length) {
            this[i] = _text.charCodeAt(i);
        }
    }

    public function length() {
        return this.length;
    }

    @:to public function toStar() {
        return cpp.Pointer.arrayElem(this, 0).ptr;
    }

    @:to public function toString() {
        return cpp.NativeString.fromGcPointer(cpp.Pointer.arrayElem(this, 0), this.length);
    }
}