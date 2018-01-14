
import luxe.Game;
import luxe.GameConfig;
import luxe.Color;
import cpp.Pointer;
import imgui.ImGui;
import imgui.util.ImVec2;

class Main extends Game
{
    override function config(_config : GameConfig)
    {
        _config.window.title = 'luxe game';
        _config.window.width = 1280;
        _config.window.height = 720;
        _config.window.fullscreen = false;
        _config.render.default_clear = {
            r : 0.47, g : 0.56, b : 0.61, a : 1
        }

        _config.preload.textures = [
            { id : 'assets/hxlogo.png' }
        ];

        return _config;
    }

    override function ready()
    {
        LuxeImGui.init();
    }
    
    override function update(_dt : Float)
    {
        Luxe.draw.box({ x : 0, y : 0, w : Luxe.screen.w, h : Luxe.screen.h, color : new Color(0.47, 0.56, 0.61, 1), immediate : true });

        LuxeImGui.newFrame();

        ImGui.showDemoWindow();

        ImGui.begin('logo');

        var haxeLogoTexID = "assets/hxlogo.png";
        ImGui.image(Pointer.addressOf(haxeLogoTexID).rawCast(), ImVec2.create(128, 128));

        ImGui.end();

        LuxeImGui.render();
    }

    override function ondestroy()
    {
        LuxeImGui.clean();
    }
}
