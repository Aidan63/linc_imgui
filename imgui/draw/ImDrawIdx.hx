package imgui.draw;

import imgui.util.ImVector;

typedef ImDrawIdx = cpp.UInt16;

@:native('ImVector<ImDrawIdx>')
@:structAccess
@:unreflective
extern class ImVectorImDrawIdx extends ImVector<ImDrawIdx>
{
  @:native('ImVector<ImDrawIdx>') public static function create() : ImVectorImDrawIdx;
}
