
import cpp.Pointer;
import imgui.ImGui;
import imgui.draw.ImDrawData;
import imgui.draw.ImDrawList;
import imgui.ImStack;
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
        
        var text  = "TextureID";

        var atlas = Pointer.fromRaw(io.Fonts).ref;
        var width  : Int = 0;
        var height : Int = 0;
        var pixels : Array<Int> = null;
        atlas.getTexDataAsRGBA32(pixels, width, height);
        atlas.TexID = ImGui.createVoidStar(text);

        // Update
        ImGui.newFrame();
        
        ImGui.showDemoWindow();

        ImGui.render();

        // Draw
        /*
        var depth = 0;
        var drawData = cpp.Pointer.fromRaw(_dataRawPtr).ref;

        for(i in 0...drawData.CmdListsCount)
        {
            var idxOffset = 0;
            var cmdList   = cpp.Pointer.fromRaw(drawData.CmdLists[i]).ref;
            var cmdBuffer = cmdList.getCmdData();
            var vtxBuffer = cmdList.getVtxData();
            var idxBuffer = cmdList.getIdxData();
            for (j in 0...cmdList.getCmdLength())
            {
                var cmd  = cmdBuffer[j];
                var clip = new Rectangle(
                    cmd.ClipRect.x,
                    cmd.ClipRect.y,
                    cmd.ClipRect.z - cmd.ClipRect.x,
                    cmd.ClipRect.w - cmd.ClipRect.y);

                var g = new Geometry({
                    texture        : Luxe.resources.texture(ImGui.getVoidStar(cmd.TextureId)),
                    primitive_type : triangles,
                    depth     : depth,
                    immediate : true,
                    batcher   : batcher
                });

                var it : Int = cast cmd.ElemCount / 3;
                for (tri in 0...it)
                {
                    var baseIdx = idxOffset + (tri * 3);
                    var idx1 = idxBuffer[baseIdx + 0];
                    var idx2 = idxBuffer[baseIdx + 1];
                    var idx3 = idxBuffer[baseIdx + 2];
                    var vtx1 = vtxBuffer[idx1];
                    var vtx2 = vtxBuffer[idx2];
                    var vtx3 = vtxBuffer[idx3];

                    var v1 = new Vertex(new Vector(vtx1.pos.x, vtx1.pos.y), intToColor(vtx1.col));
                    var v2 = new Vertex(new Vector(vtx2.pos.x, vtx2.pos.y), intToColor(vtx2.col));
                    var v3 = new Vertex(new Vector(vtx3.pos.x, vtx3.pos.y), intToColor(vtx3.col));
                    v1.uv.uv0.set_uv(vtx1.uv.x, vtx1.uv.y);
                    v2.uv.uv0.set_uv(vtx2.uv.x, vtx2.uv.y);
                    v3.uv.uv0.set_uv(vtx3.uv.x, vtx3.uv.y);
                    g.add(v1);
                    g.add(v2);
                    g.add(v3);
                }
                g.clip_rect = clip;

                idxOffset += cmd.ElemCount;
                depth++;
            }
        }
        */
    }

    private function col_str(_col : Int) : String
    {
        var a = (_col >> 24) & 0xFF;
        var b = (_col >> 16) & 0xFF;
        var g = (_col >> 8) & 0xFF;
        var r = (_col) & 0xFF;

        return '$r $g $b $a';
    }
}
