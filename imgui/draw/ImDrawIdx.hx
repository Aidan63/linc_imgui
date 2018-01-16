package imgui.draw;

import imgui.util.ImVector;

typedef ImDrawIdx = cpp.UInt16;

@:native('ImVector<ImDrawIdx>')
@:structAccess
extern class ImDrawIdxVector extends ImVector<ImDrawIdx>
{
  //
}
