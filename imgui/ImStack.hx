package imgui;

import imgui.ImGui;
import imgui.font.ImFont;
import imgui.util.ImVec2;
import imgui.util.ImVec4;
import cpp.Pointer;
import cpp.Reference;

@:include('linc_imgui.h')
extern class ImStack
{
    /**
      use NULL as a shortcut to push default font
     */
    @:native('ImGui::PushFont') static function pushFont(_font : Pointer<ImFont>) : Void;
    @:native('ImGui::PopFont') static function popFont() : Void;
    @:native('ImGui::PushStyleColor') static function pushStyleColorVal(_idx : ImGuiCol, col : ImU32) : Void;
    @:native('ImGui::PushStyleColor') static function pushStyleColorVec(_idx : ImGuiCol, col : Reference<ImVec4>) : Void;
    @:native('ImGui::PopStyleColor') static function popStyleColor(_count : Int = 1) : Void;
    @:native('ImGui::PushStyleVar') static function pushStyleVarVal(_idx : ImGuiStyleVar, _val : Float) : Void;
    @:native('ImGui::PushStyleVar') static function pushStyleVarVec(_idx : ImGuiStyleVar, _val : Reference<ImVec2>) : Void;
    @:native('ImGui::PopStyleVar') static function popStyleVar(_count : Int = 1) : Void;

    /**
      retrieve style color as stored in ImGuiStyle structure. use to feed back into PushStyleColor(), otherwhise use GetColorU32() to get style color + style alpha.
     */
    @:native('ImGui::GetStyleColorVec4') static function getStyleColorVec4(_idx : ImGuiCol) : Reference<ImVec4>;

    /**
      get current font
     */
    @:native('ImGui::GetFont') static function getFont() : Pointer<ImVec2>;

    /**
      get current font size (= height in pixels) of current font with current scale applied
     */
    @:native('ImGui::GetFontSize') static function getFontSize() : Float;

    /**
      get UV coordinate for a while pixel, useful to draw custom shapes via the ImDrawList API
     */
    @:native('ImGui::GetFontTexUvWhitePixel') static function getFontTexUvWhitePixel() : ImVec2;

    /**
      retrieve given style color with style alpha applied and optional extra alpha multiplier
     */
    @:native('ImGui::GetColorU32') static function getColorU32(_idx : ImGuiCol, _alphaMul : Float = 1) : ImU32;

    /**
      retrieve given color with style alpha applied
     */
    @:native('ImGui::GetColorU32') static function getColorU32(_col : Reference<ImVec4>) : ImU32;

    /**
      retrieve given color with style alpha applied
     */
    @:native('ImGui::GetColorU32') static function getColorU32(_col : ImU32) : ImU32;

    // Parameters stacks (current window)

    /**
      width of items for the common item+label case, pixels. 0.0f = default to ~2/3 of windows width, >0.0f: width in pixels,
      <0.0f align xx pixels to the right of window (so -1.0f always align width to the right side)
     */
    @:native('ImGui::PushItemWidth') static function pushItemWidth(_itemWidth : Float) : Void;
    @:native('ImGui::PopItemWidth') static function popItemWidth() : Void;

    /**
      width of item given pushed settings and current cursor position
     */
    @:native('ImGui::CalcItemWidth') static function calcItemWidth() : Float;

    /**
      word-wrapping for Text*() commands. < 0.0f: no wrapping; 0.0f: wrap to end of window (or column);
      > 0.0f: wrap at 'wrap_pos_x' position in window local space
     */
    @:native('ImGui::PushTextWrapPos') static function pushTextWrapPos(_wrapPosX = 0) : Void;
    @:native('ImGui::PopTextWrapPos') static function popTextWrapPos() : Void;

    /**
      allow focusing using TAB/Shift-TAB, enabled by default but you can disable it for certain widgets
     */
    @:native('ImGui::PushAllowKeyboardFocus') static function pushAllowKeyboardFocus(_allowKeyboardFocus) : Void;
    @:native('ImGui::PopAllowKeyboardFocus') static function popAllowKeyboardFocus() : Void;

    /**
      in 'repeat' mode, Button*() functions return repeated true in a typematic manner (using io.KeyRepeatDelay/io.KeyRepeatRate setting).
      
      Note that you can call IsItemActive() after any Button() to tell if the button is held in the current frame.
     */
    @:native('ImGui::PushButtonRepeat') static function pushButtonRepeat(_repeat : Bool) : Void;
    @:native('ImGui::PopButtonRepeat') static function popButtonRepeat() : Void;
}
