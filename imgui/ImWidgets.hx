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
    @:native('ImGui::SmallButton')     static function smallButton(_label : ConstCharStar) : Bool;
    @:native('ImGui::InvisibleButton') static function invisibleButton(_strId : ConstCharStar, _size : Reference<ImVec2> = null) : Bool;

    @:overload(function(_label : ConstCharStar) : Bool {})
    @:native('ImGui::Button') static function button(_label : ConstCharStar, _size : Reference<ImVec2>) : Bool;

    @:overload(function(_userTextureId : String, _size : Reference<ImVec2>) : Void {})
    @:overload(function(_userTextureId : String, _size : Reference<ImVec2>, _uv0 : Reference<ImVec2>) : Void {})
    @:overload(function(_userTextureId : String, _size : Reference<ImVec2>, _uv0 : Reference<ImVec2>, _uv1 : Reference<ImVec2>) : Void {})
    @:overload(function(_userTextureId : String, _size : Reference<ImVec2>, _uv0 : Reference<ImVec2>, _uv1 : Reference<ImVec2>, _tintCol : Reference<ImVec4>) : Void {})
    @:native('ImGui::linc::Image') static function image(_userTextureId : String, _size : Reference<ImVec2>, _uv0 : Reference<ImVec2>, _uv1 : Reference<ImVec2>, _tintCol : Reference<ImVec4>, _borderCol : Reference<ImVec4>) : Void;

    @:overload(function(_userTextureId : String, _size : Reference<ImVec2>) : Bool {})
    @:overload(function(_userTextureId : String, _size : Reference<ImVec2>, _uv0 : Reference<ImVec2>) : Bool {})
    @:overload(function(_userTextureId : String, _size : Reference<ImVec2>, _uv0 : Reference<ImVec2>, _uv1 : Reference<ImVec2>) : Bool {})
    @:overload(function(_userTextureId : String, _size : Reference<ImVec2>, _uv0 : Reference<ImVec2>, _uv1 : Reference<ImVec2>, _framePadding : Int) : Bool {})
    @:overload(function(_userTextureId : String, _size : Reference<ImVec2>, _uv0 : Reference<ImVec2>, _uv1 : Reference<ImVec2>, _framePadding : Int, _bgCol : Reference<ImVec4>) : Bool {})
    @:native('ImGui::linc::ImageButton') static function imageButton(_userTextureId : String, _size : Reference<ImVec2>, _uv0 : Reference<ImVec2>, _uv1 : Reference<ImVec2>, _framePadding : Int, _bgCol : Reference<ImVec4>, _tintCol : Reference<ImVec4>) : Bool;

    @:native('ImGui::linc::Checkbox') static function checkbox(_label : String, _v : Bool) : Bool;

    @:overload(function(_label : String, _active : Bool) : Bool {})
    @:native('ImGui::linc::RadioButton') static function radioButton(_label : String, _v : Int, _vButton : Int) : Bool;

    @:overload(function(_label : ConstCharStar, _currentItem : Pointer<Int>, _items : Pointer<ConstCharStar>, _itemsCount : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _currentItem : Pointer<Int>, _items : Pointer<ConstCharStar>, _itemsCount : Int, _heightInItems : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _currentItem : Pointer<Int>, _itemsSeparatedByZeros : ConstCharStar) : Bool {})
    @:overload(function(_label : ConstCharStar, _currentItem : Pointer<Int>, _itemsSeparatedByZeros : ConstCharStar, _heightInItems : Int) : Bool {})
    @:native('ImGui::Combo') static function combo(_label : ConstCharStar, _currentItem : Pointer<Int>, _itemsGetter : Callable<RawPointer<cpp.Void>->Int->RawPointer<ConstCharStar>->Bool>, _data : RawPointer<cpp.Void>, _itemsCount : Int, _heightInItems : Int) : Bool;

    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2) : Void {})
    @:native('ImGui::PlotLines') static function plotLines(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2, _stride : Int) : Void;

    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int, overlayText : ConstCharStar) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int, overlayText : ConstCharStar, _scaleMin : Float) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int, overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float) : Void {})
    @:overload(function(_label : ConstCharStar, _valuesGetter : Callable<RawPointer<cpp.Void>->Int->Float>, _data : RawPointer<cpp.Void>, _valuesCount : Int, _valuesOffset : Int, overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float) : Void {})
    @:overload(function(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2) : Void {})
    @:native('ImGui::PlotHistogram') static function plotHistogram(_label : ConstCharStar, _values : ConstPointer<Float>, _valuesCount : Int, _valuesOffset : Int, _overlayText : ConstCharStar, _scaleMin : Float, _scaleMax : Float, _graphSize : ImVec2, _stride : Int) : Void;

    @:overload(function(_fraction : Float) : Void {})
    @:overload(function(_fraction : Float, _sizeArg : Reference<ImVec2>) : Void {})
    @:native('ImGui::ProgressBar') static function progressBar(_fraction : Float, _sizeArg : Reference<ImVec2>, _overlay : ConstCharStar) : Void;
}
