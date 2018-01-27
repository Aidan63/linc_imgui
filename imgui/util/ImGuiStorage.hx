package imgui.util;

import imgui.ImGui;
import imgui.util.ImVector;

@:keep
@:include('linc_imgui.h')
@:native('ImGuiStorage')
@:structAccess
@:unreflective
extern class ImGuiStorage
{
    @:native('ImGuiStorage') public static function create() : ImGuiStorage;

    @:native('Data') public var data : ImVectorPair;

    @:native('Clear') public function clear() : Void;
    
    @:overload(function(_key : ImGuiID) : Int {})
    @:native('GetInt') public function getInt(_key : ImGuiID, _defaultValue : Int) : Int;
    @:native('SetInt') public function setInt(_key : ImGuiID, _value : Int) : Void;

    @:overload(function(_key : ImGuiID) : Bool {})
    @:native('GetBool') public function getBool(_key : ImGuiID, _defaultValue : Bool) : Bool;
    @:native('SetBool') public function setBool(_key : ImGuiID, _value : Bool) : Void;

    @:overload(function(_key : ImGuiID) : Float {})
    @:native('GetFloat') public function getFloat(_key : ImGuiID, _defaultValue : Float) : Float;
    @:native('SetFloat') public function setFloat(_key : ImGuiID, _value : Float) : Void;

    @:native('GetVoidPtr') public function getVoidPtr(_key : ImGuiID) : cpp.RawPointer<cpp.Void>;
    @:native('SetVoidPtr') public function setVoidPtr(_key : ImGuiID, _value : cpp.RawPointer<cpp.Void>) : Void;

    /**
     Use on your own storage if you know only integer are being stored (open/close all tree nodes)
     */
    @:native('SetAllInt') public function setAllInt(_val : Int) : Bool;

    /**
     For quicker full rebuild of a storage (instead of an incremental one), you may add all your contents and then sort once.
     */
    @:native('BuildSortByKey') public function buildSortByKey() : Void;
}

@:native('ImGuiStorage::Pair')
@:structAccess
@:unreflective
extern class Pair
{
    public var key : ImGuiID;

    public var val_i : Int;
    public var val_float : Float;
    public var val_p : cpp.RawPointer<cpp.Void>;

    @:overload(function(_key : ImGuiID, _val_p : cpp.RawPointer<cpp.Void>) : Pair {})
    @:overload(function(_key : ImGuiID, _val_f : Float) : Pair {})
    @:native('ImGuiStorage::Pair') public static function create(_key : ImGuiID, _val_i : Int) : Pair;
}

@:native('ImVector<ImGuiStorage::Pair>')
@:structAccess
@:unreflective
extern class ImVectorPair extends ImVector<Pair>
{
    //
}
