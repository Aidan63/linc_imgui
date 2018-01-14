
import luxe.Color;
import luxe.Input;
import luxe.Vector;
import luxe.Rectangle;

import phoenix.Batcher;
import phoenix.Texture;
import phoenix.geometry.Vertex;
import phoenix.geometry.Geometry;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Callable;
import imgui.ImGui;
import imgui.draw.ImDrawData;
import imgui.util.ImVec2;

class LuxeImGui
{
    private static var batcher : Batcher;

    public static function init()
    {
        Luxe.on(luxe.Ev.textinput , onTextInput);
        Luxe.on(luxe.Ev.mousewheel, onMouseWheel);

        batcher = Luxe.renderer.create_batcher({
            name      : 'imgui_batcher',
            max_verts : 65536,
            camera    : Luxe.camera.view
        });

        var io = ImGui.getIO();
        io.renderDrawListsFn  = Callable.fromStaticFunction(onRender);
        io.getClipboardTextFn = Callable.fromStaticFunction(getClipboard);
        io.setClipboardTextFn = Callable.fromStaticFunction(setClipboard);

        io.keyMap[ImGuiKey.Tab       ] = Scan.tab;
        io.keyMap[ImGuiKey.LeftArrow ] = Scan.left;
        io.keyMap[ImGuiKey.RightArrow] = Scan.right;
        io.keyMap[ImGuiKey.UpArrow   ] = Scan.up;
        io.keyMap[ImGuiKey.DownArrow ] = Scan.down;
        io.keyMap[ImGuiKey.PageUp    ] = Scan.pageup;
        io.keyMap[ImGuiKey.PageDown  ] = Scan.pagedown;
        io.keyMap[ImGuiKey.Home      ] = Scan.home;
        io.keyMap[ImGuiKey.End       ] = Scan.end;
        io.keyMap[ImGuiKey.Delete    ] = Scan.delete;
        io.keyMap[ImGuiKey.Backspace ] = Scan.backspace;
        io.keyMap[ImGuiKey.Enter     ] = Scan.enter;
        io.keyMap[ImGuiKey.Escape    ] = Scan.escape;
        io.keyMap[ImGuiKey.A         ] = Scan.key_a;
        io.keyMap[ImGuiKey.C         ] = Scan.key_c;
        io.keyMap[ImGuiKey.V         ] = Scan.key_v;
        io.keyMap[ImGuiKey.X         ] = Scan.key_x;
        io.keyMap[ImGuiKey.Y         ] = Scan.key_y;
        io.keyMap[ImGuiKey.Z         ] = Scan.key_z;

        // Get the atlas pixel array
        var atlas  = Pointer.fromRaw(io.fonts).ref;
        var width  = 0;
        var height = 0;
        var pixels : Array<Int> = null;
        atlas.getTexDataAsRGBA32(pixels, width, height);

        // Create a phoenix texture from the pixel data and upload it to Luxe's resource system
        var tex = new Texture({
            id     : 'imgui_texture',
            pixels : snow.api.buffers.Uint8Array.fromArray(pixels),
            width  : width,
            height : height
        });
        Luxe.resources.add(tex);

        // Create a pointer to the textures name and store it in the font atlas
        atlas.texID = Pointer.addressOf(tex.id).rawCast();
    }

    public static function newFrame()
    {
        var io = ImGui.getIO();
        io.displaySize  = ImVec2.create(Luxe.screen.width, Luxe.screen.height);
        io.mousePos.x   = Luxe.screen.cursor.pos.x;
        io.mousePos.y   = Luxe.screen.cursor.pos.y;
        io.mouseDown[0] = Luxe.input.mousedown(left);
        io.mouseDown[1] = Luxe.input.mousedown(right);
        io.keyCtrl      = Luxe.input.keydown(Key.lctrl);
        io.keyAlt       = Luxe.input.keydown(Key.lalt);
        io.keyShift     = Luxe.input.keydown(Key.lshift);
        io.keySuper     = Luxe.input.keydown(Key.lmeta);

        io.keysDown[Scan.tab      ] = Luxe.input.keypressed(Key.tab);
        io.keysDown[Scan.left     ] = Luxe.input.keypressed(Key.left);
        io.keysDown[Scan.right    ] = Luxe.input.keypressed(Key.right);
        io.keysDown[Scan.up       ] = Luxe.input.keypressed(Key.up);
        io.keysDown[Scan.down     ] = Luxe.input.keypressed(Key.down);
        io.keysDown[Scan.pageup   ] = Luxe.input.keypressed(Key.pageup);
        io.keysDown[Scan.pagedown ] = Luxe.input.keypressed(Key.pagedown);
        io.keysDown[Scan.home     ] = Luxe.input.keypressed(Key.home);
        io.keysDown[Scan.end      ] = Luxe.input.keypressed(Key.end);
        io.keysDown[Scan.enter    ] = Luxe.input.keypressed(Key.enter);
        io.keysDown[Scan.backspace] = Luxe.input.keypressed(Key.backspace);
        io.keysDown[Scan.escape   ] = Luxe.input.keypressed(Key.escape);
        io.keysDown[Scan.delete   ] = Luxe.input.keypressed(Key.delete);
        io.keysDown[Scan.key_a    ] = Luxe.input.keypressed(Key.key_a);
        io.keysDown[Scan.key_c    ] = Luxe.input.keypressed(Key.key_c);
        io.keysDown[Scan.key_v    ] = Luxe.input.keypressed(Key.key_v);
        io.keysDown[Scan.key_x    ] = Luxe.input.keypressed(Key.key_x);
        io.keysDown[Scan.key_y    ] = Luxe.input.keypressed(Key.key_y);
        io.keysDown[Scan.key_z    ] = Luxe.input.keypressed(Key.key_z);

        ImGui.newFrame();
    }

    public static function render()
    {
        ImGui.render();
    }

    public static function clean()
    {
        Luxe.off(luxe.Ev.textinput , onTextInput);
        Luxe.off(luxe.Ev.mousewheel, onMouseWheel);

        batcher.destroy();
        Luxe.resources.destroy('imgui_texture');
    }

    /**
     Create a luxe colour object from the provided RGBA colour int.
     @param _int RGBA colour int
     @return Luxe colour object
     */
    private static function intToColor(_int : Int) : Color
    {
        var r = (_int) & 0xFF;
        var g = (_int >> 8) & 0xFF;
        var b = (_int >> 16) & 0xFF;
        var a = (_int >> 24) & 0xFF;

        return new Color(r / 255, g / 255, b / 255, a / 255);
    }

    /**
     Add the text of the pressed key to ImGui.
     */
    private static function onTextInput(_event : TextEvent)
    {
        var io = ImGui.getIO();
        io.addInputCharactersUTF8(_event.text);
    }

    /**
     Set the ImGuiIO mouse wheel variable.
     */
    private static function onMouseWheel(_event : MouseEvent)
    {
        var io = ImGui.getIO();
        io.mouseWheel = _event.y;
    }

    /**
     Get the current clipboard text.
     @return cpp.ConstCharStar
     */
    private static function getClipboard(_data : cpp.RawPointer<cpp.Void>) : cpp.ConstCharStar
    {
        return sdl.SDL.getClipboardText();
    }

    /**
     Set the clipboard data.
     @param _text Text data for the clipboard.
     */
    private static function setClipboard(_data : cpp.RawPointer<cpp.Void>, _text : cpp.ConstCharStar) : Void
    {
        sdl.SDL.setClipboardText(_text);
    }

    /**
     Draws the provided ImGui verts
     @param _dataRawPtr Raw C++ pointer to the draw data.
     */
    private static function onRender(_dataRawPtr : cpp.RawPointer<ImDrawData>) : Void
    {
        var depth = 0;
        var drawData = Pointer.fromRaw(_dataRawPtr).ref;

        for(i in 0...drawData.CmdListsCount)
        {
            var idxOffset = 0;
            var cmdList   = Pointer.fromRaw(drawData.CmdLists[i]).ref;
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

                var tex : Pointer<String> = Pointer.fromRaw(cmd.TextureId).reinterpret();

                var g = new Geometry({
                    texture        : Luxe.resources.texture(tex.ref),
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
    }
}
