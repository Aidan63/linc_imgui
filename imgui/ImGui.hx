package imgui;

import cpp.Pointer;
import cpp.Reference;
import imgui.draw.ImDrawData;

// Typedefs and Enumerations
typedef ImU32 = UInt;
typedef ImGuiID = UInt;
typedef ImWchar = cpp.UInt16;
typedef ImTextureID = Pointer<Void>;
typedef ImGuiCol = Int;
typedef ImGuiStyleVar = Int;
typedef ImGuiKey = Int;
typedef ImGuiMouseCursor = Int;
typedef ImGuiCond = Int;
typedef ImDrawCornerFlags = Int;
typedef ImGuiColorEditFlags = Int;
typedef ImGuiWindowFlags = Int;
typedef ImGuiColumnsFlags = Int;
typedef ImGuiInputTextFlags = Int;
typedef ImGuiSelectableFlags = Int;
typedef ImGuiTreeNodeFlags = Int;
typedef ImGuiHoveredFlags = Int;

@:keep
@:include('linc_imgui.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('imgui'))
#end
extern class ImGui
{
    // Misc
    @:native('ImGui::linc::GetVoidStar') static function getVoidStar(_ptr : Pointer<cpp.Void>) : cpp.ConstCharStar;

    // Main
    @:native('ImGui::GetIO') static function getIO() : Reference<ImGuiIO>;
    @:native('ImGui::GetStyle') static function getStyle() : Reference<ImGuiStyle>;
    @:native('ImGui::GetDrawData') static function getDrawData() : Pointer<ImDrawData>;
    @:native('ImGui::NewFrame') static function newFrame() : Void;
    @:native('ImGui::Render') static function render() : Void;
    @:native('ImGui::EndFrame') static function endFrame() : Void;
    @:native('ImGui::Shutdown') static function shutdown() : Void;

    // Demo / Debug / Info
    @:native('ImGui::ShowTestWindow') static function showTestWindow(_open : Pointer<Bool> = null) : Void;
    @:native('ImGui::ShowMetricsWindow') static function showMetricsWindow(_open : Pointer<Bool> = null) : Void;
    @:native('ImGui::ShowStyleEditor') static function showStyleEditor(_style : Pointer<ImGuiStyle> = null) : Void;
    @:native('ImGui::ShowUserGuide') static function showUserGuide() : Void;

    // Tmp for testing?
    @:native('ImGui::Begin') static function begin(_name : cpp.ConstCharStar) : Void;
    @:native('ImGui::End') static function end() : Void;
}
