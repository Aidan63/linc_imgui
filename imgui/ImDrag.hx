package imgui;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.Reference;

@:include('linc_imgui.h')
extern class ImDrag
{
    @:overload(function(_label : String, _value : Float) : Bool {})
    @:overload(function(_label : String, _value : Float, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _value : Float, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : String, _value : Float, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, _value : Float, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::DragFloat')  static function dragFloat(_label : String, _value : Float, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _power : Float) : Bool;

    @:overload(function(_label : String, _v : Array<Float>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::linc::DragFloat2') static function dragFloat2(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _power : Float) : Bool;

    @:overload(function(_label : String, _v : Array<Float>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::linc::DragFloat3') static function dragFloat3(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _power : Float) : Bool;

    @:overload(function(_label : String, _v : Array<Float>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::linc::DragFloat4') static function dragFloat4(_label : String, _v : Array<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _power : Float) : Bool;

    @:overload(function(_label : String, _vCurrentMin : Float, _vCurrentMax : Float) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float, _vCurrentMax : Float, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float, _vCurrentMax : Float, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float, _vCurrentMax : Float, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float, _vCurrentMax : Float, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : String) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float, _vCurrentMax : Float, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _displayFormatMax : String) : Bool {})
    @:native('ImGui::linc::DragFloatRange2') static function dragFloatRange2(_label : String, _vCurrentMin : Float, _vCurrentMax : Float, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _displayFormatMax : String, _power : Float) : Bool;

    @:overload(function(_label : String, _v : Int) : Bool {})
    @:overload(function(_label : String, _v : Int, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _v : Int, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _v : Int, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::DragInt')  static function dragInt(_label : String, _v : Int, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::DragInt2') static function dragInt2(_label : String, _v : Array<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::DragInt3')  static function dragInt3(_label : String, _v : Array<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::DragInt4') static function dragInt4(_label : String, _v : Array<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::DragIntRange2') static function dragIntRange2(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : String, _displayFormatMax : String) : Bool;
}
