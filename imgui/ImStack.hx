package imgui;

import imgui.ImGui;
import imgui.font.ImFont;
import imgui.util.ImVec2;
import imgui.util.ImVec4;
import cpp.Pointer;
import cpp.Reference;

@:keep
@:include('linc_imgui.h')
@:structAccess
@:unreflective
extern class ImStack
{
    /**
      use NULL as a shortcut to push default font
     */
    @:native('PushFont') static function pushFont(_font : Pointer<ImFont>) : Void;
    @:native('PopFont') static function popFont() : Void;
    @:native('PushStyleColor') static function pushStyleColorVal(_idx : ImGuiCol, col : ImU32) : Void;
    @:native('PushStyleColor') static function pushStyleColorVec(_idx : ImGuiCol, col : Reference<ImVec4>) : Void;
    @:native('PopStyleColor') static function popStyleColor(_count : Int = 1) : Void;
    @:native('PushStyleVar') static function pushStyleVarVal(_idx : ImGuiStyleVar, _val : Float) : Void;
    @:native('PushStyleVar') static function pushStyleVarVec(_idx : ImGuiStyleVar, _val : Reference<ImVec2>) : Void;
    @:native('PopStyleVar') static function popStyleVar(_count : Int = 1) : Void;

    /**
      retrieve style color as stored in ImGuiStyle structure. use to feed back into PushStyleColor(), otherwhise use GetColorU32() to get style color + style alpha.
     */
    @:native('GetStyleColorVec4') static function getStyleColorVec4(_idx : ImGuiCol) : Reference<ImVec4>;

    /**
      get current font
     */
    @:native('GetFont') static function getFont() : Pointer<ImVec2>;

    /**
      get current font size (= height in pixels) of current font with current scale applied
     */
    @:native('GetFontSize') static function getFontSize() : Float;

    /**
      get UV coordinate for a while pixel, useful to draw custom shapes via the ImDrawList API
     */
    @:native('GetFontTexUvWhitePixel') static function getFontTexUvWhitePixel() : ImVec2;

    /**
      retrieve given style color with style alpha applied and optional extra alpha multiplier
     */
    @:native('GetColorU32') static function getColorU32(_idx : ImGuiCol, _alphaMul : Float = 1) : ImU32;

    /**
      retrieve given color with style alpha applied
     */
    @:native('GetColorU32') static function getColorU32(_col : Reference<ImVec4>) : ImU32;

    /**
      retrieve given color with style alpha applied
     */
    @:native('GetColorU32') static function getColorU32(_col : ImU32) : ImU32;

    // Parameters stacks (current window)

    /**
      width of items for the common item+label case, pixels. 0.0f = default to ~2/3 of windows width, >0.0f: width in pixels,
      <0.0f align xx pixels to the right of window (so -1.0f always align width to the right side)
     */
    @:native('PushItemWidth') static function pushItemWidth(_itemWidth : Float) : Void;
    @:native('PopItemWidth') static function popItemWidth() : Void;

    /**
      width of item given pushed settings and current cursor position
     */
    @:native('CalcItemWidth') static function calcItemWidth() : Float;

    /**
      word-wrapping for Text*() commands. < 0.0f: no wrapping; 0.0f: wrap to end of window (or column);
      > 0.0f: wrap at 'wrap_pos_x' position in window local space
     */
    @:native('PushTextWrapPos') static function pushTextWrapPos(_wrapPosX = 0) : Void;
    @:native('PopTextWrapPos') static function popTextWrapPos() : Void;

    /**
      allow focusing using TAB/Shift-TAB, enabled by default but you can disable it for certain widgets
     */
    @:native('PushAllowKeyboardFocus') static function pushAllowKeyboardFocus(_allowKeyboardFocus) : Void;
    @:native('PopAllowKeyboardFocus') static function popAllowKeyboardFocus() : Void;

    /**
      in 'repeat' mode, Button*() functions return repeated true in a typematic manner (using io.KeyRepeatDelay/io.KeyRepeatRate setting).
      
      Note that you can call IsItemActive() after any Button() to tell if the button is held in the current frame.
     */
    @:native('PushButtonRepeat') static function pushButtonRepeat(_repeat : Bool) : Void;
    @:native('PopButtonRepeat') static function popButtonRepeat() : Void;
}
