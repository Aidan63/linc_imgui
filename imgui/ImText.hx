package imgui;

import imgui.util.ImVec4;

@:include('linc_imgui.h')
extern class ImText
{
    /**
      raw text without formatting. Roughly equivalent to Text("%s", text) but: A) doesn't require null terminated string if 'text_end' is specified, B) it's faster, no memory copy is done, no buffer size limits, recommended for long chunks of text.
     */
    @:native('ImGui::TextUnformatted') static function textUnformatted(_text : String, _textEnd : String = null) : Void;

    /**
      simple formatted text
     */
    @:native('ImGui::linc::Text') static function text(_text : String) : Void;

    /**
      shortcut for PushStyleColor(ImGuiCol_Text, col); Text(fmt, ...); PopStyleColor();
     */
    @:native('ImGui::linc::TextColored') static function textColored(_col : ImVec4, _text : String) : Void;

    /**
      shortcut for PushStyleColor(ImGuiCol_Text, style.Colors[ImGuiCol_TextDisabled]); Text(fmt, ...); PopStyleColor();
     */
    @:native('ImGui::linc::TextDisabled') static function textDisabled(_text : String) : Void;

    /**
      shortcut for PushTextWrapPos(0.0f); Text(fmt, ...); PopTextWrapPos();.
      
      Note that this won't work on an auto-resizing window if there's no other widgets to extend the window width, yoy may need to set a size using SetNextWindowSize().
     */
    @:native('ImGui::linc::TextWrapped') static function textWrapped(_text : String) : Void;

    /**
      display text+label aligned the same way as value+label widgets
     */
    @:native('ImGui::linc::LabelText') static function labelText(_label : String, _text : String) : Void;

    /**
      shortcut for Bullet()+Text()
     */
    @:native('ImGui::linc::BulletText') static function bulletText(_fmt : String) : Void;

    /**
      draw a small circle and keep the cursor on the same line. advance cursor x position by GetTreeNodeToLabelSpacing(), same distance that TreeNode() uses
     */
    @:native('ImGui::Bullet') static function bullet() : Void;
}
