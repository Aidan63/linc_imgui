package imgui.draw;

import cpp.Pointer;
import cpp.Reference;

typedef ImDrawIdx = Int;

@:keep
@:include('linc_imgui.h')
@:native('ImDrawList')
@:structAccess
@:unreflective
extern class ImDrawList
{
    @:native('ImGui::linc::GetVertexBufferSize') static function getVertexBufferSize(_drawData : Pointer<ImDrawList>) : Int;
    @:native('ImGui::linc::GetIndexBufferSize') static function getIndexBufferSize(_drawData : Pointer<ImDrawList>) : Int;
    @:native('ImGui::linc::GetCmdSize') static function getCmdSize(_drawData : Pointer<ImDrawList>) : Int;

    @:native('ImGui::linc::GetVertexPtr') static function getVertexPointer(_drawData : Pointer<ImDrawList>, _index : Int) : Pointer<ImDrawVert>;
    @:native('ImGui::linc::GetIndexPtr') static function getIndexPtr(_drawData : Pointer<ImDrawList>, _index : Int) : ImDrawIdx;
    @:native('ImGui::linc::GetCmdPtr') static function getCmdPtr(_drawData : Pointer<ImDrawList>, _index : Int) : Pointer<ImDrawCmd>;
}
