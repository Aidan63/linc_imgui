package imgui;

@:include('linc_imgui.h')
extern class ImMenu
{
    /**
      create and append to a full screen menu-bar. only call EndMainMenuBar() if this returns true!
     */
    @:native('ImGui::BeginMainMenuBar') static function beginMainMenuBar() : Bool;
    @:native('ImGui::EndMainMenuBar') static function endMainMenuBar() : Void;

    /**
      append to menu-bar of current window (requires ImGuiWindowFlags_MenuBar flag set on parent window). only call EndMenuBar() if this returns true!
     */
    @:native('ImGui::BeginMenuBar') static function beginMenuBar() : Bool;
    @:native('ImGui::EndMenuBar') static function endMenuBar() : Void;
    
    /**
      create a sub-menu entry. only call EndMenu() if this returns true!
     */
    @:native('ImGui::BeginMenu') static function beginMenu(_label : String, _enabled : Bool = true) : Bool;
    @:native('ImGui::EndMenu') static function endMenu() : Void;

    /**
      return true when activated + toggle (*p_selected) if p_selected != NULL
     */
    @:overload(function(_label : String, _shortcut : String, _selected : Bool) : Bool {})
    @:native('ImGui::linc::MenuItemToggle') static function menuItemToggle(_label : String, _shortcut : String, _selected : Bool, _enabled : Bool) : Bool;

    /**
      return true when activated. shortcuts are displayed for convenience but not processed by ImGui at the moment
     */
    @:overload(function(_label : String) : Bool {})
    @:overload(function(_label : String, _shortcut : String) : Bool {})
    @:overload(function(_label : String, _shortcut : String, _selected : Bool) : Bool {})
    @:native('ImGui::linc::MenuItem') static function menuItem(_label : String, _shortcut : String, _selected : Bool, _enabled : Bool) : Bool;
}
