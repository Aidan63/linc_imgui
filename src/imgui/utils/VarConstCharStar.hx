package imgui.utils;

import cpp.Char;
import cpp.RawConstPointer;
import haxe.extern.AsVar;

extern abstract VarConstCharStar(RawConstPointer<Char>) to(RawConstPointer<Char>) {
	inline function new(s:AsVar<String>)
		this = cpp.NativeString.raw(s);

	@:from
	static public inline function fromString(s:String):VarConstCharStar
		return new VarConstCharStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

	@:to extern public inline function toPointer():RawConstPointer<Char>
		return this;
}