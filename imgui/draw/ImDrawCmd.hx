package imgui.draw;

import cpp.Pointer;
import cpp.Void;
import imgui.util.ImVec4;

@:keep
@:include('linc_imgui.h')
@:native('ImDrawCmd')
@:structAccess
@:unreflective
extern class ImDrawCmd
{
    public var ElemCount : Int;
    public var ClipRect : ImVec4;
    public var TextureId : Pointer<Void>;
}
