package imgui.draw;

import cpp.Float32;
import cpp.ConstPointer;
import cpp.RawPointer;
import cpp.RawConstPointer;
import cpp.Callable;
import imgui.ImGui;
import imgui.draw.ImDrawCmd;
import imgui.draw.ImDrawIdx;
import imgui.draw.ImDrawVert;
import imgui.font.ImFont;
import imgui.util.ImVec2;
import imgui.util.ImVec4;

@:keep
@:include('linc_imgui.h')
@:native('ImDrawList')
@:structAccess
@:unreflective
extern class ImDrawList
{
    @:native('CmdBuffer') public var cmdBuffer : ImVectorImDrawCmd;
    @:native('IdxBuffer') public var idxBuffer : ImVectorImDrawIdx;
    @:native('VtxBuffer') public var vtxBuffer : ImVectorImDrawVert;

    //------------//
    //            //
    // Primitives //
    //            //
    //------------//

    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void {})
    @:native('AddLine') function addLine(_a : ImVec2, _b : ImVec2, _col : ImU32, _thickness : Float32) : Void;

    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void {})
    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32) : Void {})
    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32, _roundingCorners : ImDrawCornerFlags) : Void {})
    @:native('AddRect') function addRect(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32, _roundingCorners : ImDrawCornerFlags, _thickness : Float32) : Void;

    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void {})
    @:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32) : Void {})
    @:native('AddRectFilled') function addRectFilled(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32, _roundingCorners : ImDrawCornerFlags) : Void;

    @:native('AddRectFilledMultiColor') function addRectFilledMultiColor(_a : ImVec2, _b : ImVec2, _colUprLeft : ImU32, _colUprRight : ImU32, _colBotLeft : ImU32, _colBotRight : ImU32) : Void;

    @:overload(function(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _col : ImU32) : Void {})
    @:native('AddQuad') function addQuad(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _col : ImU32, _thickness : Float32) : Void;

    @:native('AddQuadFilled') function addQuadFilled(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _col : ImU32) : Void;

    @:overload(function(_a : ImVec2, _b : ImVec2, _c : ImVec2, _col : ImU32) : Void {})
    @:native('AddTriangle') function addTriangle(_a : ImVec2, _b : ImVec2, _c : ImVec2, _col : ImU32, _thickness : Float32) : Void;

    @:native('AddTriangleFilled') function addTriangleFilled(_a : ImVec2, _b : ImVec2, _c : ImVec2, _col : ImU32) : Void;

    @:overload(function(_centre : ImVec2, _radius : Float32, _col : ImU32) : Void {})
    @:overload(function(_centre : ImVec2, _radius : Float32, _col : ImU32, _numSegments : Int) : Void {})
    @:native('AddCircle') function addCircle(_centre : ImVec2, _radius : Float32, _col : ImU32, _numSegments : Int, _thickness : Float32) : Void;

    @:overload(function(_centre : ImVec2, _radius : Float32, _col : ImU32) : Void {})
    @:native('AddCircleFilled') function addCircleFilled(_centre : ImVec2, _radius : Float32, _col : ImU32, _numSegments : Int) : Void;

    @:overload(function(_font : ConstPointer<ImFont>, _fontSize : Float32, _pos : ImVec2, _col : ImU32, _textBegin : String) : Void {})
    @:overload(function(_font : ConstPointer<ImFont>, _fontSize : Float32, _pos : ImVec2, _col : ImU32, _textBegin : String, _textEnd : String) : Void {})
    @:overload(function(_font : ConstPointer<ImFont>, _fontSize : Float32, _pos : ImVec2, _col : ImU32, _textBegin : String, _textEnd : String, _wrapWidth : Float32) : Void {})
    @:overload(function(_font : ConstPointer<ImFont>, _fontSize : Float32, _pos : ImVec2, _col : ImU32, _textBegin : String, _textEnd : String, _wrapWidth : Float32, _cpuFineClipRect : ImVec4) : Void {})
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

    @:overload(function(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _uvA : ImVec2, _uvB : ImVec2, _col : ImU32, _rounding : Float32) : Void {})
    @:native('AddImageRounded') function addImageRounded(_userTextureID : ImTextureID, _a : ImVec2, _b : ImVec2, _uvA : ImVec2, _uvB : ImVec2, _col : ImU32, _rounding : Float32, _roundingCorners : ImDrawCornerFlags) : Void;

    @:native('AddPolyline')         function addPolyline(_points : ConstPointer<ImVec2>, _numPoints : Int, col : ImU32, _closed : Bool, _thickness : Float32) : Void;
    @:native('AddConvexPolyFilled') function addConvexPolyFilled(_points : ConstPointer<ImVec2>, _numPoints : Int, _col : ImU32) : Void;

    @:overload(function(_pos0 : ImVec2, _cp0 : ImVec2, _cp1 : ImVec2, _pos1 : ImVec2, _col : ImU32, _thickness : Float32) : Void {})
    @:native('AddBezierCurve') function addBezierCurve(_pos0 : ImVec2, _cp0 : ImVec2, _cp1 : ImVec2, _pos1 : ImVec2, _col : ImU32, _thickness : Float32, _numSegments : Int) : Void;

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
    @:native('PathStroke') function pathStroke(_col : ImU32, _closed : Bool, _thickness : Float32) : Void;

    @:overload(function(_centre : ImVec2, _radius : Float32, _aMin : Float32, _aMax : Float32) : Void {})
    @:native('PathArcTo') function pathArcTo(_centre : ImVec2, _radius : Float32, _aMin : Float32, _aMax : Float32, _numSegments : Int) : Void;

    @:native('PathArcToFast') function pathArcToFast(_centre : ImVec2, _radius : Float32, _aMinOf12 : Int, _aMaxOf12 : Int) : Void;

    @:overload(function(_p1 : ImVec2, _p2 : ImVec2, _p3 : ImVec2, _numSegments : Int) : Void {})
    @:native('PathBezierCurveTo') function pathBezierCurveTo(_p1 : ImVec2, _p2 : ImVec2, _p3 : ImVec2, _numSegments : Int) : Void;

    @:overload(function(_rectMin : ImVec2, _rectMax : ImVec2) : Void {})
    @:overload(function(_rectMin : ImVec2, _rectMax : ImVec2, _rounding : Float32) : Void {})
    @:native('PathRect') function pathRect(_rectMin : ImVec2, _rectMax : ImVec2, _rounding : Float32, _roundingCornersFlags : ImDrawCornerFlags) : Void;

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
