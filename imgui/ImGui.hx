package imgui;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.ConstPointer;
import cpp.ConstCharStar;
import cpp.Reference;
import cpp.Callable;
import imgui.ImWindow;
import imgui.draw.ImDrawData;
import imgui.draw.ImDrawList;
import imgui.draw.ImDrawListSharedData;
import imgui.util.ImVec2;
import imgui.util.ImVec4;
import imgui.callback.ImGuiSizeConstraintCallbackData;

// Typedefs
typedef ImU32 = UInt;
typedef ImGuiID = UInt;
typedef ImWchar = cpp.UInt16;
typedef ImTextureID = cpp.RawPointer<cpp.Void>;
typedef ImGuiColumnsFlags = Int;

typedef ImGuiSizeConstraintCallback = Callable<Pointer<ImGuiSizeConstraintCallbackData>->Void>;

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
    
    @:native('ImGui::GetIO')       static function getIO() : Reference<ImGuiIO>;
    @:native('ImGui::GetStyle')    static function getStyle() : Reference<ImGuiStyle>;
    @:native('ImGui::GetDrawData') static function getDrawData() : Pointer<ImDrawData>;
    @:native('ImGui::NewFrame')    static function newFrame() : Void;
    @:native('ImGui::Render')      static function render() : Void;
    @:native('ImGui::EndFrame')    static function endFrame() : Void;
    @:native('ImGui::Shutdown')    static function shutdown() : Void;

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
    @:overload(function(_strIdBegin : String, _strIdEnd : String) : Void {})
    @:native('ImGui::PushID') static function pushID(_strId : String) : Void;

    /**
      calculate unique ID (hash of whole ID stack + given parameter). e.g. if you want to query into ImGuiStorage yourself
     */
    @:overload(function(_strIdBegin : String, _strIdEnd : String) : ImGuiID {})
    @:native('ImGui::GetID') static function getID(_strId : String) : ImGuiID;

    //-----------------\\
    //                 \\
    // Value functions \\
    //                 \\
    //-----------------\\

    @:overload(function(_prefix : String, _v : Bool ) : Void {})
    @:overload(function(_prefix : String, _v : Int  ) : Void {})
    @:overload(function(_prefix : String, _v : Float) : Void {})
    @:native('ImGui::Value') static function value(_prefix : String, _v : Float, _floatFormat : String) : Void;

    //-------------------\\
    //                   \\
    // Tooptip functions \\
    //                   \\
    //-------------------\\
    
    @:native('ImGui::linc::SetTooltip') static function setTooltip(_text : String) : Void;
    @:native('ImGui::BeginTooltip')     static function beginTooltip() : Void;
    @:native('ImGui::EndTooltip')       static function endTooltip() : Void;

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

    @:native('ImGui::IsAnyWindowHovered') static function isAnyWindowHovered() : Bool;
    @:native('ImGui::IsAnyWindowFocused') static function isAnyWindowFocused() : Bool;

    /**
      test if rectangle (of given size, starting from cursor position) is visible / not clipped.

      test if rectangle (in screen space) is visible / not clipped. to perform coarse clipping on user's side.
     */
    @:overload(function(_rectMin : ImVec2, _rectMax : ImVec2) : Bool {})
    @:native('ImGui::IsRectVisible') static function isRectVisible(_size : ImVec2) : Bool;

    @:native('ImGui::GetTime')       static function getTime() : Float;
    @:native('ImGui::GetFrameCount') static function getFrameCount() : Int;
    @:native('ImGui::GetOverlayDrawList')    static function getOverlayDrawList()    : RawPointer<ImDrawList>;
    @:native('ImGui::GetDrawListSharedData') static function getDrawListSharedData() : RawPointer<ImDrawListSharedData>;
    @:native('ImGui::GetStyleColorName') static function getStyleColorName(_idx : ImGuiCol) : String;

    /**
      utility to find the closest point the last item bounding rectangle edge. useful to visually link items.
     */
    @:native('ImGui::CalcItemRectClosestPoint') static function calcItemRectClosestPoint(_pos : ImVec2, _onEdge : Bool = false, _outward : Float = 0) : ImVec2;
    @:native('ImGui::CalcTextSize') static function calcTextSize(_text : String, _textEnd : String = null, _hideTextAfterDoubleHash : Bool = false, _wrapWidth : Float = -1) : ImVec2;

    /**
      calculate coarse clipping for large list of evenly sized items. Prefer using the ImGuiListClipper higher-level helper if you can.
     */
    @:native('ImGui::linc::CalcListClipping') static function calcListClipping(_itemsCount : Int, _itemsHeight : Float, _outItemsDisplayStart : Int, _outItemsDisplayEnd : Int) : Void;

    /**
      helper to create a child window / scrolling region that looks like a normal widget frame
     */
    @:native('ImGui::BeginChildFrame') static function beginChildFrame(_id : ImGuiID, _size : ImVec2, _extraFlags : ImGuiWindowFlags = 0) : Bool;
    @:native('ImGui::EndChildFrame')   static function EndChildFrame() : Void;

    @:native('ImGui::ColorConvertU32ToFloat4') static function colorConvertU32ToFloat4(_in : ImU32) : ImVec4;
    @:native('ImGui::ColorConvertFloat4ToU32') static function colorConvertFloat4ToU32(_in : ImVec4) : ImU32;
    @:native('ImGui::ColorConvertRGBtoHSV') static function colorConvertRGBtoHSV(_r : Float, _g : Float, _b : Float, _outH : Float, _outS : Float, _outV : Float) : Void;
    @:native('ImGui::ColorConvertHSVtoRGB') static function colorConvertHSVtoRGB(_h : Float, _s : Float, _v : Float, _outR : Float, _outG : Float, _outB : Float) : Void;

    //------------------\\
    //                  \\
    // Helper functions \\
    //                  \\
    //------------------\\

    @:native('ImGui::GetClipboardText') static function getClipboardText() : String;
    @:native('ImGui::SetClipboardText') static function setClipboardText(_text : String) : Void;
}

//-------//
// Enums //
//-------//

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
    var Delete = 9;
    var Backspace = 10;
    var Enter = 11;
    var Escape = 12;
    var A = 13;
    var C = 14;
    var V = 15;
    var X = 16;
    var Y = 17;
    var Z = 18;
    var COUNT = 19;
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
    var CloseButton = 33;
    var CloseButtonHovered = 34;
    var CloseButtonActive = 35;
    var PlotLines = 36;
    var PlotLinesHovered = 37;
    var PlotHistogram = 38;
    var PlotHistogramHovered = 39;
    var TextSelectedBg = 40;
    var ModalWindowDarkening = 41;
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
    var Count_ = 17;
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
    var Count_ = 7;
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
