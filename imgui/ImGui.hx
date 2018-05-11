package imgui;

import cpp.Float32;
import cpp.Pointer;
import cpp.RawPointer;
import cpp.ConstCharStar;
import cpp.Reference;
import cpp.Callable;
import cpp.Char;
import imgui.*;
import imgui.callback.*;
import imgui.draw.*;
import imgui.font.*;
import imgui.util.*;

// Typedefs
typedef ImU32 = UInt;
typedef ImGuiID = UInt;
typedef ImWchar = cpp.UInt16;
typedef ImTextureID = cpp.RawPointer<cpp.Void>;
typedef ImGuiColumnsFlags = Int;

typedef ImGuiSizeCallback = Callable<Pointer<ImGuiSizeCallbackData>->Void>;

@:keep
@:include('linc_imgui.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('imgui'))
#end
extern class ImGui
{
    // Misc
    @:native('ImGui::linc::resolveVoidStar') static function getVoidStar(_ptr : cpp.RawPointer<cpp.Void>) : cpp.ConstCharStar;
    @:native('ImGui::linc::createVoidStar') static function createVoidStar(_string : String) : cpp.RawPointer<cpp.Void>;

    //------\\
    //      \\
    // Main \\
    //      \\
    //------\\

    @:overload(function() : RawPointer<ImGuiContext> {})
    @:native('ImGui::CreateContext') static function createContext(_sharedFontAtlas : RawPointer<ImFontAtlas>) : RawPointer<ImGuiContext>;

    @:overload(function() : Void {})
    @:native('ImGui::DestroyContext') static function destroyContext(_context : RawPointer<ImGuiContext>) : Void;

    @:native('ImGui::SetCurrentContext')              static function setCurrentContext(_context : RawPointer<ImGuiContext>) : Void;
    @:native('ImGui::DebugCheckVersionAndDataLayout') static function debugCheckVersionAndDataLayout(_versionStr : String, _sz_io : Int, _sz_style : Int, _sz_vec2 : Int, _sz_vec4 : Int, sz_drawvert : Int) : Bool;
    
    @:native('ImGui::GetIO')       static function getIO() : Reference<ImGuiIO>;
    @:native('ImGui::GetStyle')    static function getStyle() : Reference<ImGuiStyle>;
    @:native('ImGui::GetDrawData') static function getDrawData() : RawPointer<ImDrawData>;
    @:native('ImGui::NewFrame')    static function newFrame() : Void;
    @:native('ImGui::Render')      static function render() : Void;
    @:native('ImGui::EndFrame')    static function endFrame() : Void;

    //---------------------\\
    //                     \\
    // Demo / Debug / Info \\
    //                     \\
    //---------------------\\

    @:native('ImGui::ShowDemoWindow')    static function showDemoWindow(_open : Pointer<Bool> = null) : Void;
    @:native('ImGui::ShowMetricsWindow') static function showMetricsWindow(_open : Pointer<Bool> = null) : Void;
    @:native('ImGui::ShowStyleEditor')   static function showStyleEditor(_style : Pointer<ImGuiStyle> = null) : Void;
    @:native('ImGui::ShowStyleSelector') static function showStyleSelector(_label : String) : Bool;
    @:native('ImGui::ShowFontSelector')  static function showFontSelector(_label : String) : Void;
    @:native('ImGui::ShowUserGuide')     static function showUserGuide() : Void;

    //---------//
    //         //
    // Windows //
    //         //
    //---------//

    /**
      push window to the stack and start appending to it. see .cpp for details. return false when window is collapsed, so you can early out in your code.
      'bool _open' creates a widget on the upper-right to close the window (which sets your bool to false).
     */
    @:overload(function(_name : String) : Bool {})
    @:overload(function(_name : String, _flags : Int) : Bool {})
    @:overload(function(_name : String, _open : Bool) : Bool {})
    @:native('ImGui::linc::Begin') static function begin(_name : String, _open : Bool, _flags : ImGuiWindowFlags) : Bool;

    /**
      finish appending to current window, pop it off the window stack.
     */
    @:native('ImGui::End') static function end() : Void;

    /**
      begin a scrolling region. size==0.0f: use remaining window size, size<0.0f: use remaining window size minus abs(size).
      size>0.0f: fixed size. each axis can use a different mode, e.g. ImVec2(0,400).
     */
    @:overload(function(_intID : ImGuiID) : Bool {})
    @:overload(function(_intID : ImGuiID, _size : Reference<ImVec2>) : Bool {})
    @:overload(function(_intID : ImGuiID, _size : Reference<ImVec2>, _border : Bool) : Bool {})
    @:overload(function(_intID : ImGuiID, _size : Reference<ImVec2>, _border : Bool, _flags : ImGuiWindowFlags) : Bool {})
    @:overload(function(_strID : String) : Bool {})
    @:overload(function(_strID : String, _size : Reference<ImVec2>) : Bool {})
    @:overload(function(_strID : String, _size : Reference<ImVec2>, _border : Bool = false) : Bool {})
    @:native('ImGui::BeginChild') static function beginChild(_strID : String, _size : Reference<ImVec2>, _border : Bool, _flags : ImGuiWindowFlags) : Bool;
    
    @:native('ImGui::EndChild') static function endChild() : Void;

    /**
      current content boundaries (typically window boundaries including scrolling, or current column boundaries), in windows coordinates
     */
    @:native('ImGui::GetContentRegionMax') static function getContentRegionMax() : ImVec2;

    /**
      == GetContentRegionMax() - GetCursorPos()
     */
    @:native('ImGui::GetContentRegionAvail') static function getContentRegionAvail() : ImVec2;
    @:native('ImGui::GetContentRegionAvailWidth') static function getContentRegionAvailWidth() : Float32;

    /**
      content boundaries min (roughly (0,0)-Scroll), in window coordinates
     */
    @:native('ImGui::GetWindowContentRegionMin') static function getWindowContentRegionMin() : ImVec2;

    /**
      content boundaries max (roughly (0,0)+Size-Scroll) where Size can be override with SetNextWindowContentSize(), in window coordinates
     */
    @:native('ImGui::GetWindowContentRegionMax') static function getWindowContentRegionMax() : ImVec2;
    @:native('ImGui::GetWindowContentRegionWidth') static function getWindowContentRegionWidth() : Float32;

    /**
      get rendering command-list if you want to append your own draw primitives
     */
    @:native('ImGui::GetWindowDrawList') static function getWindowDrawList() : RawPointer<ImDrawList>;

    /**
      get current window position in screen space (useful if you want to do your own drawing via the DrawList api)
     */
    @:native('ImGui::GetWindowPos') static function getWindowPos() : ImVec2;
    @:native('ImGui::GetWindowSize') static function getWindowSize() : ImVec2;
    @:native('ImGui::GetWindowWidth') static function getWindowWidth() : Float32;
    @:native('ImGui::GetWindowHeight') static function getWindowHeight() : Float32;
    @:native('ImGui::IsWindowCollapsed') static function isWindowCollapsed() : Bool;
    @:native('ImGui::IsWindowAppearing') static function isWindowAppearing() : Bool;

    /**
      per-window font scale. Adjust IO.FontGlobalScale if you want to scale all windows
     */
    @:native('ImGui::SetWindowFontScale') static function setWindowFontScale(_scale : Float32) : Void;

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
    @:native('ImGui::SetNextWindowSizeConstraints') static function setNextWindowSizeConstraints(_sizeMin : Reference<ImVec2>, _sizeMax : Reference<ImVec2>, _customCallback : ImGuiSizeCallback = null, _customCallbackData : RawPointer<cpp.Void> = null) : Void;

    /**
      set next window content size (enforce the range of scrollbars). set axis to 0.0f to leave it automatic. call before Begin()
     */
    @:native('ImGui::SetNextWindowContentSize') static function setNextWindowContentSize(_size : Reference<ImVec2>) : Void;

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

    /**
      get scrolling amount [0..GetScrollMaxX()]
     */
    @:native('ImGui::GetScrollX') static function GetScrollX() : Float32;

    /**
      get scrolling amount [0..GetScrollMaxY()]
     */
    @:native('ImGui::GetScrollY') static function GetScrollY() : Float32;

    /**
      get maximum scrolling amount ~~ ContentSize.X - WindowSize.X
     */
    @:native('ImGui::GetScrollMaxX') static function GetScrollMaxX() : Float32;

    /**
      get maximum scrolling amount ~~ ContentSize.Y - WindowSize.Y
     */
    @:native('ImGui::GetScrollMaxY') static function GetScrollMaxY() : Float32;

    /**
      set scrolling amount [0..GetScrollMaxX()]
     */
    @:native('ImGui::SetScrollX') static function SetScrollX(_scrollX : Float32) : Void;

    /**
      set scrolling amount [0..GetScrollMaxY()]
     */
    @:native('ImGui::SetScrollY') static function SetScrollY(_scrollY : Float32) : Void;

    /**
      adjust scrolling amount to make current cursor position visible. center_y_ratio=0.0: top, 0.5: center, 1.0: bottom.
     */
    @:native('ImGui::SetScrollHere') static function SetScrollHere(_center_y_ratio : Float32 = 0.5) : Void;

    /**
      adjust scrolling amount to make given position valid. use GetCursorPos() or GetCursorStartPos()+offset to get valid positions.
     */
    @:native('ImGui::SetScrollFromPosY') static function SetScrollFromPosY(_posY : Float32, _center_y_ratio : Float32 = 0.5) : Void;

    /**
      replace tree state storage with our own (if you want to manipulate it yourself, typically clear subsection of it)
     */
    @:native('ImGui::SetStateStorage') static function SetStateStorage(_tree : Pointer<ImGuiStorage>) : Void;
    @:native('ImGui::GetStateStorage') static function GetStateStorage() : Pointer<ImGuiStorage>;

    //-------------------------//
    //                         //
    // Shared Parameters Stack //
    //                         //
    //-------------------------//

    /**
      use NULL as a shortcut to push default font
     */
    @:native('ImGui::PushFont') static function pushFont(_font : Pointer<ImFont>) : Void;
    @:native('ImGui::PopFont') static function popFont() : Void;

    @:overload(function(_idx : ImGuiCol, col : ImVec4) : Void {})
    @:native('ImGui::PushStyleColor') static function pushStyleColorVal(_idx : ImGuiCol, col : ImU32) : Void;

    @:overload(function() : Void {})
    @:native('ImGui::PopStyleColor') static function popStyleColor(_count : Int) : Void;

    @:overload(function(_idx : ImGuiStyleVar, _val : ImVec2) : Void {})
    @:native('ImGui::PushStyleVar') static function pushStyleVarVal(_idx : ImGuiStyleVar, _val : Float32) : Void;

    @:overload(function() : Void {})
    @:native('ImGui::PopStyleVar') static function popStyleVar(_count : Int = 1) : Void;

    /**
      retrieve style color as stored in ImGuiStyle structure. use to feed back into PushStyleColor(), otherwhise use GetColorU32() to get style color + style alpha.
     */
    @:native('ImGui::GetStyleColorVec4') static function getStyleColorVec4(_idx : ImGuiCol) : Reference<ImVec4>;

    /**
      get current font
     */
    @:native('ImGui::GetFont') static function getFont() : Pointer<ImFont>;

    /**
      get current font size (= height in pixels) of current font with current scale applied
     */
    @:native('ImGui::GetFontSize') static function getFontSize() : Float32;

    /**
      get UV coordinate for a while pixel, useful to draw custom shapes via the ImDrawList API
     */
    @:native('ImGui::GetFontTexUvWhitePixel') static function getFontTexUvWhitePixel() : ImVec2;

    /**
      retrieve given style color with style alpha applied and optional extra alpha multiplier
     */
    @:overload(function(_col : ImU32) : ImU32 {})
    @:overload(function(_col : ImVec4) : ImU32 {})
    @:overload(function(_idx : ImGuiCol) : ImU32 {})
    @:native('ImGui::GetColorU32') static function getColorU32(_idx : ImGuiCol, _alphaMul : Float32) : ImU32;

    //---------------------------------//
    //                                 //
    // Current Window Parameters Stack //
    //                                 //
    //---------------------------------//

    /**
      width of items for the common item+label case, pixels. 0.0f = default to ~2/3 of windows width, >0.0f: width in pixels,
      <0.0f align xx pixels to the right of window (so -1.0f always align width to the right side)
     */
    @:native('ImGui::PushItemWidth') static function pushItemWidth(_itemWidth : Float32) : Void;
    @:native('ImGui::PopItemWidth') static function popItemWidth() : Void;

    /**
      width of item given pushed settings and current cursor position
     */
    @:native('ImGui::CalcItemWidth') static function calcItemWidth() : Float32;

    /**
      word-wrapping for Text*() commands. < 0.0f: no wrapping; 0.0f: wrap to end of window (or column);
      > 0.0f: wrap at 'wrap_pos_x' position in window local space
     */
    @:overload(function(_wrapPosX : Int) : Void {})
    @:native('ImGui::PushTextWrapPos') static function pushTextWrapPos(_wrapPosX : Int) : Void;
    @:native('ImGui::PopTextWrapPos') static function popTextWrapPos() : Void;

    /**
      allow focusing using TAB/Shift-TAB, enabled by default but you can disable it for certain widgets
     */
    @:native('ImGui::PushAllowKeyboardFocus') static function pushAllowKeyboardFocus(_allowKeyboardFocus : Bool) : Void;
    @:native('ImGui::PopAllowKeyboardFocus') static function popAllowKeyboardFocus() : Void;

    /**
      in 'repeat' mode, Button*() functions return repeated true in a typematic manner (using io.KeyRepeatDelay/io.KeyRepeatRate setting).
      
      Note that you can call IsItemActive() after any Button() to tell if the button is held in the current frame.
     */
    @:native('ImGui::PushButtonRepeat') static function pushButtonRepeat(_repeat : Bool) : Void;
    @:native('ImGui::PopButtonRepeat') static function popButtonRepeat() : Void;

    //-----------------//
    //                 //
    // Cursor / Layout //
    //                 //
    //-----------------//

    /**
      separator, generally horizontal. inside a menu bar or in horizontal layout mode, this becomes a vertical separator.
     */
    @:native('ImGui::Separator') static function separator() : Void;

    /**
      call between widgets or groups to layout them horizontally
     */
    @:native('ImGui::SameLine') static function sameLine(_posX : Float32 = 0, _spacingW : Float32 = -1) : Void;

    /**
      undo a SameLine()
     */
    @:native('ImGui::NewLine') static function newLine() : Void;

    /**
      add vertical spacing
     */
    @:native('ImGui::Spacing') static function spacing() : Void;

    /**
      add a dummy item of given size
     */
    @:native('ImGui::Dummy') static function dummy(_size : Reference<ImVec2>) : Void;

    /**
      move content position toward the right, by style.IndentSpacing or indent_w if >0
     */
    @:native('ImGui::Indent') static function indent(_indexW : Float32 = 0) : Void;

    /**
      move content position back to the left, by style.IndentSpacing or indent_w if >0
     */
    @:native('ImGui::Unindent') static function unindent(_indentW : Float32 = 0) : Void;

    /**
      lock horizontal starting position + capture group bounding box into one "item" (so you can use IsItemHovered() or layout primitives such as SameLine() on whole group, etc.)
     */
    @:native('ImGui::BeginGroup') static function beginGroup() : Void;
    @:native('ImGui::EndGroup') static function endGroup() : Void;

    /**
      cursor position is relative to window position
     */
    @:native('ImGui::GetCursorPos') static function getCursorPos() : ImVec2;
    @:native('ImGui::GetCursorPosX') static function getCursorPosX() : Float32;
    @:native('ImGui::GetCursorPosY') static function getCursorPosY() : Float32;
    @:native('ImGui::SetCursorPos') static function setCursorPos(_localPos : Reference<ImVec2>) : Void;
    @:native('ImGui::SetCursorPosX') static function setCursorPosX(_x : Float32) : Void;
    @:native('ImGui::SetCursorPosY') static function setCursorPosY(_y : Float32) : Void;

    /**
      initial cursor position
     */
    @:native('ImGui::GetCursorStartPos') static function getCursorStartPos() : ImVec2;

    /**
      cursor position in absolute screen coordinates [0..io.DisplaySize] (useful to work with ImDrawList API)
     */
    @:native('ImGui::GetCursorScreenPos') static function getCursorScreenPos() : ImVec2;

    /**
      cursor position in absolute screen coordinates [0..io.DisplaySize]
     */
    @:native('ImGui::SetCursorScreenPos') static function setCursorScreenPos(_pos : Reference<ImVec2>) : Void;

    /**
      vertically align/lower upcoming text to FramePadding.y so that it will aligns to upcoming widgets (call if you have text on a line before regular widgets)
     */
    @:native('ImGui::AlignTextToFramePadding') static function alignTextToFramePadding() : Void;

    /**
      height of font == GetWindowFontSize()
     */
    @:native('ImGui::GetTextLineHeight') static function getTextLineHeight() : Float32;

    /**
      distance (in pixels) between 2 consecutive lines of text == GetWindowFontSize() + GetStyle().ItemSpacing.y
     */
    @:native('ImGui::GetTextLineHeightWithSpacing') static function getTextLineHeightWithSpacing() : Float32;

    /**
      distance (in pixels) between 2 consecutive lines of standard height widgets == GetWindowFontSize() + GetStyle().FramePadding.y*2 + GetStyle().ItemSpacing.y
     */
    @:native('ImGui::GetFrameHeightWithSpacing') static function getFrameHeightWithSpacing() : Float32;

    //---------//
    //         //
    // Columns //
    //         //
    //---------//

    @:overload(function() : Void {})
    @:overload(function(_count : Int) : Void {})
    @:overload(function(_count : Int, _id : String) : Void {})
    @:native('ImGui::Columns') static function columns(_count : Int, _id : String, _border : Bool) : Void;

    /**
      next column, defaults to current row or next row if the current row is finished
     */
    @:native('ImGui::NextColumn') static function nextColumn() : Void;
    @:native('ImGui::GetColumnIndex') static function getColumnIndex() : Int;

    /**
      get column width (in pixels). pass -1 to use current column
     */
    @:native('ImGui::GetColumnWidth') static function getColumnWidth(_columnIndex : Int = -1) : Float32;

    /**
      set column width (in pixels). pass -1 to use current column
     */
    @:native('ImGui::SetColumnWidth') static function setColumnWidth(_columnIndex : Int, _width : Float32) : Void;

    /**
      get position of column line (in pixels, from the left side of the contents region).

      pass -1 to use current column, otherwise 0..GetColumnsCount() inclusive. column 0 is typically 0.0f
     */
    @:native('ImGui::GetColumnOffset') static function getColumnOffset(_columnIndex : Int = -1) : Float32;

    /**
      set position of column line (in pixels, from the left side of the contents region). pass -1 to use current column
     */
    @:native('ImGui::SetColumnOffset') static function setColumnOffset(_columnIndex : Int, _offsetX : Float32) : Void;
    @:native('ImGui::GetColumnsCount') static function getColumnsCount() : Int;

    //-----------\\
    //           \\
    // ID Scopes \\
    //           \\
    //-----------\\

    @:native('ImGui::PopID') static function popID() : Void;

    /**
      push identifier into the ID stack. IDs are hash of the entire stack!
     */
    @:overload(function(_intId : Int) : Void {})
    @:overload(function(_strId : String) : Void {})
    @:native('ImGui::PushID') static function pushID(_strIdBegin : String, _strIdEnd : String) : Void;

    /**
      calculate unique ID (hash of whole ID stack + given parameter). e.g. if you want to query into ImGuiStorage yourself
     */
    @:overload(function(_strId : String) : ImGuiID {})
    @:native('ImGui::GetID') static function getID(_strIdBegin : String, _strIdEnd : String) : ImGuiID;

    //----------------//
    //                //
    // Widgets : Text //
    //                //
    //----------------//

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

    //----------------//
    //                //
    // Widgets : Main //
    //                //
    //----------------//

    @:native('ImGui::SmallButton')     static function smallButton(_label : String) : Bool;
    @:native('ImGui::InvisibleButton') static function invisibleButton(_strId : String, _size : ImVec2 = null) : Bool;

    @:overload(function(_label : String) : Bool {})
    @:native('ImGui::Button') static function button(_label : String, _size : ImVec2) : Bool;

    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2) : Void {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2) : Void {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2) : Void {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _tintCol : ImVec4) : Void {})
    @:native('ImGui::Image') static function image(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _tintCol : ImVec4, _borderCol : ImVec4) : Void;

    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2) : Bool {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2) : Bool {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2) : Bool {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _framePadding : Int) : Bool {})
    @:overload(function(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _framePadding : Int, _bgCol : ImVec4) : Bool {})
    @:native('ImGui::ImageButton') static function imageButton(_userTextureId : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _framePadding : Int, _bgCol : ImVec4, _tintCol : ImVec4) : Bool;

    @:native('ImGui::linc::Checkbox') static function checkbox(_label : String, _v : Bool) : Bool;

    @:overload(function(_label : String, _active : Bool) : Bool {})
    @:native('ImGui::linc::RadioButton') static function radioButton(_label : String, _v : Int, _vButton : Int) : Bool;

    @:overload(function(_label : String, _values : Array<Float32>) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float32) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float32, _scaleMax : Float32) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float32, _scaleMax : Float32, _graphSize : ImVec2) : Void {})
    @:native('ImGui::linc::PlotLines') static function plotLines(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float32, _scaleMax : Float32, _graphSize : ImVec2, _stride : Int) : Void;

    @:overload(function(_label : String, _values : Array<Float32>) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float32) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float32, _scaleMax : Float32) : Void {})
    @:overload(function(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float32, _scaleMax : Float32, _graphSize : ImVec2) : Void {})
    @:native('ImGui::linc::PlotHistogram') static function plotHistogram(_label : String, _values : Array<Float32>, _valuesOffset : Int, _overlayText : String, _scaleMin : Float32, _scaleMax : Float32, _graphSize : ImVec2, _stride : Int) : Void;

    @:overload(function(_fraction : Float32) : Void {})
    @:overload(function(_fraction : Float32, _sizeArg : ImVec2) : Void {})
    @:native('ImGui::ProgressBar') static function progressBar(_fraction : Float32, _sizeArg : ImVec2, _overlay : String) : Void;

    //---------------------//
    //                     //
    // Widgets : Combo Box //
    //                     //
    //---------------------//

    @:overload(function(_label : String, _previewValue : String) : Bool {})
    @:native('ImGui::BeginCombo') static function beginCombo(_label : String, _previewValue : String, _flags : ImGuiComboFlags) : Bool;

    @:native('ImGui::EndCombo') static function endCombo() : Void;

    //-----------------//
    //                 //
    // Widgets : Drags //
    //                 //
    //-----------------//

    @:overload(function(_label : String, _value : Float32) : Bool {})
    @:overload(function(_label : String, _value : Float32, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _value : Float32, _vSpeed : Float32, _vMin : Float32) : Bool {})
    @:overload(function(_label : String, _value : Float32, _vSpeed : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, _value : Float32, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::DragFloat')  static function dragFloat(_label : String, _value : Float32, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _power : Float32) : Bool;

    @:overload(function(_label : String, _v : Array<Float32>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::linc::DragFloat2') static function dragFloat2(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _power : Float32) : Bool;

    @:overload(function(_label : String, _v : Array<Float32>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::linc::DragFloat3') static function dragFloat3(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _power : Float32) : Bool;

    @:overload(function(_label : String, _v : Array<Float32>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : ConstCharStar) : Bool {})
    @:native('ImGui::linc::DragFloat4') static function dragFloat4(_label : String, _v : Array<Float32>, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _power : Float32) : Bool;

    @:overload(function(_label : String, _vCurrentMin : Float32, _vCurrentMax : Float32) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float32, _vCurrentMax : Float32, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float32, _vCurrentMax : Float32, _vSpeed : Float32, _vMin : Float32) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float32, _vCurrentMax : Float32, _vSpeed : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float32, _vCurrentMax : Float32, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Float32, _vCurrentMax : Float32, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _displayFormatMax : String) : Bool {})
    @:native('ImGui::linc::DragFloatRange2') static function dragFloatRange2(_label : String, _vCurrentMin : Float32, _vCurrentMax : Float32, _vSpeed : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _displayFormatMax : String, _power : Float32) : Bool;

    @:overload(function(_label : String, _v : Int) : Bool {})
    @:overload(function(_label : String, _v : Int, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _v : Int, _vSpeed : Float32, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _v : Int, _vSpeed : Float32, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::DragInt')  static function dragInt(_label : String, _v : Int, _vSpeed : Float32, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float32, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float32, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::DragInt2') static function dragInt2(_label : String, _v : Array<Int>, _vSpeed : Float32, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float32, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float32, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::DragInt3')  static function dragInt3(_label : String, _v : Array<Int>, _vSpeed : Float32, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float32, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _v : Array<Int>, _vSpeed : Float32, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::DragInt4') static function dragInt4(_label : String, _v : Array<Int>, _vSpeed : Float32, _vMin : Int, _vMax : Int, _displayFormat : ConstCharStar) : Bool;

    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float32) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float32, _vMin : Int) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float32, _vMin : Int, _vMax : Int) : Bool {})
    @:overload(function(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float32, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::DragIntRange2') static function dragIntRange2(_label : String, _vCurrentMin : Int, _vCurrentMax : Int, _vSpeed : Float32, _vMin : Int, _vMax : Int, _displayFormat : String, _displayFormatMax : String) : Bool;

    //-------------------------------//
    //                               //
    // Widgets : Input with Keyboard //
    //                               //
    //-------------------------------//

    @:overload(function(_label : String, _buffer : Array<Char>) : Bool {})
    @:native('ImGui::linc::InputText') static function inputText(_label : String, _buffer : Array<Char>, _flags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _buffer : Array<Char>) : Bool {})
    @:overload(function(_label : String, _buffer : Array<Char>, _size : ImVec2) : Bool {})
    @:native('ImGui::linc::InputTextMultiline') static function inputTextMultiline(_label : String, _buffer : Array<Char>, _size : ImVec2, _flags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Float32) : Bool {})
    @:overload(function(_label : String, _v : Float32, _step : Float32) : Bool {})
    @:overload(function(_label : String, _v : Float32, _step : Float32, _stepFast : Float32) : Bool {})
    @:overload(function(_label : String, _v : Float32, _step : Float32, _stepFast : Float32, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::linc::InputFloat') static function inputFloat(_label : String, _v : Float32, _step : Float32, _stepFast : Float32, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Float32>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::linc::InputFloat2') static function inputFloat2(_label : String, _v : Array<Float32>, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Float32>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::linc::InputFloat3') static function inputFloat3(_label : String, _v : Array<Float32>, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Float32>) : Bool {})
    @:overload(function(_label : String, _v : Array<Float32>, _decimalPrecision : Int) : Bool {})
    @:native('ImGui::linc::InputFloat4') static function inputFloat4(_label : String, _v : Array<Float32>, _decimalPrecision : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Int) : Bool {})
    @:overload(function(_label : String, _v : Int, _step : Int) : Bool {})
    @:overload(function(_label : String, _v : Int, _step : Int, _stepFast : Int) : Bool {})
    @:native('ImGui::linc::InputInt') static function inputInt(_label : String, _v : Int, _step : Int, _stepFast : Int, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:native('ImGui::linc::InputInt2') static function inputInt2(_label : String, _v : Array<Int>, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:native('ImGui::linc::InputInt3') static function inputInt3(_label : String, _v : Array<Int>, _extraFlags : ImGuiInputTextFlags) : Bool;

    @:overload(function(_label : String, _v : Array<Int>) : Bool {})
    @:native('ImGui::linc::InputInt4') static function inputInt4(_label : String, _v : Array<Int>, _extraFlags : ImGuiInputTextFlags) : Bool;

    /**
      map ImGuiKey_* values into user's key index. == io.KeyMap[key]
     */
    @:native('ImGui::GetKeyIndex') static function getKeyIndex(_imgui_key : ImGuiKey) : Int;

    /**
      is key being held. == io.KeysDown[user_key_index]. note that imgui doesn't know the semantic of each entry of io.KeyDown[].
      Use your own indices/enums according to how your backend/engine stored them into KeyDown[]!
     */
    @:native('ImGui::IsKeyDown') static function isKeyDown(_userKeyIndex : Int) : Bool;

    /**
      was key pressed (went from !Down to Down). if repeat=true, uses io.KeyRepeatDelay / KeyRepeatRate
     */
    @:native('ImGui::IsKeyPressed') static function isKeyPressed(_userKeyIndex : Int, _repeat : Bool = true) : Bool;

    /**
      was key released (went from Down to !Down)..
     */
    @:native('ImGui::IsKeyReleased') static function isKeyReleased(_userKeyIndex : Int) : Bool;

    /**
      uses provided repeat rate/delay. return a count, most often 0 or 1 but might be >1 if RepeatRate is small enough that DeltaTime > RepeatRate
     */
    @:native('ImGui::GetKeyPressedAmount') static function getKeyPressedAmount(_keyIndex : Int, _repeatDelay : Float32, _rate : Float32) : Int;

    /**
      is mouse button held
     */
    @:native('ImGui::IsMouseDown') static function isMouseDown(_button : Int) : Bool;

    /**
      is any mouse button held.
     */
    @:native('ImGui::IsAnyMouseDown') static function isAnyMouseDown() : Bool;

    /**
      did mouse button clicked (went from !Down to Down)
     */
    @:native('ImGui::IsMouseClicked') static function isMouseClicked(_button : Int, _repeat : Bool = false) : Bool;

    /**
      did mouse button double-clicked. a double-click returns false in IsMouseClicked(). uses io.MouseDoubleClickTime.
     */
    @:native('ImGui::IsMouseDoubleClicked') static function isMouseDoubleClicked(_button : Int) : Bool;

    /**
      did mouse button released (went from Down to !Down)
     */
    @:native('ImGui::IsMouseReleased') static function isMouseReleased(_button : Int) : Bool;

    /**
      is mouse dragging. if lock_threshold < -1.0f uses io.MouseDraggingThreshold
     */
    @:native('ImGui::IsMouseDragging') static function isMouseDragging(_button : Int = 0, _lockThreshold : Float32 = -1.0) : Bool;

    /**
      is mouse hovering given bounding rect (in screen space). clipped by current clipping settings.
      disregarding of consideration of focus/window ordering/blocked by a popup.
     */
    @:native('ImGui::IsMouseHoveringRect') static function isMouseHoveringRect(_rMin : ImVec2, _rMax : ImVec2, _clip : Bool = true) : Bool;
    @:native('ImGui::IsMousePosValid') static function isMousePosValid(_mousePos : ImVec2 = null) : Bool;

    /**
      shortcut to ImGui::GetIO().MousePos provided by user, to be consistent with other calls
     */
    @:native('ImGui::GetMousePos') static function getMousePos() : ImVec2;

    /**
      retrieve backup of mouse positioning at the time of opening popup we have BeginPopup() into
     */
    @:native('ImGui::GetMousePosOnOpeningCurrentPopup') static function getMousePosOnOpeningCurrentPopup() : ImVec2;

    /**
      dragging amount since clicking. if lock_threshold < -1.0f uses io.MouseDraggingThreshold
     */
    @:native('ImGui::GetMouseDragDelta') static function getMouseDragDelta(_button : Int = 0, _lockThreshold : Float32 = -1.0) : ImVec2;
    @:native('ImGui::ResetMouseDragDelta') static function resetMouseDragDelta(_button : Int = 0) : Void;

    /**
      get desired cursor type, reset in ImGui::NewFrame(), this is updated during the frame. valid before Render().
      If you use software rendering by setting io.MouseDrawCursor ImGui will render those for you
     */
    @:native('ImGui::GetMouseCursor') static function getMouseCursor() : ImGuiMouseCursor;

    /**
      set desired cursor type
     */
    @:native('ImGui::SetMouseCursor') static function setMouseCursor(_type : ImGuiMouseCursor) : Void;

    /**
      manually override io.WantCaptureKeyboard flag next frame (said flag is entirely left for your application handle).
      
      e.g. force capture keyboard when your widget is being hovered.
     */
    @:native('ImGui::CaptureKeyboardFromApp') static function captureKeyboardFromApp(_capture : Bool = true) : Void;

    /**
      manually override io.WantCaptureMouse flag next frame (said flag is entirely left for your application handle).
     */
    @:native('ImGui::CaptureMouseFromApp') static function captureMouseFromApp(_capture : Bool = true) : Void;

    //------------------//
    //                  //
    // Widgets : Slider //
    //                  //
    //------------------//

    @:overload(function(_label : String, v : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::SliderFloat') static function sliderFloat(_label : String, v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _power : Float32) : Bool;
    
    @:overload(function(_label : String, v : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::SliderFloat2') static function sliderFloat2(_label : String, v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _power : Float32) : Bool;

    @:overload(function(_label : String, v : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::SliderFloat3') static function sliderFloat3(_label : String, v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _power : Float32) : Bool;

    @:overload(function(_label : String, v : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::SliderFloat4') static function sliderFloat4(_label : String, v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _power : Float32) : Bool;

    @:overload(function(_label : String, _vRad : Float32) : Bool {})
    @:overload(function(_label : String, _vRad : Float32, _vDegreesMin : Float32) : Bool {})
    @:native('ImGui::linc::SliderAngle') static function sliderAngle(_label : String, _vRad : Float32, _vDegreesMin : Float32, _vDegreesMax : Float32) : Bool;

    @:overload(function(_label : String, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::SliderInt') static function sliderInt(_label : String, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::SliderInt2') static function sliderInt2(_label : String, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;
    
    @:overload(function(_label : String, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::SliderInt3') static function sliderInt3(_label : String, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::SliderInt4') static function sliderInt4(_label : String, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    @:overload(function(_label : String, _size : ImVec2, _v : Float32, _vMin : Float32, _vMax : Float32) : Bool {})
    @:overload(function(_label : String, _size : ImVec2, _v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String) : Bool {})
    @:native('ImGui::linc::VSliderFloat') static function vSliderFloat(_label : String, _size : ImVec2, _v : Float32, _vMin : Float32, _vMax : Float32, _displayFormat : String, _power : Float32) : Bool;

    @:overload(function(_label : String, _size : ImVec2, _v : Int, _vMin : Int, _vMax : Int) : Bool {})
    @:native('ImGui::linc::VSliderInt') static function vSliderInt(_label : String, _size : ImVec2, _v : Int, _vMin : Int, _vMax : Int, _displayFormat : String) : Bool;

    //-----------------------------------//
    //                                   //
    // Widgets : Colour editor / pickets //
    //                                   //
    //-----------------------------------//

    @:overload(function(_label : String, _color : Array<Float32>) : Bool {})
    @:native('ImGui::linc::ColorEdit3') static function colorEdit3(_label : String, _color : Array<Float32>, _flags : ImGuiColorEditFlags) : Bool;

    @:overload(function(_label : String, _color : Array<Float32>) : Bool {})
    @:native('ImGui::linc::ColorEdit4') static function colorEdit4(_label : String, _color : Array<Float32>, _flags : ImGuiColorEditFlags) : Bool;

    @:overload(function(_label : String, _color : Array<Float32>) : Bool {})
    @:native('ImGui::linc::ColorPicker3') static function colorPicker3(_label : String, _color : Array<Float32>, _flags : ImGuiColorEditFlags) : Bool;

    @:overload(function(_label : String, _color : Array<Float32>) : Bool {})
    @:overload(function(_label : String, _color : Array<Float32>, _flags : ImGuiColorEditFlags) : Bool {})
    @:native('ImGui::linc::ColorPicker4') static function colorPicker4(_label : String, _color : Array<Float32>, _flags : ImGuiColorEditFlags, _refCol : Float32) : Bool;

    @:overload(function(_label : String, _color : ImVec4) : Bool {})
    @:overload(function(_label : String, _color : ImVec4, _flags : ImGuiColorEditFlags) : Bool {})
    @:native('ImGui::linc::ColorButton') static function colorButton(_label : String, _color : ImVec4, _flags : ImGuiColorEditFlags, _size : ImVec2) : Bool;

    @:native('ImGui::SetColorEditOptions') static function setColorEditOptions(_flags : ImGuiColorEditFlags) : Bool;

    //-----------------//
    //                 //
    // Widgets : Trees //
    //                 //
    //-----------------//

    /**
      if returning 'true' the node is open and the tree id is pushed into the id stack. user is responsible for calling TreePop().

      read the FAQ about why and how to use ID. to align arbitrary text at the same level as a TreeNode() you can use Bullet().
     */
    @:overload(function(_strId : String, _label : String) : Bool {})
    @:native('ImGui::linc::TreeNode') static function treeNode(_label : String) : Bool;

    @:overload(function(_label : String) : Bool {})
    @:overload(function(_label : String, _flags : ImGuiTreeNodeFlags) : Bool {})
    @:native('ImGui::linc::TreeNodeEx') static function treeNodeEx(_strId : String, _flags : ImGuiTreeNodeFlags, _label : String) : Bool;

    /**
      Indent()+PushId(). Already called by TreeNode() when returning true, but you can call Push/Pop yourself for layout purpose
     */
    @:native('ImGui::TreePush') static function treePush(_strId : String) : Void;

    /**
      ~ Unindent()+PopId()
     */
    @:native('ImGui::TreePop') static function treePop() : Void;

    /**
      advance cursor x position by GetTreeNodeToLabelSpacing()
     */
    @:native('ImGui::TreeAdvanceToLabelPos') static function treeAdvanceToLabelPos() : Void;

    /**
      horizontal distance preceding label when using TreeNode*() or Bullet() == (g.FontSize + style.FramePadding.x*2) for a regular unframed TreeNode
     */
    @:native('ImGui::GetTreeNodeToLabelSpacing') static function getTreeNodeToLabelSpacing() : Float32;

    /**
      set next TreeNode/CollapsingHeader open state.
     */
    @:overload(function(_isOpen : Bool) : Void {})
    @:native('ImGui::SetNextTreeNodeOpen') static function setNextTreeNodeOpen(_isOpen : Bool, _cond : ImGuiCond) : Void;

    /**
      if returning 'true' the header is open. doesn't indent nor push on ID stack. user doesn't have to call TreePop().

      when 'p_open' isn't NULL, display an additional small close button on upper right of the header
     */
    @:overload(function(_label : String, _open : Bool, _flags : ImGuiTreeNodeFlags) : Bool {})
    @:overload(function(_label : String, _open : Bool) : Bool {})
    @:overload(function(_label : String) : Bool {})
    @:native('ImGui::linc::CollapsingHeader') static function collapsingHeader(_label : String, _flags : ImGuiTreeNodeFlags) : Bool;

    //------------------------------//
    //                              //
    // Widgets : Selectable / Lists //
    //                              //
    //------------------------------//

    /**
      size.x==0.0: use remaining width, size.x>0.0: specify width. size.y==0.0: use label height, size.y>0.0: specify height
     */
    @:overload(function(_label : String, _selected : Bool) : Bool {})
    @:overload(function(_label : String, _selected : Bool, _flags : ImGuiSelectableFlags) : Bool {})
    @:native('ImGui::linc::SelectableRef') static function selectableRef(_label : String, _selected : Bool, _flags : ImGuiSelectableFlags, _size : ImVec2) : Bool;


    @:overload(function(_label : String) : Bool {})
    @:overload(function(_label : String, _selected : Bool) : Bool {})
    @:overload(function(_label : String, _selected : Bool, _flags : ImGuiSelectableFlags) : Bool {})
    @:native('ImGui::linc::SelectableSet') static function selectableSet(_label : String, _selected : Bool, _flags : ImGuiSelectableFlags, _size : ImVec2) : Bool;

    @:overload(function(_label : String, _currentItem : Int, _items : Array<String>) : Bool {})
    @:native('ImGui::linc::ListBox') static function listBox(_label : String, _currentItem : Int, _items : Array<String>, _heightInItems : Int) : Bool;

    /**
      use if you want to reimplement ListBox() will custom data or interactions. make sure to call ListBoxFooter() afterwards.
     */
    @:overload(function(_label : ConstCharStar, _itemsCount : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _itemsCount : Int, _heightInItems : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _size : ImVec2) : Bool {})
    @:native('ImGui::ListBoxHeader') static function listBoxHeader(_label : ConstCharStar, _size : ImVec2) : Bool;

    /**
      terminate the scrolling region
     */
    @:native('ImGui::ListBoxFooter') static function listBoxFooter() : Void;

    //-----------------\\
    //                 \\
    // Value functions \\
    //                 \\
    //-----------------\\

    @:overload(function(_prefix : String, _v : Bool ) : Void {})
    @:overload(function(_prefix : String, _v : Int  ) : Void {})
    @:overload(function(_prefix : String, _v : Float32) : Void {})
    @:native('ImGui::Value') static function value(_prefix : String, _v : Float32, _floatFormat : String) : Void;

    //-------------------\\
    //                   \\
    // Tooptip functions \\
    //                   \\
    //-------------------\\
    
    @:native('ImGui::linc::SetTooltip') static function setTooltip(_text : String) : Void;
    @:native('ImGui::BeginTooltip')     static function beginTooltip() : Void;
    @:native('ImGui::EndTooltip')       static function endTooltip() : Void;

    //-------//
    //       //
    // Menus //
    //       //
    //-------//

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

    //--------//
    //        //
    // Popups //
    //        //
    //--------//

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

    //---------------\\
    //               \\
    // Log functions \\
    //               \\
    //---------------\\

    @:native('ImGui::LogToTTY')       static function logToTTY(_maxDepth : Int = -1) : Void;
    @:native('ImGui::LogToFile')      static function logToFile(_maxDepth : Int = -1, _filename : String = null) : Void;
    @:native('ImGui::LogToClipboard') static function logToClipboard(_maxDepth : Int = -1) : Void;
    @:native('ImGui::LogFinish')      static function logFinish() : Void;
    @:native('ImGui::LogButtons')     static function logButtons() : Void;
    @:native('ImGui::linc::LogText')  static function logText(_text : String) : Void;

    //--------------------\\
    //                    \\
    // Clipping functions \\
    //                    \\
    //--------------------\\

    @:native('ImGui::PushClipRect') static function pushClipRect(_clipRectMin : ImVec2, _clipRectMax : ImVec2, _intersectWithCurrentClip : Bool) : Void;
    @:native('ImGui::PopClipRect')  static function popClipRect() : Void;

    //-------------------------\\
    //                         \\
    // Style Changer functions \\
    //                         \\
    //-------------------------\\

    @:native('ImGui::StyleColorsClassic') static function styleColorsClassic(_dst : Pointer<ImGuiStyle> = null) : Void;
    @:native('ImGui::StyleColorsDark')    static function styleColorsDark(_dst : Pointer<ImGuiStyle> = null) : Void;
    @:native('ImGui::StyleColorsLight')   static function styleColorsLight(_dst : Pointer<ImGuiStyle> = null) : Void;

    //-----------------//
    //                 //
    // Focus functions //
    //                 //
    //-----------------//

    @:native('ImGui::SetItemDefaultFocus')  static function setItemDefaultFocus() : Void;
    @:native('ImGui::SetKeyboardFocusHere') static function SetKeyboardFocusHere(_offset : Int = 0) : Void;

    //---------------------\\
    //                     \\
    // Utilities functions \\
    //                     \\
    //---------------------\\

    /**
      is the last item hovered by mouse (and usable)?
     */
    @:native('ImGui::IsItemHovered') static function isItemHovered(_flags : ImGuiHoveredFlags = 0) : Bool;

    /**
      is the last item active? (e.g. button being held, text field being edited- items that don't interact will always return false)
     */
    @:native('ImGui::IsItemActive') static function isItemActive() : Bool;

    /**
      is the last item focused for keyboard/gamepad navigation?
     */
    @:native('ImGui::IsItemFocused') static function isItemFocused() : Bool;

    /**
      is the last item clicked? (e.g. button/node just clicked on)
     */
    @:native('ImGui::IsItemClicked') static function isItemClicked(_mouseButton : Int = 0) : Bool;

    /**
      is the last item visible? (aka not out of sight due to clipping/scrolling.)
     */
    @:native('ImGui::IsItemVisible')    static function isItemVisible() : Bool;
    @:native('ImGui::IsAnyItemHovered') static function isAnyItemHovered() : Bool;
    @:native('ImGui::IsAnyItemActive')  static function isAnyItemActive() : Bool;

    /**
      get bounding rect of last item in screen space
     */
    @:native('ImGui::GetItemRectMin')  static function getItemRectMin() : ImVec2;
    @:native('ImGui::GetItemRectMax')  static function getItemRectMax() : ImVec2;
    @:native('ImGui::GetItemRectSize') static function getItemRectSize() : ImVec2;

    /**
      allow last item to be overlapped by a subsequent item. sometimes useful with invisible buttons, selectables, etc. to catch unused area.
     */
    @:native('ImGui::SetItemAllowOverlap') static function setItemAllowOverlap() : Void;

    /**
      is current Begin()-ed window focused?
     */
    @:native('ImGui::IsWindowFocused') static function isWindowFocused(_flags : ImGuiFocusedFlags = 0) : Bool;

    /**
      is current Begin()-ed window hovered (and typically: not blocked by a popup/modal)?
     */
    @:native('ImGui::IsWindowHovered') static function isWindowHovered(_flags : ImGuiHoveredFlags = 0) : Bool;

    /**
      test if rectangle (of given size, starting from cursor position) is visible / not clipped.

      test if rectangle (in screen space) is visible / not clipped. to perform coarse clipping on user's side.
     */
    @:overload(function(_rectMin : ImVec2, _rectMax : ImVec2) : Bool {})
    @:native('ImGui::IsRectVisible') static function isRectVisible(_size : ImVec2) : Bool;

    @:native('ImGui::GetTime')       static function getTime() : Float32;
    @:native('ImGui::GetFrameCount') static function getFrameCount() : Int;
    @:native('ImGui::GetOverlayDrawList')    static function getOverlayDrawList()    : RawPointer<ImDrawList>;
    @:native('ImGui::GetDrawListSharedData') static function getDrawListSharedData() : RawPointer<ImDrawListSharedData>;
    @:native('ImGui::GetStyleColorName') static function getStyleColorName(_idx : ImGuiCol) : String;

    /**
      utility to find the closest point the last item bounding rectangle edge. useful to visually link items.
     */
    @:native('ImGui::CalcItemRectClosestPoint') static function calcItemRectClosestPoint(_pos : ImVec2, _onEdge : Bool = false, _outward : Float32 = 0) : ImVec2;
    @:native('ImGui::CalcTextSize') static function calcTextSize(_text : String, _textEnd : String = null, _hideTextAfterDoubleHash : Bool = false, _wrapWidth : Float32 = -1) : ImVec2;

    /**
      calculate coarse clipping for large list of evenly sized items. Prefer using the ImGuiListClipper higher-level helper if you can.
     */
    @:native('ImGui::linc::CalcListClipping') static function calcListClipping(_itemsCount : Int, _itemsHeight : Float32, _outItemsDisplayStart : Int, _outItemsDisplayEnd : Int) : Void;

    /**
      helper to create a child window / scrolling region that looks like a normal widget frame
     */
    @:native('ImGui::BeginChildFrame') static function beginChildFrame(_id : ImGuiID, _size : ImVec2, _extraFlags : ImGuiWindowFlags = 0) : Bool;
    @:native('ImGui::EndChildFrame')   static function EndChildFrame() : Void;

    @:native('ImGui::ColorConvertU32ToFloat4') static function colorConvertU32ToFloat4(_in : ImU32) : ImVec4;
    @:native('ImGui::ColorConvertFloat4ToU32') static function colorConvertFloat4ToU32(_in : ImVec4) : ImU32;
    @:native('ImGui::ColorConvertRGBtoHSV') static function colorConvertRGBtoHSV(_r : Float32, _g : Float32, _b : Float32, _outH : Float32, _outS : Float32, _outV : Float32) : Void;
    @:native('ImGui::ColorConvertHSVtoRGB') static function colorConvertHSVtoRGB(_h : Float32, _s : Float32, _v : Float32, _outR : Float32, _outG : Float32, _outB : Float32) : Void;

    //------------------\\
    //                  \\
    // Helper functions \\
    //                  \\
    //------------------\\

    @:native('ImGui::GetClipboardText') static function getClipboardText() : String;
    @:native('ImGui::SetClipboardText') static function setClipboardText(_text : String) : Void;
}

// Globally User ImVector wrappers

@:native('ImVector<ImWchar>')
@:structAccess
@:unreflective
extern class ImVectorImWchar extends ImVector<ImWchar>
{
  //
}

@:native('ImVector<Float32>')
@:structAccess
@:unreflective
extern class ImVectorFloat extends ImVector<Float32>
{
  //
}

@:native('ImVector<unsigned short>')
@:structAccess
@:unreflective
extern class ImVectorInt extends ImVector<cpp.UInt16>
{
  //
}

//-------//
// Enums //
//-------//

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

    /**
      No gamepad/keyboard navigation within the window.
     */
    var NoNavInputs = 1 << 18;

    /**
      No focusing toward this window with gamepad/keyboard navigation (e.g. skipped by CTRL+TAB)
     */
    var NoNavFocus = 1 << 19;

    var NoNav = NoNavInputs | NoNavFocus;
}

/**
  Flags for ImGui::IsItemHovered(), ImGui::IsWindowHovered()
 */
@:enum abstract ImGuiHoveredFlags(Int) from Int to Int
{
    /**
      true if directly over the item/window, not obstructed by another window, not obstructed by an active popup or modal blocking inputs under them.
     */
    var Default = 0;

    /**
      Return true even if a popup window is normally blocking access to this item/window
     */
    var AllowWhenBlockedByPopup = 1 << 0;

    //var AllowWhenBlockedByModal = 1 << 1; // Return true even if a modal popup window is normally blocking access to this item/window. FIXME-TODO: Unavailable yet.

    /**
      Return true even if an active item is blocking access to this item/window
     */
    var AllowWhenBlockedByActiveItem = 1 << 2;

    /**
      Return true even if the position is overlapped by another window
     */
    var AllowWhenOverlapped = 1 << 3;

    /**
      Treat all child windows as the same window (for IsWindowHovered())
     */
    var FlattenChilds = 1 << 4;

    var RectOnly = 1 << AllowWhenBlockedByPopup | AllowWhenBlockedByActiveItem | AllowWhenOverlapped;
}

/**
  User fill ImGuiIO.KeyMap[] array with indices into the ImGuiIO.KeysDown[512] array
 */
@:enum abstract ImGuiKey(Int) from Int to Int
{
  var Tab = 0;
  var LeftArrow = 1;
  var RightArrow = 2;
  var UpArrow = 3;
  var DownArrow = 4;
  var PageUp = 5;
  var PageDown = 6;
  var Home = 7;
  var End = 8;
  var Insert = 9;
  var Delete = 10;
  var Backspace = 11;
  var Space = 12;
  var Enter = 13;
  var Escape = 14;
  var A = 15;
  var C = 16;
  var V = 17;
  var X = 18;
  var Y = 19;
  var Z = 20;
  var COUNT = 21;
}

/**
  Enumeration for PushStyleColor() / PopStyleColor()
 */
@:enum abstract ImGuiCol(Int) from Int to Int
{
    var Text = 0;
    var TextDisabled = 1;
    var WindowBg = 2;
    var ChildBg = 3;
    var PopupBg = 4;
    var Border = 5;
    var BorderShadow = 6;
    var FrameBg = 7;
    var FrameBgHovered = 8;
    var FrameBgActive = 9;
    var TitleBg = 10;
    var TitleBgActive = 11;
    var TitleBgCollapsed = 12;
    var MenuBarBg = 13;
    var ScrollbarBg = 14;
    var ScrollbarGrab = 15;
    var ScrollbarGrabHovered = 16;
    var ScrollbarGrabActive = 17;
    var CheckMark = 18;
    var SliderGrab = 19;
    var SliderGrabActive = 20;
    var Button = 21;
    var ButtonHovered = 22;
    var ButtonActive = 23;
    var Header = 24;
    var HeaderHovered = 25;
    var HeaderActive = 26;
    var Separator = 27;
    var SeparatorHovered = 28;
    var SeparatorActive = 29;
    var ResizeGrip = 30;
    var ResizeGripHovered = 31;
    var ResizeGripActive = 32;
    var PlotLines = 33;
    var PlotLinesHovered = 34;
    var PlotHistogram = 35;
    var PlotHistogramHovered = 36;
    var TextSelectedBg = 37;
    var ModalWindowDarkening = 38;
    var DragDropTarget = 39;
    var NavHighlight = 40;
    var NavWindowHighlight = 41;
    var COUNT = 42;
}

/**
  Enumeration for PushStyleVar() / PopStyleVar() to temporarily modify the ImGuiStyle structure.

  NB: the enum only refers to fields of ImGuiStyle which makes sense to be pushed/poped inside UI code.
  During initialization, feel free to just poke into ImGuiStyle directly.

  NB: if changing this enum, you need to update the associated internal table GStyleVarInfo[] accordingly.
  This is where we link enum values to members offset/type.
 */
@:enum abstract ImGuiStyleVar(Int) from Int to Int
{
    var Alpha = 0;
    var WindowPadding = 1;
    var WindowRounding = 2;
    var WindowBorderSize = 3;
    var WindowMinSize = 4;
    var ChildRounding = 5;
    var ChildBorderSize = 6;
    var PopupRounding = 7;
    var PopupBorderSize = 8;
    var FramePadding = 9;
    var FrameRounding = 10;
    var FrameBorderSize = 11;
    var ItemSpacing = 12;
    var ItemInnerSpacing = 13;
    var IndentSpacing = 14;
    var GrabMinSize = 15;
    var ButtonTextAlign = 16;
    var Count = 17;
}

/**
  Enumeration for GetMouseCursor()
 */
@:enum abstract ImGuiMouseCursor(Int) from Int to Int
{
    var None = -1;
    var Arrow = 0;
    var TextInput = 1;
    var Move = 2;
    var ResizeNS = 3;
    var ResizeEW = 4;
    var ResizeNESW = 5;
    var ResizeNWSE = 6;
    var Count = 7;
}

/**
  Flags for ImGui::Selectable()
 */
@:enum abstract ImGuiSelectableFlags(Int) from Int to Int
{
    /**
      Clicking this don't close parent popup window
     */
    var DontClosePopups = 1 << 0;
    /**
      Selectable frame can span all columns (text will still fit in current column)
     */
    var SpanAllColumns = 1 << 1;
    /**
      Generate press events on double clicks too
     */
    var AllowDoubleClick = 1 << 2;
}

/**
  Enumeration for ColorEdit3() / ColorEdit4() / ColorPicker3() / ColorPicker4() / ColorButton()
 */
@:enum abstract ImGuiColorEditFlags(Int) from Int to Int
{
    /**
      ColorEdit, ColorPicker, ColorButton: ignore Alpha component (read 3 components from the input pointer).
     */
    var NoAlpha = 1 << 1;

    /**
      ColorEdit: disable picker when clicking on colored square.
     */
    var NoPicker = 1 << 2;

    /**
      ColorEdit: disable toggling options menu when right-clicking on inputs/small preview.
     */
    var NoOptions = 1 << 3;

    /**
      ColorEdit, ColorPicker: disable colored square preview next to the inputs. (e.g. to show only the inputs)
     */
    var NoSmallPreview = 1 << 4;

    /**
      ColorEdit, ColorPicker: disable inputs sliders/text widgets (e.g. to show only the small preview colored square).
     */
    var NoInputs = 1 << 5;

    /**
      ColorEdit, ColorPicker, ColorButton: disable tooltip when hovering the preview.
     */
    var NoTooltip = 1 << 6;

    /**
      ColorEdit, ColorPicker: disable display of inline text label (the label is still forwarded to the tooltip and picker).
     */
    var NoLabel = 1 << 7;

    /**
      ColorPicker: disable bigger color preview on right side of the picker, use small colored square preview instead.
     */
    var NoSidePreview = 1 << 8;

    // User Options (right-click on widget to change some of them). You can set application defaults using SetColorEditOptions(). The idea is that you probably don't want to override them in most of your calls, let the user choose and/or call SetColorEditOptions() during startup.

    /**
      ColorEdit, ColorPicker: show vertical alpha bar/gradient in picker.
     */
    var AlphaBar = 1 << 9;

    /**
      ColorEdit, ColorPicker, ColorButton: display preview as a transparent color over a checkerboard, instead of opaque.
     */
    var AlphaPreview = 1 << 10;

    /**
      ColorEdit, ColorPicker, ColorButton: display half opaque / half checkerboard, instead of opaque.
     */
    var AlphaPreviewHalf = 1 << 11;

    /**
      (WIP) ColorEdit: Currently only disable 0.0f..1.0f limits in RGBA edition (note: you probably want to use ImGuiColorEditFlags_Float flag as well).
     */
    var HDR = 1 << 12;

    /**
      ColorEdit: choose one among RGB/HSV/HEX. ColorPicker: choose any combination using RGB/HSV/HEX.
     */
    var RGB = 1 << 13;
    var HSV = 1 << 14;
    var HEX = 1 << 15;

    /**
      ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0..255. 
     */
    var Uint8 = 1 << 16;

    /**
      ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0.0f..1.0f floats instead of 0..255 integers. No round-trip of value via integers.
     */
    var Float32 = 1 << 17;

    /**
      ColorPicker: bar for Hue, rectangle for Sat/Value.
     */
    var PickerHueBar = 1 << 18;

    /**
      ColorPicker: wheel for Hue, triangle for Sat/Value.
     */
    var PickerHueWheel = 1 << 19;
}

/**
  Flags for ImGui::TreeNodeEx(), ImGui::CollapsingHeader*()
 */
@:enum abstract ImGuiTreeNodeFlags(Int) from Int to Int
{
    /**
      Draw as selected
     */
    var Selected = 1 << 0;

    /**
      Full colored frame (e.g. for CollapsingHeader)
     */
    var Framed = 1 << 1;

    /**
      Hit testing to allow subsequent widgets to overlap this one
     */
    var AllowItemOverlap = 1 << 2;

    /**
      Don't do a TreePush() when open (e.g. for CollapsingHeader) = no extra indent nor pushing on ID stack
     */
    var NoTreePushOnOpen = 1 << 3;
    
    /**
      Don't automatically and temporarily open node when Logging is active (by default logging will automatically open tree nodes)
     */
    var NoAutoOpenOnLog = 1 << 4;

    /**
      Default node to be open
     */
    var DefaultOpen = 1 << 5;

    /**
      Need double-click to open node
     */
    var OpenOnDoubleClick = 1 << 6;

    /**
      Only open when clicking on the arrow part. If ImGuiTreeNodeFlags_OpenOnDoubleClick is also set, single-click arrow or double-click all box to open.
     */
    var OpenOnArrow = 1 << 7;

    /**
      No collapsing, no arrow (use as a convenience for leaf nodes).
     */
    var Leaf = 1 << 8;

    /**
      Display a bullet instead of arrow
     */
    var Bullet = 1 << 9;

    /**
      Use FramePadding (even for an unframed text node) to vertically align text baseline to regular widget height. Equivalent to calling AlignTextToFramePadding().
     */
    var FramePadding = 1 << 10;

    //@:native('ImGuITreeNodeFlags_SpanAllAvailWidth') var SpanAllAvailWidth; // FIXME: TODO: Extend hit box horizontally even if not framed
    //@:native('ImGuiTreeNodeFlags_NoScrollOnOpen') var NoScrollOnOpen; // FIXME: TODO: Disable automatic scroll on TreePop() if node got just open and contents is not visible

    var CollapsingHeader = Framed | NoAutoOpenOnLog;
}

/**
  Flags for ImGui::InputText()
 */
@:enum abstract ImGuiInputTextFlags(Int) from Int to Int
{
    /**
      Allow 0123456789.+-*\/
     */
    var CharsDecimal = 1 << 0;

    /**
      Allow 0123456789ABCDEFabcdef
     */
    var CharsHexadecimal = 1 << 1;

    /**
      Turn a..z into A..Z
     */
    var CharsUppercase = 1 << 2;

    /**
      Filter out spaces, tabs
     */
    var CharsNoBlank = 1 << 3;

    /**
      Select entire text when first taking mouse focus
     */
    var AutoSelectAll = 1 << 4;

    /**
      Return 'true' when Enter is pressed (as opposed to when the value was modified)
     */
    var EnterReturnsTrue = 1 << 5;

    /**
      Call user function on pressing TAB (for completion handling)
     */
    var CallbackCompletion = 1 << 6;

    /**
      Call user function on pressing Up/Down arrows (for history handling)
     */
    var CallbackHistory = 1 << 7;

    /**
      Call user function every time. User code may query cursor position, modify text buffer.
     */
    var CallbackAlways = 1 << 8;

    /**
      Call user function to filter character. Modify data->EventChar to replace/filter input, or return 1 to discard character.
     */
    var CallbackCharFilter = 1 << 9;

    /**
      Pressing TAB input a '\t' character into the text field
     */
    var AllowTabInput = 1 << 10;

    /**
      In multi-line mode, unfocus with Enter, add new line with Ctrl+Enter (default is opposite: unfocus with Ctrl+Enter, add line with Enter).
     */
    var CtrlEnterForNewLine = 1 << 11;

    /**
      Disable following the cursor horizontally
     */
    var NoHorizontalScroll = 1 << 12;

    /**
      Insert mode
     */
    var AlwaysInsertMode = 1 << 13;

    /**
      Read-only mode
     */
    var ReadOnly = 1 << 14;

    /**
      Password mode, display all characters as '*'
     */
    var Password = 1 << 15;
}

/**
  Condition for ImGui::SetWindow***(), SetNextWindow***(), SetNextTreeNode***() functions

  All those functions treat 0 as a shortcut to ImGuiCond_Always. From the point of view of the user use this as an enum (don't combine multiple values into flags).
 */
@:enum abstract ImGuiCond(Int) from Int to Int
{
    /**
      Set the variable
     */
    var Always = 1 << 0;

    /**
      Set the variable once per runtime session (only the first call with succeed)
     */
    var Once = 1 << 1;

    /**
      Set the variable if the window has no saved data (if doesn't exist in the .ini file)
     */
    var FirstUseEver = 1 << 2;

    /**
      Set the variable if the window is appearing after being hidden/inactive (or the first time)
     */
    var Appearing = 1 << 3;
}

@:enum abstract ImGuiFocusedFlags(Int) from Int to Int
{
  /**
    IsWindowFocused(): Return true if any children of the window is focused
   */
  var ChildWindows = 1 << 0;

  /**
    IsWindowFocused(): Test from root window (top most parent of the current hierarchy)
   */
  var RootWindow   = 1 << 1;

  var RootAndChildWindows = ChildWindows | RootWindow;
}

@:enum abstract ImGuiComboFlags(Int) from Int to Int
{
  var PopupAlignLeft = 1 << 0;
  var HeightSmall    = 1 << 1;
  var HeightRegular  = 1 << 2;
  var HeightLarge    = 1 << 3;
  var HeightLargest  = 1 << 4;
  var HeightMask = HeightSmall | HeightRegular | HeightLarge | HeightLargest;
}

@:enum abstract ImGuiNavInput(Int) from Int to Int
{
  var Activate = 0;      // activate / open / toggle / tweak value       // e.g. Cross  (PS4), A (Xbox), A (Switch), Space (Keyboard)
  var Cancel = 1;        // cancel / close / exit                        // e.g. Circle (PS4), B (Xbox), B (Switch), Escape (Keyboard)
  var Input = 2;         // text input / on-screen keyboard              // e.g. Triang.(PS4), Y (Xbox), X (Switch), Return (Keyboard)
  var Menu = 3;          // tap: toggle menu / hold: focus, move, resize // e.g. Square (PS4), X (Xbox), Y (Switch), Alt (Keyboard)
  var DpadLeft = 4;      // move / tweak / resize window (w/ PadMenu)    // e.g. D-pad Left/Right/Up/Down (Gamepads), Arrow keys (Keyboard)
  var DpadRight = 5;     // 
  var DpadUp = 6;        // 
  var DpadDown = 7;      // 
  var LStickLeft = 8;    // scroll / move window (w/ PadMenu)            // e.g. Left Analog Stick Left/Right/Up/Down
  var LStickRight = 9;   // 
  var LStickUp = 10;     // 
  var LStickDown = 11;   // 
  var FocusPrev = 12;    // next window (w/ PadMenu)                     // e.g. L1 or L2 (PS4), LB or LT (Xbox), L or ZL (Switch)
  var FocusNext = 13;    // prev window (w/ PadMenu)                     // e.g. R1 or R2 (PS4), RB or RT (Xbox), R or ZL (Switch) 
  var TweakSlow = 14;    // slower tweaks                                // e.g. L1 or L2 (PS4), LB or LT (Xbox), L or ZL (Switch)
  var TweakFast = 15;    // faster tweaks                                // e.g. R1 or R2 (PS4), RB or RT (Xbox), R or ZL (Switch)
}

@:enum abstract ImGuiConfigFlags(Int) from Int to Int
{
  var NavEnableKeyboard      = 1 << 0;   // Master keyboard navigation enable flag. NewFrame() will automatically fill io.NavInputs[] based on io.KeysDown[].
  var NavEnableGamepad       = 1 << 1;   // Master gamepad navigation enable flag. This is mostly to instruct your imgui back-end to fill io.NavInputs[]. Back-end also needs to set ImGuiBackendFlags_HasGamepad.
  var NavEnableSetMousePos   = 1 << 2;   // Instruct navigation to move the mouse cursor. May be useful on TV/console systems where moving a virtual mouse is awkward. Will update io.MousePos and set io.WantSetMousePos=true. If enabled you MUST honor io.WantSetMousePos requests in your binding, otherwise ImGui will react as if the mouse is jumping around back and forth.
  var NavNoCaptureKeyboard   = 1 << 3;   // Instruct navigation to not set the io.WantCaptureKeyboard flag with io.NavActive is set. 
  var NoMouse                = 1 << 4;   // Instruct imgui to clear mouse position/buttons in NewFrame(). This allows ignoring the mouse information back-end
  var NoMouseCursorChange    = 1 << 5;   // Instruct back-end to not alter mouse cursor shape and visibility.

  // User storage (to allow your back-end/engine to communicate to code that may be shared between multiple projects. Those flags are not used by core ImGui)
  var IsSRGB        = 1 << 20;  // Application is SRGB-aware.
  var IsTouchScreen = 1 << 21;  // Application is using a touch screen instead of a mouse.
}

@:enum abstract ImGuiBackendFlags(Int) from Int to Int
{
  var HasGamepad      = 1 << 0; // Back-end supports and has a connected gamepad.
  var HasMouseCursors = 1 << 1; // Back-end supports reading GetMouseCursor() to change the OS cursor shape.
  var HasSetMousePos  = 1 << 2; // Back-end supports io.WantSetMousePos requests to reposition the OS mouse position (only used if ImGuiConfigFlags_NavEnableSetMousePos is set).
}
