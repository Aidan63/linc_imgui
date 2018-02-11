package imgui.draw;

import imgui.draw.ImDrawCmd;
import imgui.draw.ImDrawIdx;

@:include('linc_imgui.h')
@:native('ImDrawChannel')
@:unreflective
@:structAccess
extern class ImDrawChannel
{
    @:native('CmdBuffer') public var cmdBuffer : ImDrawCmdVector;
    @:native('IdxBuffer') public var idxBuffer : ImDrawIdxVector;
}
