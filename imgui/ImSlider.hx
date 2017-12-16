package imgui;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.Reference;
import imgui.util.ImVec2;

@:include('linc_imgui.h')
extern class ImSlider
{
    @:overload(function(_label : String, v : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, v : Float, _vMin : Float, _vMax : Float, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::SliderFloat') static function sliderFloat(_label : String, v : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _power : Float) : Bool;
    
    @:overload(function(_label : String, v : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, v : Float, _vMin : Float, _vMax : Float, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::SliderFloat2') static function sliderFloat2(_label : String, v : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _power : Float) : Bool;

    @:overload(function(_label : String, v : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, v : Float, _vMin : Float, _vMax : Float, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::SliderFloat3') static function sliderFloat3(_label : String, v : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _power : Float) : Bool;

    @:overload(function(_label : String, v : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, v : Float, _vMin : Float, _vMax : Float, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::SliderFloat4') static function sliderFloat4(_label : String, v : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _power : Float) : Bool;

    @:overload(function(_label : String, _vRad : Float) : Bool {})
    @:overload(function(_label : String, _vRad : Float, _vDegreesMin : Float) : Bool {})
    @:native('ImGui::linc::SliderAngle') static function sliderAngle(_label : String, _vRad : Float, _vDegreesMin : Float, _vDegreesMax : Float) : Bool;

    @:overload(function(_label : String, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::SliderInt') static function sliderInt(_label : String, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::SliderInt2') static function sliderInt2(_label : String, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;
    
    @:overload(function(_label : String, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::SliderInt3') static function sliderInt3(_label : String, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::SliderInt4') static function sliderInt4(_label : String, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _size : ImVec2, _v : Float, _vMin : Float, _vMax : Float) : Bool {})
    @:overload(function(_label : String, _size : ImVec2, _v : Float, _vMin : Float, _vMax : Float, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::VSliderFloat') static function vSliderFloat(_label : String, _size : ImVec2, _v : Float, _vMin : Float, _vMax : Float, _displayFormat : String, _power : Float) : Bool;

    @:overload(function(_label : String, _size : ImVec2, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::VSliderInt') static function vSliderInt(_label : String, _size : ImVec2, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;
}
