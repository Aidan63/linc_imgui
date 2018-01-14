package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

import imgui.ImGui;
import imgui.util.ImVec2;
import cpp.Pointer;

class PlayState extends FlxState
{
	private var logo : FlxSprite;

	override public function create():Void
	{
		super.create();

		bgColor = FlxColor.fromString('0x78909C');
		logo    = new FlxSprite(0, 0, AssetPaths.hxlogo__png);

		FlxImGui.init();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		FlxImGui.newFrame();

		ImGui.begin('Logo');
		ImGui.image(Pointer.addressOf(logo).rawCast(), ImVec2.create(128, 128));
		ImGui.end();

		ImGui.showDemoWindow();
		FlxImGui.render();
	}
}
