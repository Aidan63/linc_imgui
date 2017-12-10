package imgui;

import cpp.Reference;
import imgui.ImGui;
import imgui.util.ImVec2;

@:keep
@:include('linc_imgui.h')
extern class ImLayout
{
    /**
      separator, generally horizontal. inside a menu bar or in horizontal layout mode, this becomes a vertical separator.
     */
    @:native('ImGui::Separator') static function separator() : Void;

    /**
      call between widgets or groups to layout them horizontally
     */
    @:native('ImGui::SameLine') static function sameLine(_posX : Float = 0, _spacingW : Float = -1) : Void;

    /**
      undo a SameLine()
     */
    @:native('ImGui::NewLine') static function newLine() : Void;

    /**
      add vertical spacing
     */
    @:native('ImGui::Spacing') static function spacing() : Void;

    /**
      add a dummy item of given size
     */
    @:native('ImGui::Dummy') static function dummy(_size : Reference<ImVec2>) : Void;

    /**
      move content position toward the right, by style.IndentSpacing or indent_w if >0
     */
    @:native('ImGui::Indent') static function indent(_indexW : Float = 0) : Void;

    /**
      move content position back to the left, by style.IndentSpacing or indent_w if >0
     */
    @:native('ImGui::Unindent') static function unindent(_indentW : Float = 0) : Void;

    /**
      lock horizontal starting position + capture group bounding box into one "item" (so you can use IsItemHovered() or layout primitives such as SameLine() on whole group, etc.)
     */
    @:native('ImGui::BeginGroup') static function beginGroup() : Void;
    @:native('ImGui::EndGroup') static function endGroup() : Void;

    /**
      cursor position is relative to window position
     */
    @:native('ImGui::GetCursorPos') static function getCursorPos() : ImVec2;
    @:native('ImGui::GetCursorPosX') static function getCursorPosX() : Float;
    @:native('ImGui::GetCursorPosY') static function getCursorPosY() : Float;
    @:native('ImGui::SetCursorPos') static function setCursorPos(_localPos : Reference<ImVec2>) : Void;
    @:native('ImGui::SetCursorPosX') static function setCursorPosX(_x : Float) : Void;
    @:native('ImGui::SetCursorPosY') static function setCursorPosY(_y : Float) : Void;

    /**
      initial cursor position
     */
    @:native('ImGui::GetCursorStartPos') static function getCursorStartPos() : ImVec2;

    /**
      cursor position in absolute screen coordinates [0..io.DisplaySize] (useful to work with ImDrawList API)
     */
    @:native('ImGui::GetCursorScreenPos') static function getCursorScreenPos() : ImVec2;

    /**
      cursor position in absolute screen coordinates [0..io.DisplaySize]
     */
    @:native('ImGui::SetCursorScreenPos') static function setCursorScreenPos(_pos : Reference<ImVec2>) : Void;

    /**
      vertically align/lower upcoming text to FramePadding.y so that it will aligns to upcoming widgets (call if you have text on a line before regular widgets)
     */
    @:native('ImGui::AlignTextToFramePadding') static function alignTextToFramePadding() : Void;

    /**
      height of font == GetWindowFontSize()
     */
    @:native('ImGui::GetTextLineHeight') static function getTextLineHeight() : Float;

    /**
      distance (in pixels) between 2 consecutive lines of text == GetWindowFontSize() + GetStyle().ItemSpacing.y
     */
    @:native('ImGui::GetTextLineHeightWithSpacing') static function getTextLineHeightWithSpacing() : Float;

    /**
      distance (in pixels) between 2 consecutive lines of standard height widgets == GetWindowFontSize() + GetStyle().FramePadding.y*2 + GetStyle().ItemSpacing.y
     */
    @:native('ImGui::GetItemsLineHeightWithSpacing') static function getItemsLineHeightWithSpacing() : Float;

}
