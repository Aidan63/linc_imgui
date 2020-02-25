
import imgui.ImGui;

using cpp.Native;

class Main
{
    public static function main()
    {
        new Main();
    }

    public function new()
    {
        final ctx = ImGui.createContext();
        final io  = ImGui.getIO();
        io.displaySize = ImVec2.create(640, 480);

        final id = 'text';

        var width  = 0;
        var height = 0;
        var pixels : cpp.Star<cpp.UInt8> = null;
        var pixelPtr : cpp.Star<cpp.Star<cpp.UInt8>> = pixels.addressOf();
        
        io.fonts.getTexDataAsRGBA32(pixelPtr, width, height);
        io.fonts.texID = id;
        io.backendRendererName = 'my renderer';

        // Update
        ImGui.newFrame();
        
        ImGui.showDemoWindow();

        ImGui.render();

        ImGui.destroyContext(ctx);
        
        trace('done');
    }
}
