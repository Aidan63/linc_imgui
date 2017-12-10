package imgui;

import imgui.ImGui;
import imgui.draw.ImDrawList;
import imgui.util.ImVec2;
import imgui.util.ImGuiStorage;
import cpp.Pointer;
import cpp.Reference;

@:keep
@:include('linc_imgui.h')
@:structAccess
@:unreflective
extern class ImWindow
{
    /**
      push window to the stack and start appending to it. see .cpp for details. return false when window is collapsed, so you can early out in your code.
      'bool* p_open' creates a widget on the upper-right to close the window (which sets your bool to false).
     */
    @:native('ImGui::Begin') static function begin(_name : String, _open : Pointer<Bool> = null, _flags : ImGuiWindowFlags = 0) : Bool;

    /**
      finish appending to current window, pop it off the window stack.
     */
    @:native('ImGui::End') static function end() : Void;

    /**
      begin a scrolling region. size==0.0f: use remaining window size, size<0.0f: use remaining window size minus abs(size).
      size>0.0f: fixed size. each axis can use a different mode, e.g. ImVec2(0,400).
     */
    @:native('ImGui::BeginChild') static function beginChildStr(_strID : String , _size : Reference<ImVec2>, _border : Bool = false, _flags : ImGuiWindowFlags = 0) : Bool;
    @:native('ImGui::BeginChild') static function beginChildInt(_intID : ImGuiID, _size : Reference<ImVec2>, _border : Bool = false, _flags : ImGuiWindowFlags = 0) : Bool;
    @:native('ImGui::EndChild') static function endChild() : Void;

    /**
      current content boundaries (typically window boundaries including scrolling, or current column boundaries), in windows coordinates
     */
    @:native('ImGui::GetContentRegionMax') static function getContentRegionMax() : ImVec2;

    /**
      == GetContentRegionMax() - GetCursorPos()
     */
    @:native('ImGui::GetContentRegionAvail') static function getContentRegionAvail() : ImVec2;
    @:native('ImGui::GetContentRegionAvailWidth') static function getContentRegionAvailWidth() : Float;

    /**
      content boundaries min (roughly (0,0)-Scroll), in window coordinates
     */
    @:native('ImGui::GetWindowContentRegionMin') static function getWindowContentRegionMin() : ImVec2;

    /**
      content boundaries max (roughly (0,0)+Size-Scroll) where Size can be override with SetNextWindowContentSize(), in window coordinates
     */
    @:native('ImGui::GetWindowContentRegionMax') static function getWindowContentRegionMax() : ImVec2;
    @:native('ImGui::GetWindowContentRegionWidth') static function getWindowContentRegionWidth() : Float;

    /**
      get rendering command-list if you want to append your own draw primitives
     */
    @:native('ImGui::GetWindowDrawList') static function getWindowDrawList() : Pointer<ImDrawList>;

    /**
      get current window position in screen space (useful if you want to do your own drawing via the DrawList api)
     */
    @:native('ImGui::GetWindowPos') static function getWindowPos() : ImVec2;
    @:native('ImGui::GetWindowSize') static function getWindowSize() : ImVec2;
    @:native('ImGui::GetWindowWidth') static function getWindowWidth() : Float;
    @:native('ImGui::GetWindowHeight') static function getWindowHeight() : Float;
    @:native('ImGui::IsWindowCollapsed') static function isWindowCollapsed() : Bool;
    @:native('ImGui::IsWindowAppearing') static function isWindowAppearing() : Bool;

    /**
      per-window font scale. Adjust IO.FontGlobalScale if you want to scale all windows
     */
    @:native('ImGui::SetWindowFontScale') static function setWindowFontScale(_scale : Float) : Void;

    //----------------//
    // Window Setters //
    //----------------//

    /**
      set next window position. call before Begin(). use pivot=(0.5f,0.5f) to center on given point, etc.
     */
    @:native('ImGui::SetNextWindowPos') static function setNextWindowPos(_pos : Reference<ImVec2>, _cond : ImGuiCond, _pivot : Reference<ImVec2>) : Void;

    /**
      set next window size. set axis to 0.0f to force an auto-fit on this axis. call before Begin()
     */
    @:native('ImGui::SetNextWindowSize') static function setNextWindowSize(_size : Reference<ImVec2>, _cond : ImGuiCond = 0) : Void;

    /**
      set next window size limits. use -1,-1 on either X/Y axis to preserve the current size. Use callback to apply non-trivial programmatic constraints.
     */
    @:native('ImGui::SetNextWindowSizeConstraints') static function setNextWindowSizeConstraints(_sizeMin : Reference<ImVec2>, _sizeMax : Reference<ImVec2>, _customCallback : ImGuiSizeConstraintCallback = null, _customCallbackData : Pointer<Void> = null) : Void;

    /**
      set next window content size (enforce the range of scrollbars). set axis to 0.0f to leave it automatic. call before Begin()
     */
    @:native('ImGui::SetNextWindowContentSize') static function setNextWindowContentSize(_size : Reference<ImVec2>) : Void;

    /**
      set next window content width (enforce the range of horizontal scrollbar). call before Begin()
     */
    @:native('ImGui::SetNextWindowContentWidth') static function setNextWindowContentWidth(_width : Float) : Void;

    /**
      set next window collapsed state. call before Begin()
     */
    @:native('ImGui::SetNextWindowCollapsed') static function setNextWindowCollapsed(_collapsed : Bool, _cond : ImGuiCond = 0) : Void;

    /**
      set next window to be focused / front-most. call before Begin()
     */
    @:native('ImGui::SetNextWindowFocus') static function setNextWindowFocus() : Void;

    /**
      (not recommended) set current window position - call within Begin()/End(). prefer using SetNextWindowPos(), as this may incur tearing and side-effects.
     */
    @:native('ImGui::SetWindowPos') static function setCurrentWindowPos(_pos : Reference<ImVec2>, _cond : ImGuiCond = 0) : Void;

    /**
      (not recommended) set current window size - call within Begin()/End().
      set to ImVec2(0,0) to force an auto-fit. prefer using SetNextWindowSize(), as this may incur tearing and minor side-effects.
     */
    @:native('ImGui::SetWindowSize') static function setCurrentWindowSize(_size : Reference<ImVec2>, _cond : ImGuiCond = 0) : Void;

    /**
      (not recommended) set current window collapsed state. prefer using SetNextWindowCollapsed().
     */
    @:native('ImGui::SetWindowCollapsed') static function setCurrentWindowCollapsed(_collapsed : Bool, _cond : ImGuiCond = 0) : Void;

    /**
      (not recommended) set current window to be focused / front-most. prefer using SetNextWindowFocus().
     */
    @:native('ImGui::SetWindowFocus') static function setCurrentWindowFocus() : Void;

    /**
      set named window position.
     */
    @:native('ImGui::SetWindowPos') static function setWindowPos(_name : String, _pos : Reference<ImVec2>, _cond : ImGuiCond = 0) : Void;

    /**
      set named window size. set axis to 0.0f to force an auto-fit on this axis.
     */
    @:native('ImGui::SetWindowSize') static function setWindowSize(_name : String, _size : Reference<ImVec2>, _cond : ImGuiCond = 0) : Void;

    /**
      set named window collapsed state
     */
    @:native('ImGui::SetWindowCollapsed') static function setWindowCollapsed(_name : String, _collapsed : Bool, _cond : ImGuiCond = 0) : Void;

    /**
      set named window to be focused / front-most. use NULL to remove focus.
     */
    @:native('ImGui::SetWindowFocus') static function setWindowFocus(_name : String) : Void;

    //--------------//
    // Window Input //
    //--------------//

    /**
      get scrolling amount [0..GetScrollMaxX()]
     */
    @:native('GetScrollX') static function GetScrollX() : Float;

    /**
      get scrolling amount [0..GetScrollMaxY()]
     */
    @:native('GetScrollY') static function GetScrollY() : Float;

    /**
      get maximum scrolling amount ~~ ContentSize.X - WindowSize.X
     */
    @:native('GetScrollMaxX') static function GetScrollMaxX() : Float;

    /**
      get maximum scrolling amount ~~ ContentSize.Y - WindowSize.Y
     */
    @:native('GetScrollMaxY') static function GetScrollMaxY() : Float;

    /**
      set scrolling amount [0..GetScrollMaxX()]
     */
    @:native('SetScrollX') static function SetScrollX(_scrollX : Float) : Void;

    /**
      set scrolling amount [0..GetScrollMaxY()]
     */
    @:native('SetScrollY') static function SetScrollY(_scrollY : Float) : Void;

    /**
      adjust scrolling amount to make current cursor position visible. center_y_ratio=0.0: top, 0.5: center, 1.0: bottom.
     */
    @:native('SetScrollHere') static function SetScrollHere(_center_y_ratio : Float = 0.5) : Void;

    /**
      adjust scrolling amount to make given position valid. use GetCursorPos() or GetCursorStartPos()+offset to get valid positions.
     */
    @:native('SetScrollFromPosY') static function SetScrollFromPosY(_posY : Float, _center_y_ratio : Float = 0.5) : Void;

    /**
      focus keyboard on the next widget. Use positive 'offset' to access sub components of a multiple component widget. Use -1 to access previous widget.
     */
    @:native('SetKeyboardFocusHere') static function SetKeyboardFocusHere(_offset : Int = 0) : Void;

    /**
      replace tree state storage with our own (if you want to manipulate it yourself, typically clear subsection of it)
     */
    @:native('SetStateStorage') static function SetStateStorage(_tree : Pointer<ImGuiStorage>) : Void;
    @:native('GetStateStorage') static function GetStateStorage() : Pointer<ImGuiStorage>;
}

/**
  Flags for ImGui::Begin()
 */
@:enum abstract ImGuiWindowFlags(Int) from Int to Int
{
    /**
      Disable title-bar
     */
    var NoTitleBar = 1 << 0;
    /**
      Disable user resizing with the lower-right grip
     */
    var NoResize = 1 << 1;
    /**
      Disable user moving the window
     */
    var NoMove = 1 << 2;
    /**
      Disable scrollbars (window can still scroll with mouse or programatically)
     */
    var NoScrollbar = 1 << 3;
    /**
      Disable user vertically scrolling with mouse wheel
     */
    var NoScrollWithMouse = 1 << 4;
    /**
      Disable user collapsing window by double-clicking on it
     */
    var NoCollapse = 1 << 5;
    /**
      Resize every window to its content every frame
     */
    var AlwaysAutoResize = 1 << 6;
    /**
      Never load/save settings in .ini file
     */
    var NoSavedSettings = 1 << 8;
    /**
      Disable catching mouse or keyboard inputs, hovering test with pass through.
     */
    var NoInputs = 1 << 9;
    /**
      Has a menu-bar
     */
    var MenuBar = 1 << 10;
    /**
      Allow horizontal scrollbar to appear (off by default). You may use SetNextWindowContentSize(ImVec2(width,0.0f));
      
      prior to calling Begin() to specify width. Read code in imgui_demo in the "Horizontal Scrolling" section.
     */
    var HorizontalScrollbar = 1 << 11;
    /**
      Disable taking focus when transitioning from hidden to visible state
     */
    var NoFocusOnAppearing = 1 << 12;
    /**
      Disable bringing window to front when taking focus (e.g. clicking on it or programatically giving it focus)
     */
    var NoBringToFrontOnFocus = 1 << 13;
    /**
      Always show vertical scrollbar (even if ContentSize.y < Size.y)
     */
    var AlwaysVerticalScrollbar = 1 << 14;
    /**
      Always show horizontal scrollbar (even if ContentSize.x < Size.x)
     */
    var AlwaysHorizontalScrollbar = 1 << 15;
    /**
      Ensure child windows without border uses style.WindowPadding (ignored by default for non-bordered child windows, because more convenient)
     */
    var AlwaysUseWindowPadding = 1 << 16;
    /**
      (WIP) Enable resize from any corners and borders. Your back-end needs to honor the different values of io.MouseCursor set by imgui.
     */
    var ResizeFromAnySide = 1 << 17;
}
