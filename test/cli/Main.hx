
import cpp.Pointer;
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

        final id = "Some ID";

        var width  = [ 0 ];
        var height = [ 0 ];
        var pixels : cpp.Star<cpp.UInt8> = null;
        var pixelPtr : cpp.Star<cpp.Star<cpp.UInt8>> = pixels.addressOf();
        
        io.fonts.getTexDataAsRGBA32(pixelPtr, width, height);
        io.fonts.texID = Pointer.addressOf(id).raw;
        io.backendRendererName = 'my renderer';

        trace(width[0], height[0]);

        // Update
        ImGui.newFrame();
        
        ImGui.showDemoWindow();

        if (ImGui.begin('window'))
        {
            final ints = [ 1, 2, 3, 4 ];

            ImGui.sliderInt4('multi ints', ints, 0, 10);
        }
        ImGui.end();

        ImGui.render();

        ImGui.destroyContext(ctx);

        trace('done');
    }
}
