package;

import kha.System;
import kha.Framebuffer;
import kha.Image;
import kha.Shaders;
import kha.Assets;
import kha.Color;
import kha.input.KeyCode;
import kha.arrays.Float32Array;
import kha.graphics4.Graphics;
import kha.graphics4.TextureUnit;
import kha.graphics4.PipelineState;
import kha.graphics4.VertexStructure;
import kha.graphics4.VertexData;
import kha.graphics4.BlendingFactor;
import kha.graphics4.TextureFormat;
import kha.graphics4.VertexBuffer;
import kha.graphics4.IndexBuffer;
import kha.graphics4.Usage;
import cpp.Callable;
import cpp.Pointer;
import cpp.RawPointer;
import imgui.ImGui;
import imgui.util.ImVec2;
import imgui.draw.ImDrawData;

class ImGuiDemo {
	private static var pipeline:PipelineState;
	private static var texunit:TextureUnit;
	private static var imguiTexture:Image;
	private static var structure:VertexStructure;
	private static var vtx:VertexBuffer;
	private static var idx:IndexBuffer;

	// --Mouse and keyboard input--
	private static var inputX:Float;
	private static var inputY:Float;
	private static var inputDownL:Bool;
	private static var inputDownR:Bool;
	private static var inputWheelDelta:Int;
	private static var isKeyDown:Array<Bool>;
	private static var inputChars:String;

	private static var hxLogo:Image;

	public function new() {
		structure = new VertexStructure();
		structure.add("pos", VertexData.Float3);
		structure.add("col", VertexData.Float4);
		structure.add("tex", VertexData.Float2);

		inputChars = "";

		isKeyDown = new Array();
		for(i in 0...255) isKeyDown.push(false);

		pipeline = new PipelineState();
		pipeline.inputLayout = [structure];
		pipeline.vertexShader = Shaders.imgui_vert;
		pipeline.fragmentShader = Shaders.imgui_frag;

		// --Use transparent blending mode, instead of opaque--
		pipeline.blendSource = BlendingFactor.SourceAlpha;
		pipeline.blendDestination = BlendingFactor.InverseSourceAlpha;
		pipeline.compile();

		texunit = pipeline.getTextureUnit("texsampler");

		ImGui.createContext();

		var imguiIo = ImGui.getIO();
		imguiIo.displaySize = ImVec2.create(1024, 768);
		// --App crashes on attemt to copy if we don't register copy/paste callbacks--
		kha.System.notifyOnCutCopyPaste(khaCut, khaCopy, khaPaste);

		var atlas = Pointer.fromRaw(imguiIo.fonts).ref;
		var width  : Int = 0;
		var height : Int = 0;
		var pixels : Array<Int> = null;

		atlas.getTexDataAsRGBA32(pixels, width, height);

		var buff:haxe.io.Bytes = haxe.io.Bytes.alloc(pixels.length);
		for(i in 0...pixels.length) buff.set(i, pixels[i]);

		// --Seems like whole texture is white, but alpha channel changes--
		// --Multiplication of alpha channel moved to fragment shader--
		imguiTexture = Image.fromBytes(buff, width, height, TextureFormat.RGBA32, Usage.StaticUsage);

		atlas.texID = Pointer.addressOf(imguiTexture).rawCast();

		kha.input.Mouse.get().notifyWindowed(0, onMouseDown, onMouseUp, onMouseMove, onMouseWheel);
		kha.input.Keyboard.get().notify(onKeyDown, onKeyUp, onKeyPress);

		imguiIo.keyMap[ImGuiKey.Tab       ] = KeyCode.Tab;
		imguiIo.keyMap[ImGuiKey.LeftArrow ] = KeyCode.Left;
		imguiIo.keyMap[ImGuiKey.RightArrow] = KeyCode.Right;
		imguiIo.keyMap[ImGuiKey.UpArrow   ] = KeyCode.Up;
		imguiIo.keyMap[ImGuiKey.DownArrow ] = KeyCode.Down;
		imguiIo.keyMap[ImGuiKey.PageUp    ] = KeyCode.PageUp;
		imguiIo.keyMap[ImGuiKey.PageDown  ] = KeyCode.PageDown;
		imguiIo.keyMap[ImGuiKey.Home      ] = KeyCode.Home;
		imguiIo.keyMap[ImGuiKey.End       ] = KeyCode.End;
		imguiIo.keyMap[ImGuiKey.Delete    ] = KeyCode.Delete;
		imguiIo.keyMap[ImGuiKey.Backspace ] = KeyCode.Backspace;
		imguiIo.keyMap[ImGuiKey.Enter     ] = KeyCode.Return;
		imguiIo.keyMap[ImGuiKey.Escape    ] = KeyCode.Escape;
		imguiIo.keyMap[ImGuiKey.A         ] = KeyCode.A;
		imguiIo.keyMap[ImGuiKey.C         ] = KeyCode.C;
		imguiIo.keyMap[ImGuiKey.V         ] = KeyCode.V;
		imguiIo.keyMap[ImGuiKey.X         ] = KeyCode.X;
		imguiIo.keyMap[ImGuiKey.Y         ] = KeyCode.Y;
		imguiIo.keyMap[ImGuiKey.Z         ] = KeyCode.Z;

		Assets.loadEverything(function() {
			hxLogo = Assets.images.hxlogo;
			System.notifyOnRender(render);
		});
	}

	public function onKeyDown(code: kha.input.KeyCode) {
		isKeyDown[code] = true;
	}

	public function onKeyUp(code: kha.input.KeyCode) {
		isKeyDown[code] = false;
	}

	public function onKeyPress(char: String) {
		inputChars += char;
	}

	public static function onMouseDown(button: Int, x: Int, y: Int) {
		button == 0 ? inputDownL = true : inputDownR = true;
		setInputPosition(Std.int(x), Std.int(y));
	}

	public static function onMouseUp(button: Int, x: Int, y: Int) {
		button == 0 ? inputDownL = false : inputDownR = false;
		setInputPosition(Std.int(x), Std.int(y));
	}

	public static function onMouseMove(x: Int, y: Int, movementX: Int, movementY: Int) {
		// --movementX and movementY may be useful as well--
		setInputPosition(Std.int(x), Std.int(y));
	}

	public static function onMouseWheel(delta: Int) {
		inputWheelDelta = delta;
	}

	public static function setInputPosition(iX: Int, iY: Int) {
		inputX = iX;
		inputY = iY;
	}

	function render(fb:Framebuffer): Void {

		newFrame();
		
		ImGui.begin('logo');
        ImGui.image(Pointer.addressOf(hxLogo).rawCast(), ImVec2.create(128, 128));
        ImGui.end();

		ImGui.showDemoWindow();

		ImGui.endFrame();

		var g4 = fb.g4;

		g4.begin();
		g4.clear(Color.Orange);
		// --Turn off rectangle clipping, that was enabled in onRender()--
		// --So it would't affect any other draws--
		
		ImGui.render();
		onRender(g4, ImGui.getDrawData());

		g4.disableScissor();
		g4.end();
	}

	private static function newFrame() {
		var io = ImGui.getIO();
		io.displaySize  = ImVec2.create(kha.System.windowWidth(), kha.System.windowHeight());
		io.mousePos.x   = inputX;
		io.mousePos.y   = inputY;
		io.mouseDown[0] = inputDownL;
		io.mouseDown[1] = inputDownR;
		io.mouseWheel  -= inputWheelDelta;
		inputWheelDelta = 0;

		io.keyCtrl      = isKeyDown[KeyCode.Control];
		io.keyAlt       = isKeyDown[KeyCode.Alt];
		io.keyShift     = isKeyDown[KeyCode.Shift];
		io.keySuper     = isKeyDown[KeyCode.Win];

		io.keysDown[KeyCode.Tab      ] = isKeyDown[KeyCode.Tab];
		io.keysDown[KeyCode.Left     ] = isKeyDown[KeyCode.Left];
		io.keysDown[KeyCode.Right    ] = isKeyDown[KeyCode.Right];
		io.keysDown[KeyCode.Up       ] = isKeyDown[KeyCode.Up];
		io.keysDown[KeyCode.Down     ] = isKeyDown[KeyCode.Down];
		io.keysDown[KeyCode.PageUp   ] = isKeyDown[KeyCode.PageUp];
		io.keysDown[KeyCode.PageDown ] = isKeyDown[KeyCode.PageDown];
		io.keysDown[KeyCode.Home     ] = isKeyDown[KeyCode.Home];
		io.keysDown[KeyCode.End      ] = isKeyDown[KeyCode.End];
		io.keysDown[KeyCode.Return   ] = isKeyDown[KeyCode.Return];
		io.keysDown[KeyCode.Backspace] = isKeyDown[KeyCode.Backspace];
		io.keysDown[KeyCode.Escape   ] = isKeyDown[KeyCode.Escape];
		io.keysDown[KeyCode.Delete   ] = isKeyDown[KeyCode.Delete];
		io.keysDown[KeyCode.A        ] = isKeyDown[KeyCode.A];
		io.keysDown[KeyCode.C        ] = isKeyDown[KeyCode.C];
		io.keysDown[KeyCode.V        ] = isKeyDown[KeyCode.V];
		io.keysDown[KeyCode.X        ] = isKeyDown[KeyCode.X];
		io.keysDown[KeyCode.Y        ] = isKeyDown[KeyCode.Y];
		io.keysDown[KeyCode.Z        ] = isKeyDown[KeyCode.Z];

		io.addInputCharactersUTF8(inputChars);
		inputChars = "";

		ImGui.newFrame();
	}

	private static function setVertexColor(vBuf:Float32Array, col:Int, startIdx:Int) : Void {
		vBuf.set(startIdx + 0, ((col >>  0) & 0xFF) / 255);
		vBuf.set(startIdx + 1, ((col >>  8) & 0xFF) / 255);
		vBuf.set(startIdx + 2, ((col >> 16) & 0xFF) / 255);
		vBuf.set(startIdx + 3, ((col >> 24) & 0xFF) / 255);
	}

	private static function onRender(_g4 : Graphics, _dataRawPtr : cpp.RawPointer<ImDrawData>) : Void {
		// --There are probably some mem leaks in this function--

		var drawData = Pointer.fromRaw(_dataRawPtr).ref;

		var invHalfWW = 1.0 / (kha.System.windowWidth()  * .5);
		var invHalfWH = 1.0 / (kha.System.windowHeight() * .5);

		for(i in 0...drawData.cmdListsCount) {
			var idxOffset = 0;
			var cmdList = Pointer.fromRaw(drawData.cmdLists[i]).ref;
			var cmdBuffer = cmdList.cmdBuffer.data;
			var vtxBuffer = cmdList.vtxBuffer.data;
			var idxBuffer = cmdList.idxBuffer.data;

			for (j in 0...cmdList.cmdBuffer.size) {
				var cmd  = cmdBuffer[j];
				var it : Int = cast cmd.elemCount / 3;

				vtx = new VertexBuffer(it*3, structure, Usage.StaticUsage);
				idx = new IndexBuffer(it*3, Usage.StaticUsage);

				var v = vtx.lock();
				var ii = idx.lock();
			
				for (tri in 0...it) {
					var baseIdx = idxOffset + (tri * 3);
					var idx1 = idxBuffer[baseIdx + 0];
					var idx2 = idxBuffer[baseIdx + 1];
					var idx3 = idxBuffer[baseIdx + 2];
					var vtx1 = vtxBuffer[idx1];
					var vtx2 = vtxBuffer[idx2];
					var vtx3 = vtxBuffer[idx3];
					var tmul = tri * 27;

					v.set(tmul+0, vtx1.pos.x * invHalfWW - 1); v.set(tmul+1, -(vtx1.pos.y * invHalfWH - 1.0)); v.set(tmul+2, 0.5); // Vertex coord
					setVertexColor(v, vtx1.col, tmul +  3); // Vertex color
					v.set(tmul+7, vtx1.uv.x); v.set(tmul+8, vtx1.uv.y); // Texture UV coord
					v.set(tmul+9, vtx2.pos.x * invHalfWW - 1); v.set(tmul+10, -(vtx2.pos.y * invHalfWH - 1.0)); v.set(tmul+11, 0.5);
					setVertexColor(v, vtx2.col, tmul + 12);
					v.set(tmul+16, vtx2.uv.x); v.set(tmul+17, vtx2.uv.y);
					v.set(tmul+18, vtx3.pos.x * invHalfWW - 1); v.set(tmul+19, -(vtx3.pos.y * invHalfWH - 1.0)); v.set(tmul+20, 0.5);
					setVertexColor(v, vtx3.col, tmul + 21);
					v.set(tmul+25, vtx3.uv.x); v.set(tmul+26, vtx3.uv.y);

					ii[tri*3+0] = tri*3+0; ii[tri*3+1] = tri*3+1; ii[tri*3+2] = tri*3+2;
				}

				vtx.unlock();
				idx.unlock();

				var tex : Pointer<Image> = Pointer.fromRaw(cmd.textureID).reinterpret();

				_g4.begin();
				_g4.setPipeline(pipeline);
				_g4.setTexture(texunit, tex.ref);
				_g4.setVertexBuffer(vtx);
				_g4.setIndexBuffer(idx);
				_g4.scissor(Std.int(cmd.clipRect.x), Std.int(cmd.clipRect.y), Std.int(cmd.clipRect.z - cmd.clipRect.x), Std.int(cmd.clipRect.w - cmd.clipRect.y));
				_g4.drawIndexedVertices();
				_g4.end();

				vtx.delete();
				idx.delete();

				idxOffset += cmd.elemCount;
			}
		}
	}

	private static function khaCut() : String {
		return "";
	}

	private static function khaCopy() : String {
		return "";
	}

	private static function khaPaste(s:String) : Void {

	}
}
