package imgui;

import cpp.ConstCharStar;
import cpp.Reference;
import imgui.util.ImVec4;

@:include('linc_imgui.h')
extern class ImText
{
    /**
      raw text without formatting. Roughly equivalent to Text("%s", text) but: A) doesn't require null terminated string if 'text_end' is specified, B) it's faster, no memory copy is done, no buffer size limits, recommended for long chunks of text.
     */
    @:native('ImGui::TextUnformatted') static function textUnformatted(_text : ConstCharStar, _textEnd : ConstCharStar = null) : Void;

    /**
      simple formatted text
     */
    @:native('ImGui::Text') static function text(_fmt : ConstCharStar) : Void;
    //@:native('ImGui::TextV') static function TextV(const char* fmt, va_list args) : Void;

    /**
      shortcut for PushStyleColor(ImGuiCol_Text, col); Text(fmt, ...); PopStyleColor();
     */
    @:native('ImGui::TextColored') static function textColored(_col : Reference<ImVec4>, _fmt : ConstCharStar) : Void;
    //@:native('ImGui::TextColoredV') static function TextColoredV(const ImVec4& col, const char* fmt, va_list args) : Void; 

    /**
      shortcut for PushStyleColor(ImGuiCol_Text, style.Colors[ImGuiCol_TextDisabled]); Text(fmt, ...); PopStyleColor();
     */
    @:native('ImGui::TextDisabled') static function textDisabled(_fmt : ConstCharStar) : Void;
    //@:native('ImGui::TextDisabledV') static function TextDisabledV(const char* fmt, va_list args) : Void;

    /**
      shortcut for PushTextWrapPos(0.0f); Text(fmt, ...); PopTextWrapPos();.
      
      Note that this won't work on an auto-resizing window if there's no other widgets to extend the window width, yoy may need to set a size using SetNextWindowSize().
     */
    @:native('ImGui::TextWrapped') static function textWrapped(_fmt : ConstCharStar) : Void;
    //@:native('ImGui::TextWrappedV') static function TextWrappedV(const char* fmt, va_list args) : Void;

    /**
      display text+label aligned the same way as value+label widgets
     */
    @:native('ImGui::LabelText') static function labelText(_label : ConstCharStar, _fmt : ConstCharStar) : Void;
    //@:native('ImGui::LabelTextV') static function LabelTextV(const char* label, const char* fmt, va_list args) : Void;

    /**
      shortcut for Bullet()+Text()
     */
    @:native('ImGui::BulletText') static function bulletText(_fmt : ConstCharStar) : Void;
    //@:native('ImGui::BulletTextV') static function BulletTextV(const char* fmt, va_list args) : Void;

    /**
      draw a small circle and keep the cursor on the same line. advance cursor x position by GetTreeNodeToLabelSpacing(), same distance that TreeNode() uses
     */
    @:native('ImGui::Bullet') static function bullet() : Void;
}
