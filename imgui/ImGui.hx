package imgui;

import cpp.Pointer;
import cpp.Reference;
import cpp.Callable;
import imgui.draw.ImDrawData;
import imgui.draw.ImDrawList;
import imgui.util.ImVec2;
import imgui.callback.ImGuiSizeConstraintCallbackData;
import imgui.callback.ImGuiTextEditCallbackData;

// Typedefs
typedef ImU32 = UInt;
typedef ImGuiID = UInt;
typedef ImWchar = cpp.UInt16;
typedef ImTextureID = Pointer<Void>;
typedef ImGuiCol = Int;
typedef ImGuiStyleVar = Int;
typedef ImGuiKey = Int;
typedef ImGuiMouseCursor = Int;
typedef ImGuiCond = Int;
typedef ImDrawCornerFlags = Int;
typedef ImGuiColorEditFlags = Int;
typedef ImGuiWindowFlags = Int;
typedef ImGuiColumnsFlags = Int;
typedef ImGuiInputTextFlags = Int;
typedef ImGuiSelectableFlags = Int;
typedef ImGuiTreeNodeFlags = Int;
typedef ImGuiHoveredFlags = Int;

typedef ImGuiSizeConstraintCallback = Callable<Pointer<ImGuiSizeConstraintCallbackData>->Void>;
typedef ImGuiTextEditCallback = Callable<Pointer<ImGuiTextEditCallback>->Int>;

@:keep
@:include('linc_imgui.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('imgui'))
#end
extern class ImGui
{
    // Misc
    @:native('ImGui::linc::GetVoidStar') static function getVoidStar(_ptr : Pointer<cpp.Void>) : cpp.ConstCharStar;

    // Main
    @:native('ImGui::GetIO') static function getIO() : Reference<ImGuiIO>;
    @:native('ImGui::GetStyle') static function getStyle() : Reference<ImGuiStyle>;
    @:native('ImGui::GetDrawData') static function getDrawData() : Pointer<ImDrawData>;
    @:native('ImGui::NewFrame') static function newFrame() : Void;
    @:native('ImGui::Render') static function render() : Void;
    @:native('ImGui::EndFrame') static function endFrame() : Void;
    @:native('ImGui::Shutdown') static function shutdown() : Void;

    // Demo / Debug / Info
    @:native('ImGui::ShowTestWindow') static function showTestWindow(_open : Pointer<Bool> = null) : Void;
    @:native('ImGui::ShowMetricsWindow') static function showMetricsWindow(_open : Pointer<Bool> = null) : Void;
    @:native('ImGui::ShowStyleEditor') static function showStyleEditor(_style : Pointer<ImGuiStyle> = null) : Void;
    @:native('ImGui::ShowUserGuide') static function showUserGuide() : Void;
}

//-------//
// Enums //
//-------//

/**
  Flags for ImGui::Begin()
 */
@:unreflective
@:enum extern abstract ImGuiWindowFlags_(ImGuiWindowFlagsImpl)
{
    /**
      Disable title-bar
     */
    @:native('ImGuiWindowFlags_NoTitleBar') var NoTitleBar;
    /**
      Disable user resizing with the lower-right grip
     */
    @:native('ImGuiWindowFlags_NoResize') var NoResize;
    /**
      Disable user moving the window
     */
    @:native('ImGuiWindowFlags_NoMove') var NoMove;
    /**
      Disable scrollbars (window can still scroll with mouse or programatically)
     */
    @:native('ImGuiWindowFlags_NoScrollbar') var NoScrollbar;
    /**
      Disable user vertically scrolling with mouse wheel
     */
    @:native('ImGuiWindowFlags_NoScrollWithMouse') var NoScrollWithMouse;
    /**
      Disable user collapsing window by double-clicking on it
     */
    @:native('ImGuiWindowFlags_NoCollapse') var NoCollapse;
    /**
      Resize every window to its content every frame
     */
    @:native('ImGuiWindowFlags_AlwaysAutoResize') var AlwaysAutoResize;
    /**
      Never load/save settings in .ini file
     */
    @:native('ImGuiWindowFlags_NoSavedSettings') var NoSavedSettings;
    /**
      Disable catching mouse or keyboard inputs, hovering test with pass through.
     */
    @:native('ImGuiWindowFlags_NoInputs') var NoInputs;
    /**
      Has a menu-bar
     */
    @:native('ImGuiWindowFlags_MenuBar') var MenuBar;
    /**
      Allow horizontal scrollbar to appear (off by default). You may use SetNextWindowContentSize(ImVec2(width,0.0f));
      
      prior to calling Begin() to specify width. Read code in imgui_demo in the "Horizontal Scrolling" section.
     */
    @:native('ImGuiWindowFlags_HorizontalScrollbar') var HorizontalScrollbar;
    /**
      Disable taking focus when transitioning from hidden to visible state
     */
    @:native('ImGuiWindowFlags_NoFocusOnAppearing') var NoFocusOnAppearing;
    /**
      Disable bringing window to front when taking focus (e.g. clicking on it or programatically giving it focus)
     */
    @:native('ImGuiWindowFlags_NoBringToFrontOnFocus') var NoBringToFrontOnFocus;
    /**
      Always show vertical scrollbar (even if ContentSize.y < Size.y)
     */
    @:native('ImGuiWindowFlags_AlwaysVerticalScrollbar') var AlwaysVerticalScrollbar;
    /**
      Always show horizontal scrollbar (even if ContentSize.x < Size.x)
     */
    @:native('ImGuiWindowFlags_AlwaysHorizontalScrollbar') var AlwaysHorizontalScrollbar;
    /**
      Ensure child windows without border uses style.WindowPadding (ignored by default for non-bordered child windows, because more convenient)
     */
    @:native('ImGuiWindowFlags_AlwaysUseWindowPadding') var AlwaysUseWindowPadding;
    /**
      (WIP) Enable resize from any corners and borders. Your back-end needs to honor the different values of io.MouseCursor set by imgui.
     */
    @:native('ImGuiWindowFlags_ResizeFromAnySide') var ResizeFromAnySide;
}
@:unreflective
@:native('ImGuiWindowFlags_')
extern class ImGuiWindowFlagsImpl {}

/**
  Flags for ImGui::InputText()
 */
@:unreflective
@:enum extern abstract ImGuiInputTextFlags_(ImGuiInputTextFlagsImpl)
{
    // Default: 0
    @:native('ImGuiInputTextFlags_CharsDecimal') var CharsDecimal;   // Allow 0123456789.+-*/
    @:native('ImGuiInputTextFlags_CharsHexadecimal') var CharsHexadecimal;   // Allow 0123456789ABCDEFabcdef
    @:native('ImGuiInputTextFlags_CharsUppercase') var CharsUppercase;   // Turn a..z into A..Z
    @:native('ImGuiInputTextFlags_CharsNoBlank') var CharsNoBlank;   // Filter out spaces, tabs
    @:native('ImGuiInputTextFlags_AutoSelectAll') var AutoSelectAll;   // Select entire text when first taking mouse focus
    @:native('ImGuiInputTextFlags_EnterReturnsTrue') var EnterReturnsTrue;   // Return 'true' when Enter is pressed (as opposed to when the value was modified)
    @:native('ImGuiInputTextFlags_CallbackCompletion') var CallbackCompletion;   // Call user function on pressing TAB (for completion handling)
    @:native('ImGuiInputTextFlags_CallbackHistory') var CallbackHistory;   // Call user function on pressing Up/Down arrows (for history handling)
    @:native('ImGuiInputTextFlags_CallbackAlways') var CallbackAlways;   // Call user function every time. User code may query cursor position, modify text buffer.
    @:native('ImGuiInputTextFlags_CallbackCharFilter') var CallbackCharFilter;   // Call user function to filter character. Modify data->EventChar to replace/filter input, or return 1 to discard character.
    @:native('ImGuiInputTextFlags_AllowTabInput') var AllowTabInput;  // Pressing TAB input a '\t' character into the text field
    @:native('ImGuiInputTextFlags_CtrlEnterForNewLine') var CtrlEnterForNewLine;  // In multi-line mode, unfocus with Enter, add new line with Ctrl+Enter (default is opposite: unfocus with Ctrl+Enter, add line with Enter).
    @:native('ImGuiInputTextFlags_NoHorizontalScroll') var NoHorizontalScroll;  // Disable following the cursor horizontally
    @:native('ImGuiInputTextFlags_AlwaysInsertMode') var AlwaysInsertMode;  // Insert mode
    @:native('ImGuiInputTextFlags_ReadOnly') var ReadOnly;  // Read-only mode
    @:native('ImGuiInputTextFlags_Password') var Password;  // Password mode, display all characters as '*'
}
@:unreflective
@:native('ImGuiInputTextFlags_')
extern class ImGuiInputTextFlagsImpl {}

/**
  Flags for ImGui::TreeNodeEx(), ImGui::CollapsingHeader*()
 */
@:unreflective
@:enum extern abstract ImGuiTreeNodeFlags_(ImGuiTreeNodeFlagsImpl)
{
    @:native('ImGuiTreeNodeFlags_Selected') var Selected; // Draw as selected
    @:native('ImGuiTreeNodeFlags_Framed') var Framed; // Full colored frame (e.g. for CollapsingHeader)
    @:native('ImGuiTreeNodeFlags_AllowOverlapMode') var AllowOverlapMode; // Hit testing to allow subsequent widgets to overlap this one
    @:native('ImGuiTreeNodeFlags_NoTreePushOnOpen') var NoTreePushOnOpen; // Don't do a TreePush() when open (e.g. for CollapsingHeader) = no extra indent nor pushing on ID stack
    @:native('ImGuiTreeNodeFlags_NoAutoOpenOnLog') var NoAutoOpenOnLog; // Don't automatically and temporarily open node when Logging is active (by default logging will automatically open tree nodes)
    @:native('ImGuiTreeNodeFlags_DefaultOpen') var DefaultOpen; // Default node to be open
    @:native('ImGuiTreeNodeFlags_OpenOnDoubleClick') var OpenOnDoubleClick; // Need double-click to open node
    @:native('ImGuiTreeNodeFlags_OpenOnArrow') var OpenOnArrow; // Only open when clicking on the arrow part. If ImGuiTreeNodeFlags_OpenOnDoubleClick is also set, single-click arrow or double-click all box to open.
    @:native('ImGuiTreeNodeFlags_Leaf') var Leaf; // No collapsing, no arrow (use as a convenience for leaf nodes). 
    @:native('ImGuiTreeNodeFlags_Bullet') var Bullet; // Display a bullet instead of arrow
    @:native('ImGuiTreeNodeFlags_FramePadding') var FramePadding; // Use FramePadding (even for an unframed text node) to vertically align text baseline to regular widget height. Equivalent to calling AlignTextToFramePadding().
    //@:native('ImGuITreeNodeFlags_SpanAllAvailWidth') var SpanAllAvailWidth; // FIXME: TODO: Extend hit box horizontally even if not framed
    //@:native('ImGuiTreeNodeFlags_NoScrollOnOpen') var NoScrollOnOpen; // FIXME: TODO: Disable automatic scroll on TreePop() if node got just open and contents is not visible
    @:native('ImGuiTreeNodeFlags_CollapsingHeader') var CollapsingHeader;
}
@:unreflective
@:native('ImGuiTreeNodeFlags_')
extern class ImGuiTreeNodeFlagsImpl {}

/**
  Flags for ImGui::Selectable()
 */
@:unreflective
@:enum extern abstract ImGuiSelectableFlags_(ImGuiSelectableFlagsImpl)
{
    /**
      Clicking this don't close parent popup window
     */
    @:native('ImGuiSelectableFlags_DontClosePopups') var DontClosePopups;
    /**
      Selectable frame can span all columns (text will still fit in current column)
     */
    @:native('ImGuiSelectableFlags_SpanAllColumns') var SpanAllColumns;
    /**
      Generate press events on double clicks too
     */
    @:native('ImGuiSelectableFlags_AllowDoubleClick') var AllowDoubleClick;
}
@:unreflective
@:native('ImGuiSelectableFlags_')
extern class ImGuiSelectableFlagsImpl {}

/**
  Flags for ImGui::IsItemHovered(), ImGui::IsWindowHovered()
 */
@:unreflective
@:enum extern abstract ImGuiHoveredFlags_(ImGuiHoveredFlagsImpl)
{
    @:native('ImGuiHoveredFlags_Default') var Default; // true if directly over the item/window, not obstructed by another window, not obstructed by an active popup or modal blocking inputs under them.
    @:native('ImGuiHoveredFlags_AllowWhenBlockedByPopup') var AllowWhenBlockedByPopup; // Return true even if a popup window is normally blocking access to this item/window
    @:native('ImGuiHoveredFlags_AllowWhenBlockedByModal') var AllowWhenBlockedByModal; // Return true even if a modal popup window is normally blocking access to this item/window. FIXME-TODO: Unavailable yet.
    @:native('ImGuiHoveredFlags_AllowWhenBlockedByActiveItem') var AllowWhenBlockedByActiveItem; // Return true even if an active item is blocking access to this item/window
    @:native('ImGuiHoveredFlags_AllowWhenOverlapped') var AllowWhenOverlapped; // Return true even if the position is overlapped by another window
    @:native('ImGuiHoveredFlags_FlattenChilds') var FlattenChilds; // Treat all child windows as the same window (for IsWindowHovered())
    @:native('ImGuiHoveredFlags_RectOnly') var RectOnly;
}
@:unreflective
@:native('ImGuiHoveredFlags_')
extern class ImGuiHoveredFlagsImpl {}

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
  Enumeration for ColorEdit3() / ColorEdit4() / ColorPicker3() / ColorPicker4() / ColorButton()
 */
@:unreflective
@:enum extern abstract ImGuiColorEditFlags_(ImGuiColorEditFlagsImpl)
{
    @:native('ImGuiColorEditFlags_NoAlpha') var NoAlpha;   //              // ColorEdit, ColorPicker, ColorButton: ignore Alpha component (read 3 components from the input pointer).
    @:native('ImGuiColorEditFlags_NoPicker') var NoPicker;   //              // ColorEdit: disable picker when clicking on colored square.
    @:native('ImGuiColorEditFlags_NoOptions') var NoOptions;   //              // ColorEdit: disable toggling options menu when right-clicking on inputs/small preview.
    @:native('ImGuiColorEditFlags_NoSmallPreview') var NoSmallPreview;   //              // ColorEdit, ColorPicker: disable colored square preview next to the inputs. (e.g. to show only the inputs)
    @:native('ImGuiColorEditFlags_NoInputs') var NoInputs;   //              // ColorEdit, ColorPicker: disable inputs sliders/text widgets (e.g. to show only the small preview colored square).
    @:native('ImGuiColorEditFlags_NoTooltip') var NoTooltip;   //              // ColorEdit, ColorPicker, ColorButton: disable tooltip when hovering the preview.
    @:native('ImGuiColorEditFlags_NoLabel') var NoLabel;   //              // ColorEdit, ColorPicker: disable display of inline text label (the label is still forwarded to the tooltip and picker).
    @:native('ImGuiColorEditFlags_NoSidePreview') var NoSidePreview;   //              // ColorPicker: disable bigger color preview on right side of the picker, use small colored square preview instead.
    // User Options (right-click on widget to change some of them). You can set application defaults using SetColorEditOptions(). The idea is that you probably don't want to override them in most of your calls, let the user choose and/or call SetColorEditOptions() during startup.
    @:native('ImGuiColorEditFlags_AlphaBar') var AlphaBar;  //              // ColorEdit, ColorPicker: show vertical alpha bar/gradient in picker.
    @:native('ImGuiColorEditFlags_AlphaPreview') var AlphaPreview; //              // ColorEdit, ColorPicker, ColorButton: display preview as a transparent color over a checkerboard, instead of opaque.
    @:native('ImGuiColorEditFlags_AlphaPreviewHalf') var AlphaPreviewHalf; //              // ColorEdit, ColorPicker, ColorButton: display half opaque / half checkerboard, instead of opaque.
    @:native('ImGuiColorEditFlags_HDR') var HDR; //              // (WIP) ColorEdit: Currently only disable 0.0f..1.0f limits in RGBA edition (note: you probably want to use ImGuiColorEditFlags_Float flag as well).
    @:native('ImGuiColorEditFlags_RGB') var RGB; // [Inputs]     // ColorEdit: choose one among RGB/HSV/HEX. ColorPicker: choose any combination using RGB/HSV/HEX.
    @:native('ImGuiColorEditFlags_HSV') var HSV; // [Inputs]     // "
    @:native('ImGuiColorEditFlags_HEX') var HEX; // [Inputs]     // "
    @:native('ImGuiColorEditFlags_Uint8') var Uint8; // [DataType]   // ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0..255. 
    @:native('ImGuiColorEditFlags_Float') var Float; // [DataType]   // ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0.0f..1.0f floats instead of 0..255 integers. No round-trip of value via integers.
    @:native('ImGuiColorEditFlags_PickerHueBar') var PickerHueBar; // [PickerMode] // ColorPicker: bar for Hue, rectangle for Sat/Value.
    @:native('ImGuiColorEditFlags_PickerHueWheel') var PickerHueWheel; // [PickerMode] // ColorPicker: wheel for Hue, triangle for Sat/Value.
}
@:unreflective
@:native('ImGuiColorEditFlags_')
extern class ImGuiColorEditFlagsImpl {}

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
