package imgui.draw;

import imgui.ImGui;
import imgui.util.ImVec2;

@:keep
@:include('linc_imgui.h')
@:native('ImDrawVert')
@:structAccess
@:unreflective
extern class ImDrawVert
{
    public var pos : ImVec2;
    public var uv : ImVec2;
    public var col : ImU32;
}
