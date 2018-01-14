import cpp.Pointer;
import imgui.ImGui;
import imgui.util.ImVec2;

class Main
{
    public static function main()
    {
        new Main();
    }

    public function new()
    {
        var io = ImGui.getIO();
        io.displaySize = ImVec2.create(640, 480);
        
        var text  = "TextureID";

        var atlas = Pointer.fromRaw(io.fonts).ref;
        var width  : Int = 0;
        var height : Int = 0;
        var pixels : Array<Int> = null;
        
        atlas.getTexDataAsRGBA32(pixels, width, height);
        atlas.texID = Pointer.addressOf(text).rawCast();

        // Update
        ImGui.newFrame();
        
        ImGui.showDemoWindow();

        ImGui.render();
    }
}
