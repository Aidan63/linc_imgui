package imgui;

import cpp.ConstCharStar;
import cpp.Pointer;

@:include('linc_imgui.h')
extern class ImDrag
{
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::DragFloat')  static function dragFloat(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _power : Float) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::DragFloat2') static function dragFloat2(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _power : Float) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::DragFloat3') static function dragFloat3(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _power : Float) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::DragFloat4') static function dragFloat4(_label : ConstCharStar, _v : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _power : Float) : Bool;

    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Float>, _vCurrentMax : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Float>, _vCurrentMax : Pointer<Float>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Float>, _vCurrentMax : Pointer<Float>, _vSpeed : Float, _vMin : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Float>, _vCurrentMax : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Float>, _vCurrentMax : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Float>, _vCurrentMax : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _displayFormatMax : ConstCharStar) : Bool {})
    @:native('ImGui::DragFloatRange2') static function dragFloatRange2(_label : ConstCharStar, _vCurrentMin : Pointer<Float>, _vCurrentMax : Pointer<Float>, _vSpeed : Float, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _displayFormatMax : ConstCharStar, _power : Float) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::DragInt')  static function dragInt(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::DragInt2') static function dragInt2(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::DragInt3')  static function dragInt3(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::DragInt4') static function dragInt4(_label : ConstCharStar, _v : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Int>, _vCurrentMax : Pointer<Int>) : Bool {})
    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Int>, _vCurrentMax : Pointer<Int>, _vSpeed : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Int>, _vCurrentMax : Pointer<Int>, _vSpeed : Float, _vMin : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Int>, _vCurrentMax : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _vCurrentMin : Pointer<Int>, _vCurrentMax : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::DragIntRange2') static function dragIntRange2(_label : ConstCharStar, _vCurrentMin : Pointer<Int>, _vCurrentMax : Pointer<Int>, _vSpeed : Float, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar, _displayFormatMax : ConstCharStar) : Bool;
}
