package imgui.draw;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.RawConstPointer;
import cpp.Reference;
import cpp.Callable;
import imgui.ImGui;
import imgui.util.ImVec2;

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

    //------------//
    //            //
    // Primitives //
    //            //
    //------------//

    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void {})
    @:native('AddLine') function addLine(_a : ImVec2, _b : ImVec2, _col : ImU32, _thickness : Float) : Void;

    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void {})
    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float) : Void {})
    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float, _roundingCorners : ImDrawCornerFlags) : Void {})
    @:native('AddRect') function addRect(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float, _roundingCorners : ImDrawCornerFlags, _thickness : Float) : Void;

    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void {})
    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float) : Void {})
    @:native('AddRectFilled') function addRectFilled(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float, _roundingCorners : ImDrawCornerFlags) : Void;

    @:native('AddRectFilledMultiColor') function addRectFilledMultiColor(_a : ImVec2, _b : ImVec2, _colUprLeft : ImU32, _colUprRight : ImU32, _colBotLeft : ImU32, _colBotRight : ImU32) : Void;

    @:overload(function(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _col : ImU32) : Void {})
    @:native('AddQuad') function addQuad(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _col : ImU32, _thickness : Float) : Void;

    @:native('AddQuadFilled') function addQuadFilled(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _col : ImU32) : Void;

    @:overload(function(_a : ImVec2, _b : ImVec2, _c : ImVec2, _col : ImU32) : Void {})
    @:native('AddTriangle') function addTriangle(_a : ImVec2, _b : ImVec2, _c : ImVec2, _col : ImU32, _thickness : Float) : Void;

    @:native('AddTriangleFilled') function addTriangleFilled(_a : ImVec2, _b : ImVec2, _c : ImVec2, _col : ImU32) : Void;

    @:overload(function(_centre : ImVec2, _radius : Float, _col : ImU32) : Void {})
    @:overload(function(_centre : ImVec2, _radius : Float, _col : ImU32, _numSegments : Int) : Void {})
    @:native('AddCircle') function addCircle(_centre : ImVec2, _radius : Float, _col : ImU32, _numSegments : Int, _thickness : Float) : Void;

    @:overload(function(_centre : ImVec2, _radius : Float, _col : ImU32) : Void {})
    @:native('AddCircleFilled') function addCircleFilled(_centre : ImVec2, _radius : Float, _col : ImU32, _numSegments : Int) : Void;

    // Advance
    @:native('AddCallback') function addCallback(_function : Callable<RawConstPointer<ImDrawList>->RawConstPointer<ImDrawCmd>->Void>, _userData : RawPointer<cpp.Void>) : Void;
    @:native('AddDrawCmd')  function addDrawCmd() : Void;
}

@:enum abstract ImDrawCornerFlags(Int) from Int to Int
{
    var TopLeft     = 1 << 0;
    var TopRight    = 1 << 1;
    var BottomLeft  = 1 << 2;
    var BottomRight = 1 << 3;
    var Top    = TopLeft    | TopRight;
    var Bottom = BottomLeft | BottomRight;
    var left   = TopLeft    | BottomLeft;
    var right  = TopRight   | BottomRight;
    var All = 0xF;
}
