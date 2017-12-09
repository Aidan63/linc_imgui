package imgui.draw;

import cpp.Pointer;
import imgui.util.ImVec2;

@:keep
@:include('linc_imgui.h')
@:native('ImDrawData')
@:structAccess
@:unreflective
extern class ImDrawData
{
    public var Valid : Bool;
    public var CmdLists : Pointer<Pointer<ImDrawList>>;
    public var CmdListsCount : Int;
    public var TotalVtxCount : Int;
    public var TotalIdxCount : Int;

    @:native('ImDrawData') static function create() : Pointer<ImDrawData>;
    @:native('ImGui::linc::GetDrawList') static function getDrawList(_data : Pointer<ImDrawData>, _index : Int) : Pointer<ImDrawList>;
    @:native('DeIndexAllBuffers') private function _deIndexAllBuffers() : Void;
    @:native('ScaleClipRects') private function _scaleClipRects(_scale : ImVec2) : Void;

    static inline function deIndexAllBuffers(_drawData : Pointer<ImDrawData>) : Void {
        _drawData.ref._deIndexAllBuffers();
    }
    static inline function scaleClipRects(_drawData : Pointer<ImDrawData>, _scale : ImVec2) : Void {
        _drawData.ref._scaleClipRects(_scale);
    }
}
