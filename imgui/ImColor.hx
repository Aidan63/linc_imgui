package imgui;

import imgui.util.ImVec4;
import imgui.util.ImVec2;

@:include('linc_imgui.h')
extern class ImColor
{
    @:overload(function(_label : String, _color : Array<Float>) : Bool {})
    @:native('ImGui::linc::ColorEdit3') static function colorEdit3(_label : String, _color : Array<Float>, _flags : ImGuiColorEditFlags) : Bool;

    @:overload(function(_label : String, _color : Array<Float>) : Bool {})
    @:native('ImGui::linc::ColorEdit4') static function colorEdit4(_label : String, _color : Array<Float>, _flags : ImGuiColorEditFlags) : Bool;

    @:overload(function(_label : String, _color : Array<Float>) : Bool {})
    @:native('ImGui::linc::ColorPicker3') static function colorPicker3(_label : String, _color : Array<Float>, _flags : ImGuiColorEditFlags) : Bool;

    @:overload(function(_label : String, _color : Array<Float>) : Bool {})
    @:overload(function(_label : String, _color : Array<Float>, _flags : ImGuiColorEditFlags) : Bool {})
    @:native('ImGui::linc::ColorPicker4') static function colorPicker4(_label : String, _color : Array<Float>, _flags : ImGuiColorEditFlags, _refCol : Float) : Bool;

    @:overload(function(_label : String, _color : ImVec4) : Bool {})
    @:overload(function(_label : String, _color : ImVec4, _flags : ImGuiColorEditFlags) : Bool {})
    @:native('ImGui::linc::ColorButton') static function colorButton(_label : String, _color : ImVec4, _flags : ImGuiColorEditFlags, _size : ImVec2) : Bool;

    @:native('ImGui::linc::SetColorEditOptions') static function setColorEditOptions(_flags : ImGuiColorEditFlags) : Bool;
}

/**
  Enumeration for ColorEdit3() / ColorEdit4() / ColorPicker3() / ColorPicker4() / ColorButton()
 */
@:enum abstract ImGuiColorEditFlags(Int) from Int to Int
{
    /**
      ColorEdit, ColorPicker, ColorButton: ignore Alpha component (read 3 components from the input pointer).
     */
    var NoAlpha = 1 << 1;

    /**
      ColorEdit: disable picker when clicking on colored square.
     */
    var NoPicker = 1 << 2;

    /**
      ColorEdit: disable toggling options menu when right-clicking on inputs/small preview.
     */
    var NoOptions = 1 << 3;

    /**
      ColorEdit, ColorPicker: disable colored square preview next to the inputs. (e.g. to show only the inputs)
     */
    var NoSmallPreview = 1 << 4;

    /**
      ColorEdit, ColorPicker: disable inputs sliders/text widgets (e.g. to show only the small preview colored square).
     */
    var NoInputs = 1 << 5;

    /**
      ColorEdit, ColorPicker, ColorButton: disable tooltip when hovering the preview.
     */
    var NoTooltip = 1 << 6;

    /**
      ColorEdit, ColorPicker: disable display of inline text label (the label is still forwarded to the tooltip and picker).
     */
    var NoLabel = 1 << 7;

    /**
      ColorPicker: disable bigger color preview on right side of the picker, use small colored square preview instead.
     */
    var NoSidePreview = 1 << 8;

    // User Options (right-click on widget to change some of them). You can set application defaults using SetColorEditOptions(). The idea is that you probably don't want to override them in most of your calls, let the user choose and/or call SetColorEditOptions() during startup.

    /**
      ColorEdit, ColorPicker: show vertical alpha bar/gradient in picker.
     */
    var AlphaBar = 1 << 9;

    /**
      ColorEdit, ColorPicker, ColorButton: display preview as a transparent color over a checkerboard, instead of opaque.
     */
    var AlphaPreview = 1 << 10;

    /**
      ColorEdit, ColorPicker, ColorButton: display half opaque / half checkerboard, instead of opaque.
     */
    var AlphaPreviewHalf = 1 << 11;

    /**
      (WIP) ColorEdit: Currently only disable 0.0f..1.0f limits in RGBA edition (note: you probably want to use ImGuiColorEditFlags_Float flag as well).
     */
    var HDR = 1 << 12;

    /**
      ColorEdit: choose one among RGB/HSV/HEX. ColorPicker: choose any combination using RGB/HSV/HEX.
     */
    var RGB = 1 << 13;
    var HSV = 1 << 14;
    var HEX = 1 << 15;

    /**
      ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0..255. 
     */
    var Uint8 = 1 << 16;

    /**
      ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0.0f..1.0f floats instead of 0..255 integers. No round-trip of value via integers.
     */
    var Float = 1 << 17;

    /**
      ColorPicker: bar for Hue, rectangle for Sat/Value.
     */
    var PickerHueBar = 1 << 18;

    /**
      ColorPicker: wheel for Hue, triangle for Sat/Value.
     */
    var PickerHueWheel = 1 << 19;
}
