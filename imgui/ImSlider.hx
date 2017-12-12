package imgui;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.Reference;
import imgui.util.ImVec2;

@:include('linc_imgui.h')
extern class ImSlider
{
    @:overload(function(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::SliderFloat') static function sliderFloat(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _power : Float) : Bool;
    
    @:overload(function(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::SliderFloat2') static function sliderFloat2(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _power : Float) : Bool;

    @:overload(function(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::SliderFloat3') static function sliderFloat3(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _power : Float) : Bool;

    @:overload(function(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::SliderFloat4') static function sliderFloat4(_label : ConstCharStar, v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _power : Float) : Bool;

    @:overload(function(_label : ConstCharStar, _vRad : Pointer<Float>) : Bool {})
    @:overload(function(_label : ConstCharStar, _vRad : Pointer<Float>, _vDegreesMin : Float) : Bool {})
    @:native('ImGui::SliderAngle') static function sliderAngle(_label : ConstCharStar, _vRad : Pointer<Float>, _vDegreesMin : Float, _vDegreesMax : Float) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::SliderInt') static function sliderInt(_label : ConstCharStar, _v : Pointer<Int>, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::SliderInt2') static function sliderInt2(_label : ConstCharStar, _v : Pointer<Int>, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;
    
    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::SliderInt3') static function sliderInt3(_label : ConstCharStar, _v : Pointer<Int>, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : ConstCharStar, _v : Pointer<Int>, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::SliderInt4') static function sliderInt4(_label : ConstCharStar, _v : Pointer<Int>, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : ConstCharStar, _size : Reference<ImVec2>, _v : Pointer<Float>, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : ConstCharStar, _size : Reference<ImVec2>, _v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::VSliderFloat') static function vSliderFloat(_label : ConstCharStar, _size : Reference<ImVec2>, _v : Pointer<Float>, _vMin : Float, _vMax : Float, _displayFormat : ConstCharStar, _power : Float) : Bool;

    @:overload(function(_label : ConstCharStar, _size : Reference<ImVec2>, _v : Pointer<Int>, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::VSliderInt') static function vSliderInt(_label : ConstCharStar, _size : Reference<ImVec2>, _v : Pointer<Int>, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;
}
