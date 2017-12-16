package imgui;

import imgui.ImWindow;

@:include('linc_imgui.h')
extern class ImPopup
{
    /**
      call to mark popup as open (don't call every frame!). popups are closed when user click outside,
      or if CloseCurrentPopup() is called within a BeginPopup()/EndPopup() block. By default, Selectable()/MenuItem() are calling CloseCurrentPopup().
      
      Popup identifiers are relative to the current ID-stack (so OpenPopup and BeginPopup needs to be at the same level).
     */
    @:native('ImGui::OpenPopup') static function openPopup(_strId : String) : Void;

    /**
      helper to open popup when clicked on last item. return true when just opened.
     */
    @:overload(function() : Bool {})
    @:overload(function(_strId : String) : Bool {})
    @:native('ImGui::OpenPopupOnItemClick') static function openPopupOnItemClick(_strId : String, _mouseButton : Int) : Bool;

    /**
      return true if the popup is open, and you can start outputting to it. only call EndPopup() if BeginPopup() returned true!
     */
    @:native('ImGui::BeginPopup') static function beginPopup(_strId : String) : Bool;
    
    /**
      modal dialog (block interactions behind the modal window, can't close the modal window by clicking outside)
     */
    @:overload(function(_name : String) : Bool {})
    @:overload(function(_name : String, _open : cpp.Pointer<Bool>) : Bool {})
    @:overload(function(_name : String, _extraFlags : ImGuiWindowFlags) : Bool {})
    @:native('ImGui::linc::BeginPopupModal') static function beginPopupModal(_name : String, _open : cpp.Pointer<Bool>, _extraFlags : ImGuiWindowFlags) : Bool;
    
    /**
      helper to open and begin popup when clicked on last item. if you can pass a NULL str_id only if the previous item had an id.
      
      If you want to use that on a non-interactive item such as Text() you need to pass in an explicit ID here. read comments in .cpp!
     */
    @:overload(function() : Bool {})
    @:overload(function(_strId : String) : Bool {})
    @:native('ImGui::BeginPopupContextItem') static function beginPopupContextItem(_strId : String, _mouseButton : Int) : Bool;

    /**
      helper to open and begin popup when clicked on current window.
     */
    @:overload(function() : Bool {})
    @:overload(function(_strId : String) : Bool {})
    @:overload(function(_strId : String, _mouseButton : Int) : Bool {})
    @:native('ImGui::BeginPopupContextWindow') static function beginPopupContextWindow(_strId : String, _mouseButton : Int, _alsoOverItems : Bool) : Bool;

    /**
      helper to open and begin popup when clicked in void (where there are no imgui windows).
     */
    @:overload(function() : Bool {})
    @:overload(function(_strId : String) : Bool {})
    @:native('ImGui::BeginPopupContextVoid') static function beginPopupContextVoid(_strId : String, _mouseButton : Int) : Bool;

    @:native('ImGui::EndPopup') static function endPopup() : Void;

    /**
      return true if the popup is open
     */
    @:native('ImGui::IsPopupOpen') static function isPopupOpen(_strId : String) : Bool;

    /**
      close the popup we have begin-ed into. clicking on a MenuItem or Selectable automatically close the current popup.
     */
    @:native('ImGui::CloseCurrentPopup') static function closeCurrentPopup() : Void;
}
