package imgui.draw;

import imgui.ImGui;
import imgui.util.ImVec4;
import cpp.Pointer;
import cpp.ConstPointer;
import cpp.Void;
import cpp.Callable;

@:keep
@:include('linc_imgui.h')
@:native('ImDrawCmd')
@:structAccess
@:unreflective
extern class ImDrawCmd
{
    /**
      Number of indices (multiple of 3) to be rendered as triangles.
      
      Vertices are stored in the callee ImDrawList's vtx_buffer[] array, indices in idx_buffer[].
     */
    public var ElemCount : UInt;

    /**
      Clipping rectangle (x1, y1, x2, y2)
     */
    public var ClipRect : ImVec4;

    /**
      User-provided texture ID. Set by user in ImfontAtlas::SetTexID() for fonts or passed to Image*() functions.
      
      Ignore if never using images or multiple fonts atlas.
     */
    public var TextureId : ImTextureID;

    /**
      If != NULL, call the function instead of rendering the vertices. clip_rect and texture_id will be set normally.
     */
    public var UserCallback : Callable<ConstPointer<ImDrawList>->ConstPointer<ImDrawCmd>->Void>;

    /**
      The draw callback code can access this.
     */
    public var UserCallbackData : Pointer<Void>;
}
