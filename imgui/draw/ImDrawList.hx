package imgui.draw;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.RawConstPointer;
import cpp.Reference;
import cpp.Callable;

typedef ImDrawIdx = cpp.UInt16;

@:keep
@:include('linc_imgui.h')
@:native('ImDrawList')
@:structAccess
@:unreflective
extern class ImDrawList
{
    @:native('ImVector<ImDrawCmd>' ) var CmdBuffer : Dynamic;
    @:native('ImVector<ImDrawIdx>' ) var IdxBuffer : Dynamic;
    @:native('ImVector<ImDrawVert>') var VtxBuffer : Dynamic;

    public inline function getCmdData() : cpp.RawPointer<ImDrawCmd> {
        return untyped __cpp__('{0}.CmdBuffer.Data', this);
    }
    public inline function getIdxData() : cpp.RawPointer<ImDrawIdx> {
        return untyped __cpp__('{0}.IdxBuffer.Data', this);
    }
    public inline function getVtxData() : cpp.RawPointer<ImDrawVert> {
        return untyped __cpp__('{0}.VtxBuffer.Data', this);
    }

    public inline function getCmdLength() : Int {
        return untyped __cpp__('{0}.CmdBuffer.Size', this);
    }
    public inline function getIdxLength() : Int {
        return untyped __cpp__('{0}.IdxBuffer.Size', this);
    }
    public inline function getVtxBuffer() : Int {
        return untyped __cpp__('{0}.VtxBuffer.Size', this);
    }

    // Advance
    @:native('AddCallback') function addCallback(_function : Callable<RawConstPointer<ImDrawList>->RawConstPointer<ImDrawCmd>->Void>, _userData : RawPointer<cpp.Void>) : Void;
    @:native('AddDrawCmd')  function addDrawCmd() : Void;
}
