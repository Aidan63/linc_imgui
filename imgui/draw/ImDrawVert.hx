package imgui.draw;

import imgui.ImGui;
import imgui.util.ImVector;
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

@:native('ImVector<ImDrawVert>')
@:structAccess
@:unreflective
extern class ImVectorImDrawVert extends ImVector<ImDrawVert>
{
  @:native('ImVector<ImDrawIdx>') public static function create() : ImVectorImDrawVert;
}
