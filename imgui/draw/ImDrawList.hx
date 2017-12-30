package imgui.draw;

import cpp.Pointer;
import cpp.ConstPointer;
import cpp.RawPointer;
import cpp.RawConstPointer;
import cpp.Reference;
import cpp.Callable;
import imgui.ImGui;
import imgui.util.ImVec2;
import imgui.util.ImVec4;
import imgui.font.ImFont;

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

    @:overload(function(_font : ConstPointer<ImFont>, _fontSize : Float, _pos : ImVec2, _col : ImU32, _textBegin : String) : Void {})
    @:overload(function(_font : ConstPointer<ImFont>, _fontSize : Float, _pos : ImVec2, _col : ImU32, _textBegin : String, _textEnd : String) : Void {})
    @:overload(function(_font : ConstPointer<ImFont>, _fontSize : Float, _pos : ImVec2, _col : ImU32, _textBegin : String, _textEnd : String, _wrapWidth : Float) : Void {})
    @:overload(function(_font : ConstPointer<ImFont>, _fontSize : Float, _pos : ImVec2, _col : ImU32, _textBegin : String, _textEnd : String, _wrapWidth : Float, _cpuFineClipRect : ImVec4) : Void {})
    @:overload(function(_pos : ImVec2, _col : ImU32, _textBegin : String) : Void {})
    @:native('AddText') function addText(_pos : ImVec2, _col : ImU32, _textBegin : String, _textEnd : String) : Void;

    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2) : Void {})
    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _uvA : ImVec2) : Void {})
    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _uvA : ImVec2, _uvB : ImVec2) : Void {})
    @:native('AddImage') function addImage(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _uvA : ImVec2, _uvB : ImVec2, _col : ImU32) : Void;

    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2) : Void {})
    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uvA : ImVec2) : Void {})
    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uvA : ImVec2, _uvB : ImVec2) : Void {})
    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uvA : ImVec2, _uvB : ImVec2, _uvC : ImVec2) : Void {})
    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uvA : ImVec2, _uvB : ImVec2, _uvC : ImVec2, _uvD : ImVec2) : Void {})
    @:native('AddImageQuad') function addImageQuad(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uvA : ImVec2, _uvB : ImVec2, _uvC : ImVec2, _uvD : ImVec2, _col : ImU32) : Void;

    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _uvA : ImVec2, _uvB : ImVec2, _col : ImU32, _rounding : Float) : Void {})
    @:native('AddImageRounded') function addImageRounded(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _uvA : ImVec2, _uvB : ImVec2, _col : ImU32, _rounding : Float, _roundingCorners : ImDrawCornerFlags) : Void;

    @:native('AddPolyline')         function addPolyline(_points : ConstPointer<ImVec2>, _numPoints : Int, col : ImU32, _closed : Bool, _thickness : Float) : Void;
    @:native('AddConvexPolyFilled') function addConvexPolyFilled(_points : ConstPointer<ImVec2>, _numPoints : Int, _col : ImU32) : Void;

    @:overload(function(_pos0 : ImVec2, _cp0 : ImVec2, _cp1 : ImVec2, _pos1 : ImVec2, _col : ImU32, _thickness : Float) : Void {})
    @:native('AddBezierCurve') function addBezierCurve(_pos0 : ImVec2, _cp0 : ImVec2, _cp1 : ImVec2, _pos1 : ImVec2, _col : ImU32, _thickness : Float, _numSegments : Int) : Void;

    //----------//
    //          //
    // Path API //
    //          //
    //----------//

    @:native('PathClear') function pathClear() : Void;
    @:native('PathLineTo') function pathLineTo(_pos : ImVec2) : Void;
    @:native('PathLineToMergeDuplicate') function pathLineToMergeDuplicate(_pos : ImVec2) : Void;
    @:native('PathFillConvex') function pathFillConvex(_col : ImU32) : Void;

    @:overload(function(_col : ImU32, _closed : Bool) : Void {})
    @:native('PathStroke') function pathStroke(_col : ImU32, _closed : Bool, _thickness : Float) : Void;

    @:overload(function(_centre : ImVec2, _radius : Float, _aMin : Float, _aMax : Float) : Void {})
    @:native('PathArcTo') function pathArcTo(_centre : ImVec2, _radius : Float, _aMin : Float, _aMax : Float, _numSegments : Int) : Void;

    @:native('PathArcToFast') function pathArcToFast(_centre : ImVec2, _radius : Float, _aMinOf12 : Int, _aMaxOf12 : Int) : Void;

    @:overload(function(_p1 : ImVec2, _p2 : ImVec2, _p3 : ImVec2, _numSegments : Int) : Void {})
    @:native('PathBezierCurveTo') function pathBezierCurveTo(_p1 : ImVec2, _p2 : ImVec2, _p3 : ImVec2, _numSegments : Int) : Void;

    @:overload(function(_rectMin : ImVec2, _rectMax : ImVec2) : Void {})
    @:overload(function(_rectMin : ImVec2, _rectMax : ImVec2, _rounding : Float) : Void {})
    @:native('PathRect') function pathRect(_rectMin : ImVec2, _rectMax : ImVec2, _rounding : Float, _roundingCornersFlags : ImDrawCornerFlags) : Void;

    //----------//
    //          //
    // Channels //
    //          //
    //----------//

    @:native('ChannelsSplit') function channelsSplit(_channelsCount : Int) : Void;
    @:native('ChannelsMerge') function channelsMerge() : Void;
    @:native('ChannelsSetCurrent') function channelsSetCurrent(_channelsIndex : Int) : Void;

    //---------//
    //         //
    // Advance //
    //         //
    //---------//

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
