
import cpp.Pointer;
import imgui.ImGui;
import imgui.draw.ImDrawData;
import imgui.draw.ImDrawList;
import imgui.font.ImFontAtlas;
import imgui.util.ImVec2;

class Test
{
    public static function main()
    {
        new Test();
    }

    public function new()
    {
        var io = ImGui.getIO();
        io.DisplaySize = ImVec2.create(640, 480);
        
        var width = 0;
        var height = 0;
        var pixels = ImFontAtlas.getTexDataAsRGBA32(io.Fonts, width, height);
        ImFontAtlas.setTexID(io.Fonts, "TextureID");

        // Update
        ImGui.newFrame();
        ImGui.showTestWindow();
        ImGui.render();

        // Draw
        /*
        var data = ImGui.getDrawData();
        var vtxOffset = 0;
        var idxOffset = 0;
        for (i in 0...data.ref.CmdListsCount)
        {
            var cmdList = ImDrawData.getDrawList(data, i);
            for (j in 0...ImDrawList.getCmdSize(cmdList))
            {
                var cmd = ImDrawList.getCmdPtr(cmdList, j);
                trace('CMD', ImGui.getVoidStar(cmd.ref.TextureId));
                // Bind texture ImGui.getVoidStar(cmd.ref.TextureId)
                // clip rect
                // Draw ElemCount / 3 triangles using the idx and vtx offsets

                var it : Int = cast cmd.ref.ElemCount / 3;
                for (tri in 0...it)
                {
                    var baseIdx = ImDrawList.getIndexPtr(cmdList, idxOffset + (tri * 3));
                    var vtx1 = ImDrawList.getVertexPointer(cmdList, baseIdx);
                    var vtx2 = ImDrawList.getVertexPointer(cmdList, baseIdx + 1);
                    var vtx3 = ImDrawList.getVertexPointer(cmdList, baseIdx + 2);

                    trace('{ ${vtx1.ref.pos.x}, ${vtx1.ref.pos.y} } - { ${vtx2.ref.pos.x}, ${vtx2.ref.pos.y} } - { ${vtx3.ref.pos.x}, ${vtx3.ref.pos.y} }');
                    trace(col_str(vtx1.ref.col), col_str(vtx2.ref.col), col_str(vtx3.ref.col));
                }

                idxOffset += cmd.ref.ElemCount;
            }
            vtxOffset += ImDrawList.getVertexBufferSize(cmdList);
        }
        */
    }

    private function col_str(_col : Int) : String
    {
        var a = _col >> 24 & 0xFF;
        var r = _col >> 16 & 0xFF;
        var g = _col >>  8 & 0xFF;
        var b = _col & 0xFF;
        return '$r $g $b $a';
    }
}
