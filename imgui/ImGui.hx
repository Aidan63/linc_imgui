package imgui;

import cpp.Pointer;
import cpp.ConstPointer;
import cpp.ConstCharStar;
import cpp.Reference;
import cpp.Callable;
import imgui.ImWindow;
import imgui.draw.ImDrawData;
import imgui.draw.ImDrawList;
import imgui.util.ImVec2;
import imgui.util.ImVec4;
import imgui.callback.ImGuiSizeConstraintCallbackData;

// Typedefs
typedef ImU32 = UInt;
typedef ImGuiID = UInt;
typedef ImWchar = cpp.UInt16;
typedef ImTextureID = cpp.RawPointer<cpp.Void>;
typedef ImGuiCol = Int;
typedef ImGuiStyleVar = Int;
typedef ImGuiKey = Int;
typedef ImGuiMouseCursor = Int;
typedef ImGuiCond = Int;
typedef ImDrawCornerFlags = Int;
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

    //------\\
    //      \\
    // Main \\
    //      \\
    //------\\
    
    @:native('ImGui::GetIO') static function getIO() : Reference<ImGuiIO>;
    @:native('ImGui::GetStyle') static function getStyle() : Reference<ImGuiStyle>;
    @:native('ImGui::GetDrawData') static function getDrawData() : Pointer<ImDrawData>;
    @:native('ImGui::NewFrame') static function newFrame() : Void;
    @:native('ImGui::Render') static function render() : Void;
    @:native('ImGui::EndFrame') static function endFrame() : Void;
    @:native('ImGui::Shutdown') static function shutdown() : Void;

    //---------------------\\
    //                     \\
    // Demo / Debug / Info \\
    //                     \\
    //---------------------\\

    @:native('ImGui::ShowTestWindow') static function showTestWindow(_open : Pointer<Bool> = null) : Void;
    @:native('ImGui::ShowMetricsWindow') static function showMetricsWindow(_open : Pointer<Bool> = null) : Void;
    @:native('ImGui::ShowStyleEditor') static function showStyleEditor(_style : Pointer<ImGuiStyle> = null) : Void;
    @:native('ImGui::ShowUserGuide') static function showUserGuide() : Void;

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
    @:native('ImGui::BeginTooltip') static function beginTooltip() : Void;
    @:native('ImGui::EndTooltip') static function endTooltip() : Void;

    //---------------\\
    //               \\
    // Log functions \\
    //               \\
    //---------------\\

    @:native('ImGui::LogToTTY') static function logToTTY(_maxDepth : Int = -1) : Void;
    @:native('ImGui::LogToFile') static function logToFile(_maxDepth : Int = -1, _filename : String = null) : Void;
    @:native('ImGui::LogToClipboard') static function logToClipboard(_maxDepth : Int = -1) : Void;
    @:native('ImGui::LogFinish') static function logFinish() : Void;
    @:native('ImGui::LogButtons') static function logButtons() : Void;
    @:native('ImGui::linc::LogText') static function logText(_text : String) : Void;

    //--------------------\\
    //                    \\
    // Clipping functions \\
    //                    \\
    //--------------------\\

    @:native('ImGui::PushClipRect') static function pushClipRect(_clipRectMin : ImVec2, _clipRectMax : ImVec2, _intersectWithCurrentClip : Bool) : Void;
    @:native('ImGui::PopClipRect') static function popClipRect() : Void;

    //--------------------\\
    //                    \\
    // Clipping functions \\
    //                    \\
    //--------------------\\

    @:native('ImGui::StyleColorsClassic') static function styleColorsClassic(_dst : Pointer<ImGuiStyle> = null) : Void;
    @:native('ImGui::StyleColorsDark') static function styleColorsDark(_dst : Pointer<ImGuiStyle> = null) : Void;
    @:native('ImGui::StyleColorsLight') static function styleColorsLight(_dst : Pointer<ImGuiStyle> = null) : Void;

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
    @:native('ImGui::IsItemVisible') static function isItemVisible() : Bool;
    @:native('ImGui::IsAnyItemHovered') static function isAnyItemHovered() : Bool;
    @:native('ImGui::IsAnyItemActive') static function isAnyItemActive() : Bool;

    /**
      get bounding rect of last item in screen space
     */
    @:native('ImGui::GetItemRectMin') static function getItemRectMin() : ImVec2;
    @:native('ImGui::GetItemRectMax') static function getItemRectMax() : ImVec2;
    @:native('ImGui::GetItemRectSize') static function getItemRectSize() : ImVec2;

    /**
      allow last item to be overlapped by a subsequent item. sometimes useful with invisible buttons, selectables, etc. to catch unused area.
     */
    @:native('ImGui::SetItemAllowOverlap') static function setItemAllowOverlap() : Void;

    /**
      is current Begin()-ed window focused?
     */
    @:native('ImGui::IsWindowFocused') static function isWindowFocused() : Bool;

    /**
      is current Begin()-ed window hovered (and typically: not blocked by a popup/modal)?
     */
    @:native('ImGui::IsWindowHovered') static function isWindowHovered(_flags : ImGuiHoveredFlags = 0) : Bool;

    /**
      is current Begin()-ed root window focused (root = top-most parent of a child, otherwise self)?
     */
    @:native('ImGui::IsRootWindowFocused') static function isRootWindowFocused() : Bool;

    /**
      is current Begin()-ed root window or any of its child (including current window) focused?
     */
    @:native('ImGui::IsRootWindowOrAnyChildFocused') static function isRootWindowOrAnyChildFocused() : Bool;

    /**
      is mouse hovering any visible window
     */
    @:native('ImGui::IsAnyWindowHovered') static function isAnyWindowHovered() : Bool;

    /**
      test if rectangle (of given size, starting from cursor position) is visible / not clipped.

      test if rectangle (in screen space) is visible / not clipped. to perform coarse clipping on user's side.
     */
    @:overload(function(_rectMin : ImVec2, _rectMax : ImVec2) : Bool {})
    @:native('ImGui::IsRectVisible') static function isRectVisible(_size : ImVec2) : Bool;

    @:native('ImGui::GetTime') static function getTime() : Float;
    @:native('ImGui::GetFrameCount') static function getFrameCount() : Int;
    @:native('ImGui::GetOverlayDrawList') static function getOverlayDrawList() : Pointer<ImDrawList>;
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
    @:native('ImGui::EndChildFrame') static function EndChildFrame() : Void;

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
@:unreflective
@:enum extern abstract ImGuiKey_(ImGuiKeyImpl)
{
    @:native('ImGuiKey_Tab') var Tab;
    @:native('ImGuiKey_LeftArrow') var LeftArrow;
    @:native('ImGuiKey_RightArrow') var RightArrow;
    @:native('ImGuiKey_UpArrow') var UpArrow;
    @:native('ImGuiKey_DownArrow') var DownArrow;
    @:native('ImGuiKey_PageUp') var PageUp;
    @:native('ImGuiKey_PageDown') var PageDown;
    @:native('ImGuiKey_Home') var Home;
    @:native('ImGuiKey_End') var End;
    @:native('ImGuiKey_Delete') var Delete;
    @:native('ImGuiKey_Backspace') var Backspace;
    @:native('ImGuiKey_Enter') var Enter;
    @:native('ImGuiKey_Escape') var Escape;
    @:native('ImGuiKey_A') var A;
    @:native('ImGuiKey_C') var C;
    @:native('ImGuiKey_V') var V;
    @:native('ImGuiKey_X') var X;
    @:native('ImGuiKey_Y') var Y;
    @:native('ImGuiKey_Z') var Z;
    @:native('ImGuiKey_COUNT') var COUNT;
}
@:unreflective
@:native('ImGuiKey_')
extern class ImGuiKeyImpl {}

/**
  Enumeration for PushStyleColor() / PopStyleColor()
 */
@:unreflective
@:enum extern abstract ImGuiCol_(ImGuiColImpl)
{
    @:native('ImGuiCol_Text') var Text;
    @:native('ImGuiCol_TextDisabled') var TextDisabled;
    @:native('ImGuiCol_WindowBg') var WindowBg;
    @:native('ImGuiCol_ChildBg') var ChildBg;
    @:native('ImGuiCol_PopupBg') var PopupBg;
    @:native('ImGuiCol_Border') var Border;
    @:native('ImGuiCol_BorderShadow') var BorderShadow;
    @:native('ImGuiCol_FrameBg') var FrameBg;
    @:native('ImGuiCol_FrameBgHovered') var FrameBgHovered;
    @:native('ImGuiCol_FrameBgActive') var FrameBgActive;
    @:native('ImGuiCol_TitleBg') var TitleBg;
    @:native('ImGuiCol_TitleBgActive') var TitleBgActive;
    @:native('ImGuiCol_TitleBgCollapsed') var TitleBgCollapsed;
    @:native('ImGuiCol_MenuBarBg') var MenuBarBg;
    @:native('ImGuiCol_ScrollbarBg') var ScrollbarBg;
    @:native('ImGuiCol_ScrollbarGrab') var ScrollbarGrab;
    @:native('ImGuiCol_ScrollbarGrabHovered') var ScrollbarGrabHovered;
    @:native('ImGuiCol_ScrollbarGrabActive') var ScrollbarGrabActive;
    @:native('ImGuiCol_CheckMark') var CheckMark;
    @:native('ImGuiCol_SliderGrab') var SliderGrab;
    @:native('ImGuiCol_SliderGrabActive') var SliderGrabActive;
    @:native('ImGuiCol_Button') var Button;
    @:native('ImGuiCol_ButtonHovered') var ButtonHovered;
    @:native('ImGuiCol_ButtonActive') var ButtonActive;
    @:native('ImGuiCol_Header') var Header;
    @:native('ImGuiCol_HeaderHovered') var HeaderHovered;
    @:native('ImGuiCol_HeaderActive') var HeaderActive;
    @:native('ImGuiCol_Separator') var Separator;
    @:native('ImGuiCol_SeparatorHovered') var SeparatorHovered;
    @:native('ImGuiCol_SeparatorActive') var SeparatorActive;
    @:native('ImGuiCol_ResizeGrip') var ResizeGrip;
    @:native('ImGuiCol_ResizeGripHovered') var ResizeGripHovered;
    @:native('ImGuiCol_ResizeGripActive') var ResizeGripActive;
    @:native('ImGuiCol_CloseButton') var CloseButton;
    @:native('ImGuiCol_CloseButtonHovered') var CloseButtonHovered;
    @:native('ImGuiCol_CloseButtonActive') var CloseButtonActive;
    @:native('ImGuiCol_PlotLines') var PlotLines;
    @:native('ImGuiCol_PlotLinesHovered') var PlotLinesHovered;
    @:native('ImGuiCol_PlotHistogram') var PlotHistogram;
    @:native('ImGuiCol_PlotHistogramHovered') var PlotHistogramHovered;
    @:native('ImGuiCol_TextSelectedBg') var TextSelectedBg;
    @:native('ImGuiCol_ModalWindowDarkening') var ModalWindowDarkening;
    @:native('ImGuiCol_COUNT') var COUNT;
}
@:unreflective
@:native('ImGuiCol_')
extern class ImGuiColImpl {}

/**
  Enumeration for PushStyleVar() / PopStyleVar() to temporarily modify the ImGuiStyle structure.

  NB: the enum only refers to fields of ImGuiStyle which makes sense to be pushed/poped inside UI code.
  During initialization, feel free to just poke into ImGuiStyle directly.

  NB: if changing this enum, you need to update the associated internal table GStyleVarInfo[] accordingly.
  This is where we link enum values to members offset/type.
 */
@:unreflective
@:enum extern abstract ImGuiStyleVar_(ImGuiStyleVarImpl)
{
    // Enum name ......................// Member in ImGuiStyle structure (see ImGuiStyle for descriptions)
    @:native('ImGuiStyleVar_Alpha') var Alpha;                       // float     Alpha
    @:native('ImGuiStyleVar_WindowPadding') var WindowPadding;       // ImVec2    WindowPadding
    @:native('ImGuiStyleVar_WindowRounding') var WindowRounding;     // float     WindowRounding
    @:native('ImGuiStyleVar_WindowBorderSize') var WindowBorderSize; // float     WindowBorderSize
    @:native('ImGuiStyleVar_WindowMinSize') var WindowMinSize;       // ImVec2    WindowMinSize
    @:native('ImGuiStyleVar_ChildRounding') var ChildRounding;       // float     ChildRounding
    @:native('ImGuiStyleVar_ChildBorderSize') var ChildBorderSize;   // float     ChildBorderSize
    @:native('ImGuiStyleVar_PopupRounding') var PopupRounding;       // float     PopupRounding
    @:native('ImGuiStyleVar_PopupBorderSize') var PopupBorderSize;   // float     PopupBorderSize
    @:native('ImGuiStyleVar_FramePadding') var FramePadding;         // ImVec2    FramePadding
    @:native('ImGuiStyleVar_FrameRounding') var FrameRounding;       // float     FrameRounding
    @:native('ImGuiStyleVar_FrameBorderSize') var FrameBorderSize;   // float     FrameBorderSize
    @:native('ImGuiStyleVar_ItemSpacing') var ItemSpacing;           // ImVec2    ItemSpacing
    @:native('ImGuiStyleVar_ItemInnerSpacing') var ItemInnerSpacing; // ImVec2    ItemInnerSpacing
    @:native('ImGuiStyleVar_IndentSpacing') var IndentSpacing;       // float     IndentSpacing
    @:native('ImGuiStyleVar_GrabMinSize') var GrabMinSize;           // float     GrabMinSize
    @:native('ImGuiStyleVar_ButtonTextAlign') var ButtonTextAlign;   // ImVec2    ButtonTextAlign
    @:native('ImGuiStyleVar_Count_') var Count_;
}
@:unreflective
@:native('ImGuiStyleVar_')
extern class ImGuiStyleVarImpl {}

/**
  Enumeration for GetMouseCursor()
 */
@:unreflective
@:enum extern abstract ImGuiMouseCursor_(ImGuiMouseCursorImpl)
{
    @:native('ImGuiMouseCursor_None') var None;
    @:native('ImGuiMouseCursor_Arrow') var Arrow;
    @:native('ImGuiMouseCursor_TextInput') var TextInput;         // When hovering over InputText, etc.
    @:native('ImGuiMouseCursor_Move') var Move;              // Unused
    @:native('ImGuiMouseCursor_ResizeNS') var ResizeNS;          // Unused
    @:native('ImGuiMouseCursor_ResizeEW') var ResizeEW;          // When hovering over a column
    @:native('ImGuiMouseCursor_ResizeNESW') var ResizeNESW;        // When hovering over the bottom-left corner of a window
    @:native('ImGuiMouseCursor_ResizeNWSE') var ResizeNWSE;        // When hovering over the bottom-right corner of a window
    @:native('ImGuiMouseCursor_Count_') var Count_;
}
@:unreflective
@:native('ImGuiMouseCursor_')
extern class ImGuiMouseCursorImpl {}

/**
  Condition for ImGui::SetWindow***(), SetNextWindow***(), SetNextTreeNode***() functions

  All those functions treat 0 as a shortcut to ImGuiCond_Always. From the point of view of the user use this as an enum (don't combine multiple values into flags).
 */
@:unreflective
@:enum extern abstract ImGuiCond_(ImGuiCondImpl)
{
    @:native('ImGuiCond_Always') var Always; // Set the variable
    @:native('ImGuiCond_Once') var Once; // Set the variable once per runtime session (only the first call with succeed)
    @:native('ImGuiCond_FirstUseEver') var FirstUseEver; // Set the variable if the window has no saved data (if doesn't exist in the .ini file)
    @:native('ImGuiCond_Appearing') var Appearing; // Set the variable if the window is appearing after being hidden/inactive (or the first time)
}
@:unreflective
@:native('ImGuiCond_')
extern class ImGuiCondImpl {}
