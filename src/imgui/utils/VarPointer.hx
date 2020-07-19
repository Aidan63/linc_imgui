package imgui.utils;

import cpp.Star;
import cpp.Pointer;
import cpp.AutoCast;
import cpp.Reference;
import cpp.RawPointer;
import cpp.NativeArray;
import cpp.ConstPointer;
import haxe.extern.AsVar;

@:coreType
@:native("cpp.Pointer")
@:include("cpp/Pointer.h")
@:semantics(variable)
extern class VarPointer<T> extends ConstPointer<T> implements ArrayAccess<T> {
	var ref(get, set):Reference<T>;

	function get_ref():Reference<T>;
	function set_ref(t:T):Reference<T>;

	function setAt(inIndex:Int, value:T):Void;

	static function fromRaw<T>(ptr:RawPointer<T>):Pointer<T>;

	@:native("::cpp::Pointer_obj::fromRaw")
	static function fromStar<T>(star:Star<T>):Pointer<T>;

	@:native("::cpp::Pointer_obj::fromHandle")
	static function nativeFromHandle<T>(inHandle:Dynamic, ?inKind:String):AutoCast;
	inline static function fromHandle<T>(inHandle:Dynamic, ?inKind:String):Pointer<T> {
		return cast nativeFromHandle(inHandle, inKind);
	}

	static function fromPointer<T>(inNativePointer:Dynamic):Pointer<T>;

	static function addressOf<T>(inVariable:AsVar<cpp.Reference<T>>):Pointer<T>;

	static function endOf<T:{}>(inVariable:T):Pointer<cpp.Void>;

	@:native("::cpp::Pointer_obj::arrayElem")
	static function nativeArrayElem<T>(array:AsVar<Array<T>>, inElem:Int):AutoCast;
	inline static function arrayElem<T>(array:AsVar<Array<T>>, inElem:Int):Pointer<T> {
		return cast nativeArrayElem(array, inElem);
	}

	@:native("::cpp::Pointer_obj::ofArray")
	static function nativeOfArray<T>(array:AsVar<Array<T>>):AutoCast;
	inline static function ofArray<T>(array:AsVar<Array<T>>):Pointer<T> {
		return cast nativeOfArray(array);
	}

	inline function toUnmanagedArray(elementCount:Int):Array<T> {
		var result = new Array<T>();
		NativeArray.setUnmanagedData(result, this, elementCount);
		return result;
	}

	inline function toUnmanagedVector(elementCount:Int):haxe.ds.Vector<T>
		return cast toUnmanagedArray(elementCount);

	override function inc():Pointer<T>;
	override function dec():Pointer<T>;
	override function incBy(inT:Int):Pointer<T>;
	override function decBy(inT:Int):Pointer<T>;
	override function add(inT:Int):Pointer<T>;
	override function sub(inT:Int):Pointer<T>;

	function postIncRef():Reference<T>;

	function destroy():Void;
	function destroyArray():Void;
}