package imgui;

import cpp.ConstCharStar;
import cpp.ConstPointer;
import cpp.Pointer;
import cpp.RawPointer;
import cpp.RawConstPointer;
import cpp.Reference;
import cpp.Callable;
import imgui.ImGui;
import imgui.util.ImVec2;
import imgui.util.ImVec4;

@:include('linc_imgui.h')
extern class ImWidgets
{
    // Basic main widget types.
    @:native('ImGui::SmallButton')     static function smallButton(_label : String) : Bool;
    @:native('ImGui::InvisibleButton') static function invisibleButton(_strId : String, _size : ImVec2 = null) : Bool;

    @:overload(function(_label : String) : Bool {})
    @:native('ImGui::Button') static function button(_label : String, _size : ImVec2) : Bool;

    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2) : Void {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2) : Void {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2) : Void {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _tintCol : ImVec4) : Void {})
    @:native('ImGui::Image') static function image(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _tintCol : ImVec4, _borderCol : ImVec4) : Void;

    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2) : Bool {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2) : Bool {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2) : Bool {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _framePadding : Int) : Bool {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _framePadding : Int, _bgCol : ImVec4) : Bool {})
    @:native('ImGui::ImageButton') static function imageButton(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _framePadding : Int, _bgCol : ImVec4, _tintCol : ImVec4) : Bool;

    @:native('ImGui::linc::Checkbox') static function checkbox(_label : String, _v : Bool) : Bool;

    @:overload(function(_label : String, _active : Bool) : Bool {})
    @:native('ImGui::linc::RadioButton') static function radioButton(_label : String, _v : Int, _vButton : Int) : Bool;

    @:overload(function(_label : String, _values : Array<Float>) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float, _scaleMax : Float) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2) : Void {})
    @:native('ImGui::linc::PlotLines') static function plotLines(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2, _stride : Int) : Void;

    @:overload(function(_label : String, _values : Array<Float>) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float, _scaleMax : Float) : Void {})
    @:overload(function(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2) : Void {})
    @:native('ImGui::linc::PlotHistogram') static function plotHistogram(_label : String, _values : Array<Float>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2, _stride : Int) : Void;

    @:overload(function(_fraction : Float) : Void {})
    @:overload(function(_fraction : Float, _sizeArg : ImVec2) : Void {})
    @:native('ImGui::ProgressBar') static function progressBar(_fraction : Float, _sizeArg : ImVec2, _overlay : String) : Void;
}
