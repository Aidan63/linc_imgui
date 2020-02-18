abstract ImGuiWindowFlags_(Int) from Int to Int {
	var ImGuiWindowFlags_None : Int;
	var ImGuiWindowFlags_NoTitleBar : Int;
	var ImGuiWindowFlags_NoResize : Int;
	var ImGuiWindowFlags_NoMove : Int;
	var ImGuiWindowFlags_NoScrollbar : Int;
	var ImGuiWindowFlags_NoScrollWithMouse : Int;
	var ImGuiWindowFlags_NoCollapse : Int;
	var ImGuiWindowFlags_AlwaysAutoResize : Int;
	var ImGuiWindowFlags_NoBackground : Int;
	var ImGuiWindowFlags_NoSavedSettings : Int;
	var ImGuiWindowFlags_NoMouseInputs : Int;
	var ImGuiWindowFlags_MenuBar : Int;
	var ImGuiWindowFlags_HorizontalScrollbar : Int;
	var ImGuiWindowFlags_NoFocusOnAppearing : Int;
	var ImGuiWindowFlags_NoBringToFrontOnFocus : Int;
	var ImGuiWindowFlags_AlwaysVerticalScrollbar : Int;
	var ImGuiWindowFlags_AlwaysHorizontalScrollbar : Int;
	var ImGuiWindowFlags_AlwaysUseWindowPadding : Int;
	var ImGuiWindowFlags_NoNavInputs : Int;
	var ImGuiWindowFlags_NoNavFocus : Int;
	var ImGuiWindowFlags_UnsavedDocument : Int;
	var ImGuiWindowFlags_NoNav : Int;
	var ImGuiWindowFlags_NoDecoration : Int;
	var ImGuiWindowFlags_NoInputs : Int;
	var ImGuiWindowFlags_NavFlattened : Int;
	var ImGuiWindowFlags_ChildWindow : Int;
	var ImGuiWindowFlags_Tooltip : Int;
	var ImGuiWindowFlags_Popup : Int;
	var ImGuiWindowFlags_Modal : Int;
	var ImGuiWindowFlags_ChildMenu : Int;
}

abstract ImGuiTreeNodeFlags_(Int) from Int to Int {
	var ImGuiTreeNodeFlags_None : Int;
	var ImGuiTreeNodeFlags_Selected : Int;
	var ImGuiTreeNodeFlags_Framed : Int;
	var ImGuiTreeNodeFlags_AllowItemOverlap : Int;
	var ImGuiTreeNodeFlags_NoTreePushOnOpen : Int;
	var ImGuiTreeNodeFlags_NoAutoOpenOnLog : Int;
	var ImGuiTreeNodeFlags_DefaultOpen : Int;
	var ImGuiTreeNodeFlags_OpenOnDoubleClick : Int;
	var ImGuiTreeNodeFlags_OpenOnArrow : Int;
	var ImGuiTreeNodeFlags_Leaf : Int;
	var ImGuiTreeNodeFlags_Bullet : Int;
	var ImGuiTreeNodeFlags_FramePadding : Int;
	var ImGuiTreeNodeFlags_NavLeftJumpsBackHere : Int;
	var ImGuiTreeNodeFlags_CollapsingHeader : Int;
}

abstract ImGuiTabItemFlags_(Int) from Int to Int {
	var ImGuiTabItemFlags_None : Int;
	var ImGuiTabItemFlags_UnsavedDocument : Int;
	var ImGuiTabItemFlags_SetSelected : Int;
	var ImGuiTabItemFlags_NoCloseWithMiddleMouseButton : Int;
	var ImGuiTabItemFlags_NoPushId : Int;
}

abstract ImGuiTabBarFlags_(Int) from Int to Int {
	var ImGuiTabBarFlags_None : Int;
	var ImGuiTabBarFlags_Reorderable : Int;
	var ImGuiTabBarFlags_AutoSelectNewTabs : Int;
	var ImGuiTabBarFlags_TabListPopupButton : Int;
	var ImGuiTabBarFlags_NoCloseWithMiddleMouseButton : Int;
	var ImGuiTabBarFlags_NoTabListScrollingButtons : Int;
	var ImGuiTabBarFlags_NoTooltip : Int;
	var ImGuiTabBarFlags_FittingPolicyResizeDown : Int;
	var ImGuiTabBarFlags_FittingPolicyScroll : Int;
	var ImGuiTabBarFlags_FittingPolicyMask_ : Int;
	var ImGuiTabBarFlags_FittingPolicyDefault_ : Int;
}

abstract ImGuiStyleVar_(Int) from Int to Int {
	var ImGuiStyleVar_Alpha : Int;
	var ImGuiStyleVar_WindowPadding : Int;
	var ImGuiStyleVar_WindowRounding : Int;
	var ImGuiStyleVar_WindowBorderSize : Int;
	var ImGuiStyleVar_WindowMinSize : Int;
	var ImGuiStyleVar_WindowTitleAlign : Int;
	var ImGuiStyleVar_ChildRounding : Int;
	var ImGuiStyleVar_ChildBorderSize : Int;
	var ImGuiStyleVar_PopupRounding : Int;
	var ImGuiStyleVar_PopupBorderSize : Int;
	var ImGuiStyleVar_FramePadding : Int;
	var ImGuiStyleVar_FrameRounding : Int;
	var ImGuiStyleVar_FrameBorderSize : Int;
	var ImGuiStyleVar_ItemSpacing : Int;
	var ImGuiStyleVar_ItemInnerSpacing : Int;
	var ImGuiStyleVar_IndentSpacing : Int;
	var ImGuiStyleVar_ScrollbarSize : Int;
	var ImGuiStyleVar_ScrollbarRounding : Int;
	var ImGuiStyleVar_GrabMinSize : Int;
	var ImGuiStyleVar_GrabRounding : Int;
	var ImGuiStyleVar_TabRounding : Int;
	var ImGuiStyleVar_ButtonTextAlign : Int;
	var ImGuiStyleVar_SelectableTextAlign : Int;
	var ImGuiStyleVar_COUNT : Int;
}

abstract ImGuiSelectableFlags_(Int) from Int to Int {
	var ImGuiSelectableFlags_None : Int;
	var ImGuiSelectableFlags_DontClosePopups : Int;
	var ImGuiSelectableFlags_SpanAllColumns : Int;
	var ImGuiSelectableFlags_AllowDoubleClick : Int;
	var ImGuiSelectableFlags_Disabled : Int;
}

abstract ImGuiNavInput_(Int) from Int to Int {
	var ImGuiNavInput_Activate : Int;
	var ImGuiNavInput_Cancel : Int;
	var ImGuiNavInput_Input : Int;
	var ImGuiNavInput_Menu : Int;
	var ImGuiNavInput_DpadLeft : Int;
	var ImGuiNavInput_DpadRight : Int;
	var ImGuiNavInput_DpadUp : Int;
	var ImGuiNavInput_DpadDown : Int;
	var ImGuiNavInput_LStickLeft : Int;
	var ImGuiNavInput_LStickRight : Int;
	var ImGuiNavInput_LStickUp : Int;
	var ImGuiNavInput_LStickDown : Int;
	var ImGuiNavInput_FocusPrev : Int;
	var ImGuiNavInput_FocusNext : Int;
	var ImGuiNavInput_TweakSlow : Int;
	var ImGuiNavInput_TweakFast : Int;
	var ImGuiNavInput_KeyMenu_ : Int;
	var ImGuiNavInput_KeyTab_ : Int;
	var ImGuiNavInput_KeyLeft_ : Int;
	var ImGuiNavInput_KeyRight_ : Int;
	var ImGuiNavInput_KeyUp_ : Int;
	var ImGuiNavInput_KeyDown_ : Int;
	var ImGuiNavInput_COUNT : Int;
	var ImGuiNavInput_InternalStart_ : Int;
}

abstract ImGuiMouseCursor_(Int) from Int to Int {
	var ImGuiMouseCursor_None : Int;
	var ImGuiMouseCursor_Arrow : Int;
	var ImGuiMouseCursor_TextInput : Int;
	var ImGuiMouseCursor_ResizeAll : Int;
	var ImGuiMouseCursor_ResizeNS : Int;
	var ImGuiMouseCursor_ResizeEW : Int;
	var ImGuiMouseCursor_ResizeNESW : Int;
	var ImGuiMouseCursor_ResizeNWSE : Int;
	var ImGuiMouseCursor_Hand : Int;
	var ImGuiMouseCursor_COUNT : Int;
}

abstract ImGuiKey_(Int) from Int to Int {
	var ImGuiKey_Tab : Int;
	var ImGuiKey_LeftArrow : Int;
	var ImGuiKey_RightArrow : Int;
	var ImGuiKey_UpArrow : Int;
	var ImGuiKey_DownArrow : Int;
	var ImGuiKey_PageUp : Int;
	var ImGuiKey_PageDown : Int;
	var ImGuiKey_Home : Int;
	var ImGuiKey_End : Int;
	var ImGuiKey_Insert : Int;
	var ImGuiKey_Delete : Int;
	var ImGuiKey_Backspace : Int;
	var ImGuiKey_Space : Int;
	var ImGuiKey_Enter : Int;
	var ImGuiKey_Escape : Int;
	var ImGuiKey_A : Int;
	var ImGuiKey_C : Int;
	var ImGuiKey_V : Int;
	var ImGuiKey_X : Int;
	var ImGuiKey_Y : Int;
	var ImGuiKey_Z : Int;
	var ImGuiKey_COUNT : Int;
}

abstract ImGuiInputTextFlags_(Int) from Int to Int {
	var ImGuiInputTextFlags_None : Int;
	var ImGuiInputTextFlags_CharsDecimal : Int;
	var ImGuiInputTextFlags_CharsHexadecimal : Int;
	var ImGuiInputTextFlags_CharsUppercase : Int;
	var ImGuiInputTextFlags_CharsNoBlank : Int;
	var ImGuiInputTextFlags_AutoSelectAll : Int;
	var ImGuiInputTextFlags_EnterReturnsTrue : Int;
	var ImGuiInputTextFlags_CallbackCompletion : Int;
	var ImGuiInputTextFlags_CallbackHistory : Int;
	var ImGuiInputTextFlags_CallbackAlways : Int;
	var ImGuiInputTextFlags_CallbackCharFilter : Int;
	var ImGuiInputTextFlags_AllowTabInput : Int;
	var ImGuiInputTextFlags_CtrlEnterForNewLine : Int;
	var ImGuiInputTextFlags_NoHorizontalScroll : Int;
	var ImGuiInputTextFlags_AlwaysInsertMode : Int;
	var ImGuiInputTextFlags_ReadOnly : Int;
	var ImGuiInputTextFlags_Password : Int;
	var ImGuiInputTextFlags_NoUndoRedo : Int;
	var ImGuiInputTextFlags_CharsScientific : Int;
	var ImGuiInputTextFlags_CallbackResize : Int;
	var ImGuiInputTextFlags_Multiline : Int;
	var ImGuiInputTextFlags_NoMarkEdited : Int;
}

abstract ImGuiHoveredFlags_(Int) from Int to Int {
	var ImGuiHoveredFlags_None : Int;
	var ImGuiHoveredFlags_ChildWindows : Int;
	var ImGuiHoveredFlags_RootWindow : Int;
	var ImGuiHoveredFlags_AnyWindow : Int;
	var ImGuiHoveredFlags_AllowWhenBlockedByPopup : Int;
	var ImGuiHoveredFlags_AllowWhenBlockedByActiveItem : Int;
	var ImGuiHoveredFlags_AllowWhenOverlapped : Int;
	var ImGuiHoveredFlags_AllowWhenDisabled : Int;
	var ImGuiHoveredFlags_RectOnly : Int;
	var ImGuiHoveredFlags_RootAndChildWindows : Int;
}

abstract ImGuiFocusedFlags_(Int) from Int to Int {
	var ImGuiFocusedFlags_None : Int;
	var ImGuiFocusedFlags_ChildWindows : Int;
	var ImGuiFocusedFlags_RootWindow : Int;
	var ImGuiFocusedFlags_AnyWindow : Int;
	var ImGuiFocusedFlags_RootAndChildWindows : Int;
}

abstract ImGuiDragDropFlags_(Int) from Int to Int {
	var ImGuiDragDropFlags_None : Int;
	var ImGuiDragDropFlags_SourceNoPreviewTooltip : Int;
	var ImGuiDragDropFlags_SourceNoDisableHover : Int;
	var ImGuiDragDropFlags_SourceNoHoldToOpenOthers : Int;
	var ImGuiDragDropFlags_SourceAllowNullID : Int;
	var ImGuiDragDropFlags_SourceExtern : Int;
	var ImGuiDragDropFlags_SourceAutoExpirePayload : Int;
	var ImGuiDragDropFlags_AcceptBeforeDelivery : Int;
	var ImGuiDragDropFlags_AcceptNoDrawDefaultRect : Int;
	var ImGuiDragDropFlags_AcceptNoPreviewTooltip : Int;
	var ImGuiDragDropFlags_AcceptPeekOnly : Int;
}

abstract ImGuiDir_(Int) from Int to Int {
	var ImGuiDir_None : Int;
	var ImGuiDir_Left : Int;
	var ImGuiDir_Right : Int;
	var ImGuiDir_Up : Int;
	var ImGuiDir_Down : Int;
	var ImGuiDir_COUNT : Int;
}

abstract ImGuiDataType_(Int) from Int to Int {
	var ImGuiDataType_S8 : Int;
	var ImGuiDataType_U8 : Int;
	var ImGuiDataType_S16 : Int;
	var ImGuiDataType_U16 : Int;
	var ImGuiDataType_S32 : Int;
	var ImGuiDataType_U32 : Int;
	var ImGuiDataType_S64 : Int;
	var ImGuiDataType_U64 : Int;
	var ImGuiDataType_Float : Int;
	var ImGuiDataType_Double : Int;
	var ImGuiDataType_COUNT : Int;
}

abstract ImGuiConfigFlags_(Int) from Int to Int {
	var ImGuiConfigFlags_None : Int;
	var ImGuiConfigFlags_NavEnableKeyboard : Int;
	var ImGuiConfigFlags_NavEnableGamepad : Int;
	var ImGuiConfigFlags_NavEnableSetMousePos : Int;
	var ImGuiConfigFlags_NavNoCaptureKeyboard : Int;
	var ImGuiConfigFlags_NoMouse : Int;
	var ImGuiConfigFlags_NoMouseCursorChange : Int;
	var ImGuiConfigFlags_IsSRGB : Int;
	var ImGuiConfigFlags_IsTouchScreen : Int;
}

abstract ImGuiCond_(Int) from Int to Int {
	var ImGuiCond_Always : Int;
	var ImGuiCond_Once : Int;
	var ImGuiCond_FirstUseEver : Int;
	var ImGuiCond_Appearing : Int;
}

abstract ImGuiComboFlags_(Int) from Int to Int {
	var ImGuiComboFlags_None : Int;
	var ImGuiComboFlags_PopupAlignLeft : Int;
	var ImGuiComboFlags_HeightSmall : Int;
	var ImGuiComboFlags_HeightRegular : Int;
	var ImGuiComboFlags_HeightLarge : Int;
	var ImGuiComboFlags_HeightLargest : Int;
	var ImGuiComboFlags_NoArrowButton : Int;
	var ImGuiComboFlags_NoPreview : Int;
	var ImGuiComboFlags_HeightMask_ : Int;
}

abstract ImGuiColorEditFlags_(Int) from Int to Int {
	var ImGuiColorEditFlags_None : Int;
	var ImGuiColorEditFlags_NoAlpha : Int;
	var ImGuiColorEditFlags_NoPicker : Int;
	var ImGuiColorEditFlags_NoOptions : Int;
	var ImGuiColorEditFlags_NoSmallPreview : Int;
	var ImGuiColorEditFlags_NoInputs : Int;
	var ImGuiColorEditFlags_NoTooltip : Int;
	var ImGuiColorEditFlags_NoLabel : Int;
	var ImGuiColorEditFlags_NoSidePreview : Int;
	var ImGuiColorEditFlags_NoDragDrop : Int;
	var ImGuiColorEditFlags_AlphaBar : Int;
	var ImGuiColorEditFlags_AlphaPreview : Int;
	var ImGuiColorEditFlags_AlphaPreviewHalf : Int;
	var ImGuiColorEditFlags_HDR : Int;
	var ImGuiColorEditFlags_DisplayRGB : Int;
	var ImGuiColorEditFlags_DisplayHSV : Int;
	var ImGuiColorEditFlags_DisplayHex : Int;
	var ImGuiColorEditFlags_Uint8 : Int;
	var ImGuiColorEditFlags_Float : Int;
	var ImGuiColorEditFlags_PickerHueBar : Int;
	var ImGuiColorEditFlags_PickerHueWheel : Int;
	var ImGuiColorEditFlags_InputRGB : Int;
	var ImGuiColorEditFlags_InputHSV : Int;
	var ImGuiColorEditFlags__OptionsDefault : Int;
	var ImGuiColorEditFlags__DisplayMask : Int;
	var ImGuiColorEditFlags__DataTypeMask : Int;
	var ImGuiColorEditFlags__PickerMask : Int;
	var ImGuiColorEditFlags__InputMask : Int;
}

abstract ImGuiCol_(Int) from Int to Int {
	var ImGuiCol_Text : Int;
	var ImGuiCol_TextDisabled : Int;
	var ImGuiCol_WindowBg : Int;
	var ImGuiCol_ChildBg : Int;
	var ImGuiCol_PopupBg : Int;
	var ImGuiCol_Border : Int;
	var ImGuiCol_BorderShadow : Int;
	var ImGuiCol_FrameBg : Int;
	var ImGuiCol_FrameBgHovered : Int;
	var ImGuiCol_FrameBgActive : Int;
	var ImGuiCol_TitleBg : Int;
	var ImGuiCol_TitleBgActive : Int;
	var ImGuiCol_TitleBgCollapsed : Int;
	var ImGuiCol_MenuBarBg : Int;
	var ImGuiCol_ScrollbarBg : Int;
	var ImGuiCol_ScrollbarGrab : Int;
	var ImGuiCol_ScrollbarGrabHovered : Int;
	var ImGuiCol_ScrollbarGrabActive : Int;
	var ImGuiCol_CheckMark : Int;
	var ImGuiCol_SliderGrab : Int;
	var ImGuiCol_SliderGrabActive : Int;
	var ImGuiCol_Button : Int;
	var ImGuiCol_ButtonHovered : Int;
	var ImGuiCol_ButtonActive : Int;
	var ImGuiCol_Header : Int;
	var ImGuiCol_HeaderHovered : Int;
	var ImGuiCol_HeaderActive : Int;
	var ImGuiCol_Separator : Int;
	var ImGuiCol_SeparatorHovered : Int;
	var ImGuiCol_SeparatorActive : Int;
	var ImGuiCol_ResizeGrip : Int;
	var ImGuiCol_ResizeGripHovered : Int;
	var ImGuiCol_ResizeGripActive : Int;
	var ImGuiCol_Tab : Int;
	var ImGuiCol_TabHovered : Int;
	var ImGuiCol_TabActive : Int;
	var ImGuiCol_TabUnfocused : Int;
	var ImGuiCol_TabUnfocusedActive : Int;
	var ImGuiCol_PlotLines : Int;
	var ImGuiCol_PlotLinesHovered : Int;
	var ImGuiCol_PlotHistogram : Int;
	var ImGuiCol_PlotHistogramHovered : Int;
	var ImGuiCol_TextSelectedBg : Int;
	var ImGuiCol_DragDropTarget : Int;
	var ImGuiCol_NavHighlight : Int;
	var ImGuiCol_NavWindowingHighlight : Int;
	var ImGuiCol_NavWindowingDimBg : Int;
	var ImGuiCol_ModalWindowDimBg : Int;
	var ImGuiCol_COUNT : Int;
}

abstract ImGuiBackendFlags_(Int) from Int to Int {
	var ImGuiBackendFlags_None : Int;
	var ImGuiBackendFlags_HasGamepad : Int;
	var ImGuiBackendFlags_HasMouseCursors : Int;
	var ImGuiBackendFlags_HasSetMousePos : Int;
	var ImGuiBackendFlags_RendererHasVtxOffset : Int;
}

abstract ImFontAtlasFlags_(Int) from Int to Int {
	var ImFontAtlasFlags_None : Int;
	var ImFontAtlasFlags_NoPowerOfTwoHeight : Int;
	var ImFontAtlasFlags_NoMouseCursors : Int;
}

abstract ImDrawListFlags_(Int) from Int to Int {
	var ImDrawListFlags_None : Int;
	var ImDrawListFlags_AntiAliasedLines : Int;
	var ImDrawListFlags_AntiAliasedFill : Int;
	var ImDrawListFlags_AllowVtxOffset : Int;
}

abstract ImDrawCornerFlags_(Int) from Int to Int {
	var ImDrawCornerFlags_TopLeft : Int;
	var ImDrawCornerFlags_TopRight : Int;
	var ImDrawCornerFlags_BotLeft : Int;
	var ImDrawCornerFlags_BotRight : Int;
	var ImDrawCornerFlags_Top : Int;
	var ImDrawCornerFlags_Bot : Int;
	var ImDrawCornerFlags_Left : Int;
	var ImDrawCornerFlags_Right : Int;
	var ImDrawCornerFlags_All : Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("TextRange") extern class TextRange {
	@:native("b")
	var b : cpp.Star<cpp.Int8>;
	@:native("e")
	var e : cpp.Star<cpp.Int8>;
}

@:keep @:structAccess @:include("imgui.h") @:native("Pair") extern class Pair {
	@:native("key")
	var key : imgui.ImGuiID;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec4") extern class ImVec4 {
	@:native("x")
	var x : cpp.Float32;
	@:native("y")
	var y : cpp.Float32;
	@:native("z")
	var z : cpp.Float32;
	@:native("w")
	var w : cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec2") extern class ImVec2 {
	@:native("x")
	var x : cpp.Float32;
	@:native("y")
	var y : cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextFilter") extern class ImGuiTextFilter {
	@:native("InputBuf")
	var inputBuf : cpp.RawPointer<cpp.Int8>;
	@:native("Filters")
	var filters : imgui.ImVector.ImVectorTextRange;
	@:native("CountGrep")
	var countGrep : Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextBuffer") extern class ImGuiTextBuffer {
	@:native("Buf")
	var buf : imgui.ImVector.ImVectorchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStyle") extern class ImGuiStyle {
	@:native("Alpha")
	var alpha : cpp.Float32;
	@:native("WindowPadding")
	var windowPadding : imgui.ImVec2;
	@:native("WindowRounding")
	var windowRounding : cpp.Float32;
	@:native("WindowBorderSize")
	var windowBorderSize : cpp.Float32;
	@:native("WindowMinSize")
	var windowMinSize : imgui.ImVec2;
	@:native("WindowTitleAlign")
	var windowTitleAlign : imgui.ImVec2;
	@:native("WindowMenuButtonPosition")
	var windowMenuButtonPosition : imgui.ImGuiDir;
	@:native("ChildRounding")
	var childRounding : cpp.Float32;
	@:native("ChildBorderSize")
	var childBorderSize : cpp.Float32;
	@:native("PopupRounding")
	var popupRounding : cpp.Float32;
	@:native("PopupBorderSize")
	var popupBorderSize : cpp.Float32;
	@:native("FramePadding")
	var framePadding : imgui.ImVec2;
	@:native("FrameRounding")
	var frameRounding : cpp.Float32;
	@:native("FrameBorderSize")
	var frameBorderSize : cpp.Float32;
	@:native("ItemSpacing")
	var itemSpacing : imgui.ImVec2;
	@:native("ItemInnerSpacing")
	var itemInnerSpacing : imgui.ImVec2;
	@:native("TouchExtraPadding")
	var touchExtraPadding : imgui.ImVec2;
	@:native("IndentSpacing")
	var indentSpacing : cpp.Float32;
	@:native("ColumnsMinSpacing")
	var columnsMinSpacing : cpp.Float32;
	@:native("ScrollbarSize")
	var scrollbarSize : cpp.Float32;
	@:native("ScrollbarRounding")
	var scrollbarRounding : cpp.Float32;
	@:native("GrabMinSize")
	var grabMinSize : cpp.Float32;
	@:native("GrabRounding")
	var grabRounding : cpp.Float32;
	@:native("TabRounding")
	var tabRounding : cpp.Float32;
	@:native("TabBorderSize")
	var tabBorderSize : cpp.Float32;
	@:native("ButtonTextAlign")
	var buttonTextAlign : imgui.ImVec2;
	@:native("SelectableTextAlign")
	var selectableTextAlign : imgui.ImVec2;
	@:native("DisplayWindowPadding")
	var displayWindowPadding : imgui.ImVec2;
	@:native("DisplaySafeAreaPadding")
	var displaySafeAreaPadding : imgui.ImVec2;
	@:native("MouseCursorScale")
	var mouseCursorScale : cpp.Float32;
	@:native("AntiAliasedLines")
	var antiAliasedLines : Bool;
	@:native("AntiAliasedFill")
	var antiAliasedFill : Bool;
	@:native("CurveTessellationTol")
	var curveTessellationTol : cpp.Float32;
	@:native("Colors")
	var colors : cpp.RawPointer<imgui.ImVec4>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStorage") extern class ImGuiStorage {
	@:native("Data")
	var data : imgui.ImVector.ImVectorPair;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiSizeCallbackData") extern class ImGuiSizeCallbackData {
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("Pos")
	var pos : imgui.ImVec2;
	@:native("CurrentSize")
	var currentSize : imgui.ImVec2;
	@:native("DesiredSize")
	var desiredSize : imgui.ImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiPayload") extern class ImGuiPayload {
	@:native("Data")
	var data : imgui.VoidPointer;
	@:native("DataSize")
	var dataSize : Int;
	@:native("SourceId")
	var sourceId : imgui.ImGuiID;
	@:native("SourceParentId")
	var sourceParentId : imgui.ImGuiID;
	@:native("DataFrameCount")
	var dataFrameCount : Int;
	@:native("DataType")
	var dataType : cpp.RawPointer<cpp.Int8>;
	@:native("Preview")
	var preview : Bool;
	@:native("Delivery")
	var delivery : Bool;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiOnceUponAFrame") extern class ImGuiOnceUponAFrame {
	@:native("RefFrame")
	var refFrame : Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiListClipper") extern class ImGuiListClipper {
	@:native("StartPosY")
	var startPosY : cpp.Float32;
	@:native("ItemsHeight")
	var itemsHeight : cpp.Float32;
	@:native("ItemsCount")
	var itemsCount : Int;
	@:native("StepNo")
	var stepNo : Int;
	@:native("DisplayStart")
	var displayStart : Int;
	@:native("DisplayEnd")
	var displayEnd : Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiInputTextCallbackData") extern class ImGuiInputTextCallbackData {
	@:native("EventFlag")
	var eventFlag : imgui.ImGuiInputTextFlags;
	@:native("Flags")
	var flags : imgui.ImGuiInputTextFlags;
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("EventChar")
	var eventChar : imgui.ImWchar;
	@:native("EventKey")
	var eventKey : imgui.ImGuiKey;
	@:native("Buf")
	var buf : cpp.Star<cpp.Int8>;
	@:native("BufTextLen")
	var bufTextLen : Int;
	@:native("BufSize")
	var bufSize : Int;
	@:native("BufDirty")
	var bufDirty : Bool;
	@:native("CursorPos")
	var cursorPos : Int;
	@:native("SelectionStart")
	var selectionStart : Int;
	@:native("SelectionEnd")
	var selectionEnd : Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiIO") extern class ImGuiIO {
	@:native("ConfigFlags")
	var configFlags : imgui.ImGuiConfigFlags;
	@:native("BackendFlags")
	var backendFlags : imgui.ImGuiBackendFlags;
	@:native("DisplaySize")
	var displaySize : imgui.ImVec2;
	@:native("DeltaTime")
	var deltaTime : cpp.Float32;
	@:native("IniSavingRate")
	var iniSavingRate : cpp.Float32;
	@:native("IniFilename")
	var iniFilename : cpp.Star<cpp.Int8>;
	@:native("LogFilename")
	var logFilename : cpp.Star<cpp.Int8>;
	@:native("MouseDoubleClickTime")
	var mouseDoubleClickTime : cpp.Float32;
	@:native("MouseDoubleClickMaxDist")
	var mouseDoubleClickMaxDist : cpp.Float32;
	@:native("MouseDragThreshold")
	var mouseDragThreshold : cpp.Float32;
	@:native("KeyMap")
	var keyMap : cpp.RawPointer<Int>;
	@:native("KeyRepeatDelay")
	var keyRepeatDelay : cpp.Float32;
	@:native("KeyRepeatRate")
	var keyRepeatRate : cpp.Float32;
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("Fonts")
	var fonts : cpp.Star<imgui.ImFontAtlas>;
	@:native("FontGlobalScale")
	var fontGlobalScale : cpp.Float32;
	@:native("FontAllowUserScaling")
	var fontAllowUserScaling : Bool;
	@:native("FontDefault")
	var fontDefault : cpp.Star<imgui.ImFont>;
	@:native("DisplayFramebufferScale")
	var displayFramebufferScale : imgui.ImVec2;
	@:native("MouseDrawCursor")
	var mouseDrawCursor : Bool;
	@:native("ConfigMacOSXBehaviors")
	var configMacOSXBehaviors : Bool;
	@:native("ConfigInputTextCursorBlink")
	var configInputTextCursorBlink : Bool;
	@:native("ConfigWindowsResizeFromEdges")
	var configWindowsResizeFromEdges : Bool;
	@:native("ConfigWindowsMoveFromTitleBarOnly")
	var configWindowsMoveFromTitleBarOnly : Bool;
	@:native("BackendPlatformName")
	var backendPlatformName : cpp.Star<cpp.Int8>;
	@:native("BackendRendererName")
	var backendRendererName : cpp.Star<cpp.Int8>;
	@:native("BackendPlatformUserData")
	var backendPlatformUserData : imgui.VoidPointer;
	@:native("BackendRendererUserData")
	var backendRendererUserData : imgui.VoidPointer;
	@:native("BackendLanguageUserData")
	var backendLanguageUserData : imgui.VoidPointer;
	@:native("ClipboardUserData")
	var clipboardUserData : imgui.VoidPointer;
	@:native("ImeWindowHandle")
	var imeWindowHandle : imgui.VoidPointer;
	@:native("RenderDrawListsFnUnused")
	var renderDrawListsFnUnused : imgui.VoidPointer;
	@:native("MousePos")
	var mousePos : imgui.ImVec2;
	@:native("MouseDown")
	var mouseDown : cpp.RawPointer<Bool>;
	@:native("MouseWheel")
	var mouseWheel : cpp.Float32;
	@:native("MouseWheelH")
	var mouseWheelH : cpp.Float32;
	@:native("KeyCtrl")
	var keyCtrl : Bool;
	@:native("KeyShift")
	var keyShift : Bool;
	@:native("KeyAlt")
	var keyAlt : Bool;
	@:native("KeySuper")
	var keySuper : Bool;
	@:native("KeysDown")
	var keysDown : cpp.RawPointer<Bool>;
	@:native("NavInputs")
	var navInputs : cpp.RawPointer<cpp.Float32>;
	@:native("WantCaptureMouse")
	var wantCaptureMouse : Bool;
	@:native("WantCaptureKeyboard")
	var wantCaptureKeyboard : Bool;
	@:native("WantTextInput")
	var wantTextInput : Bool;
	@:native("WantSetMousePos")
	var wantSetMousePos : Bool;
	@:native("WantSaveIniSettings")
	var wantSaveIniSettings : Bool;
	@:native("NavActive")
	var navActive : Bool;
	@:native("NavVisible")
	var navVisible : Bool;
	@:native("Framerate")
	var framerate : cpp.Float32;
	@:native("MetricsRenderVertices")
	var metricsRenderVertices : Int;
	@:native("MetricsRenderIndices")
	var metricsRenderIndices : Int;
	@:native("MetricsRenderWindows")
	var metricsRenderWindows : Int;
	@:native("MetricsActiveWindows")
	var metricsActiveWindows : Int;
	@:native("MetricsActiveAllocations")
	var metricsActiveAllocations : Int;
	@:native("MouseDelta")
	var mouseDelta : imgui.ImVec2;
	@:native("MousePosPrev")
	var mousePosPrev : imgui.ImVec2;
	@:native("MouseClickedPos")
	var mouseClickedPos : cpp.RawPointer<imgui.ImVec2>;
	@:native("MouseClickedTime")
	var mouseClickedTime : cpp.RawPointer<Float>;
	@:native("MouseClicked")
	var mouseClicked : cpp.RawPointer<Bool>;
	@:native("MouseDoubleClicked")
	var mouseDoubleClicked : cpp.RawPointer<Bool>;
	@:native("MouseReleased")
	var mouseReleased : cpp.RawPointer<Bool>;
	@:native("MouseDownOwned")
	var mouseDownOwned : cpp.RawPointer<Bool>;
	@:native("MouseDownWasDoubleClick")
	var mouseDownWasDoubleClick : cpp.RawPointer<Bool>;
	@:native("MouseDownDuration")
	var mouseDownDuration : cpp.RawPointer<cpp.Float32>;
	@:native("MouseDownDurationPrev")
	var mouseDownDurationPrev : cpp.RawPointer<cpp.Float32>;
	@:native("MouseDragMaxDistanceAbs")
	var mouseDragMaxDistanceAbs : cpp.RawPointer<imgui.ImVec2>;
	@:native("MouseDragMaxDistanceSqr")
	var mouseDragMaxDistanceSqr : cpp.RawPointer<cpp.Float32>;
	@:native("KeysDownDuration")
	var keysDownDuration : cpp.RawPointer<cpp.Float32>;
	@:native("KeysDownDurationPrev")
	var keysDownDurationPrev : cpp.RawPointer<cpp.Float32>;
	@:native("NavInputsDownDuration")
	var navInputsDownDuration : cpp.RawPointer<cpp.Float32>;
	@:native("NavInputsDownDurationPrev")
	var navInputsDownDurationPrev : cpp.RawPointer<cpp.Float32>;
	@:native("InputQueueCharacters")
	var inputQueueCharacters : imgui.ImVector.ImVectorImWchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontGlyphRangesBuilder") extern class ImFontGlyphRangesBuilder {
	@:native("UsedChars")
	var usedChars : imgui.ImVector.ImVectorImU32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontGlyph") extern class ImFontGlyph {
	@:native("Codepoint")
	var codepoint : imgui.ImWchar;
	@:native("AdvanceX")
	var advanceX : cpp.Float32;
	@:native("X0")
	var x0 : cpp.Float32;
	@:native("Y0")
	var y0 : cpp.Float32;
	@:native("X1")
	var x1 : cpp.Float32;
	@:native("Y1")
	var y1 : cpp.Float32;
	@:native("U0")
	var u0 : cpp.Float32;
	@:native("V0")
	var v0 : cpp.Float32;
	@:native("U1")
	var u1 : cpp.Float32;
	@:native("V1")
	var v1 : cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontConfig") extern class ImFontConfig {
	@:native("FontData")
	var fontData : imgui.VoidPointer;
	@:native("FontDataSize")
	var fontDataSize : Int;
	@:native("FontDataOwnedByAtlas")
	var fontDataOwnedByAtlas : Bool;
	@:native("FontNo")
	var fontNo : Int;
	@:native("SizePixels")
	var sizePixels : cpp.Float32;
	@:native("OversampleH")
	var oversampleH : Int;
	@:native("OversampleV")
	var oversampleV : Int;
	@:native("PixelSnapH")
	var pixelSnapH : Bool;
	@:native("GlyphExtraSpacing")
	var glyphExtraSpacing : imgui.ImVec2;
	@:native("GlyphOffset")
	var glyphOffset : imgui.ImVec2;
	@:native("GlyphRanges")
	var glyphRanges : cpp.Star<imgui.ImWchar>;
	@:native("GlyphMinAdvanceX")
	var glyphMinAdvanceX : cpp.Float32;
	@:native("GlyphMaxAdvanceX")
	var glyphMaxAdvanceX : cpp.Float32;
	@:native("MergeMode")
	var mergeMode : Bool;
	@:native("RasterizerFlags")
	var rasterizerFlags : UInt;
	@:native("RasterizerMultiply")
	var rasterizerMultiply : cpp.Float32;
	@:native("Name")
	var name : cpp.RawPointer<cpp.Int8>;
	@:native("DstFont")
	var dstFont : cpp.Star<imgui.ImFont>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontAtlas") extern class ImFontAtlas {
	@:native("Locked")
	var locked : Bool;
	@:native("Flags")
	var flags : imgui.ImFontAtlasFlags;
	@:native("TexID")
	var texID : imgui.ImTextureID;
	@:native("TexDesiredWidth")
	var texDesiredWidth : Int;
	@:native("TexGlyphPadding")
	var texGlyphPadding : Int;
	@:native("TexPixelsAlpha8")
	var texPixelsAlpha8 : imgui.BytesPointer;
	@:native("TexPixelsRGBA32")
	var texPixelsRGBA32 : cpp.Star<UInt>;
	@:native("TexWidth")
	var texWidth : Int;
	@:native("TexHeight")
	var texHeight : Int;
	@:native("TexUvScale")
	var texUvScale : imgui.ImVec2;
	@:native("TexUvWhitePixel")
	var texUvWhitePixel : imgui.ImVec2;
	@:native("Fonts")
	var fonts : cpp.Star<imgui.ImVector.ImVectorImFont>;
	@:native("CustomRects")
	var customRects : imgui.ImVector.ImVectorCustomRect;
	@:native("ConfigData")
	var configData : imgui.ImVector.ImVectorImFontConfig;
	@:native("CustomRectIds")
	var customRectIds : cpp.RawPointer<Int>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFont") extern class ImFont {
	@:native("IndexAdvanceX")
	var indexAdvanceX : imgui.ImVector.ImVectorfloat;
	@:native("FallbackAdvanceX")
	var fallbackAdvanceX : cpp.Float32;
	@:native("FontSize")
	var fontSize : cpp.Float32;
	@:native("IndexLookup")
	var indexLookup : imgui.ImVector.ImVectorImWchar;
	@:native("Glyphs")
	var glyphs : imgui.ImVector.ImVectorImFontGlyph;
	@:native("FallbackGlyph")
	var fallbackGlyph : cpp.Star<imgui.ImFontGlyph>;
	@:native("DisplayOffset")
	var displayOffset : imgui.ImVec2;
	@:native("ContainerAtlas")
	var containerAtlas : cpp.Star<imgui.ImFontAtlas>;
	@:native("ConfigData")
	var configData : cpp.Star<imgui.ImFontConfig>;
	@:native("ConfigDataCount")
	var configDataCount : cpp.Int16;
	@:native("FallbackChar")
	var fallbackChar : imgui.ImWchar;
	@:native("Scale")
	var scale : cpp.Float32;
	@:native("Ascent")
	var ascent : cpp.Float32;
	@:native("Descent")
	var descent : cpp.Float32;
	@:native("MetricsTotalSurface")
	var metricsTotalSurface : Int;
	@:native("DirtyLookupTables")
	var dirtyLookupTables : Bool;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawVert") extern class ImDrawVert {
	@:native("pos")
	var pos : imgui.ImVec2;
	@:native("uv")
	var uv : imgui.ImVec2;
	@:native("col")
	var col : imgui.ImU32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawListSplitter") extern class ImDrawListSplitter {
	@:native("_Current")
	var _Current : Int;
	@:native("_Count")
	var _Count : Int;
	@:native("_Channels")
	var _Channels : imgui.ImVector.ImVectorImDrawChannel;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawList") extern class ImDrawList {
	@:native("CmdBuffer")
	var cmdBuffer : imgui.ImVector.ImVectorImDrawCmd;
	@:native("IdxBuffer")
	var idxBuffer : imgui.ImVector.ImVectorImDrawIdx;
	@:native("VtxBuffer")
	var vtxBuffer : imgui.ImVector.ImVectorImDrawVert;
	@:native("Flags")
	var flags : imgui.ImDrawListFlags;
	@:native("_Data")
	var _Data : cpp.Star<imgui.ImDrawListSharedData>;
	@:native("_OwnerName")
	var _OwnerName : cpp.Star<cpp.Int8>;
	@:native("_VtxCurrentOffset")
	var _VtxCurrentOffset : UInt;
	@:native("_VtxCurrentIdx")
	var _VtxCurrentIdx : UInt;
	@:native("_VtxWritePtr")
	var _VtxWritePtr : cpp.Star<imgui.ImDrawVert>;
	@:native("_IdxWritePtr")
	var _IdxWritePtr : cpp.Star<imgui.ImDrawIdx>;
	@:native("_ClipRectStack")
	var _ClipRectStack : imgui.ImVector.ImVectorImVec4;
	@:native("_TextureIdStack")
	var _TextureIdStack : imgui.ImVector.ImVectorImTextureID;
	@:native("_Path")
	var _Path : imgui.ImVector.ImVectorImVec2;
	@:native("_Splitter")
	var _Splitter : imgui.ImDrawListSplitter;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawData") extern class ImDrawData {
	@:native("Valid")
	var valid : Bool;
	@:native("CmdLists")
	var cmdLists : cpp.Star<cpp.Star<imgui.ImDrawList>>;
	@:native("CmdListsCount")
	var cmdListsCount : Int;
	@:native("TotalIdxCount")
	var totalIdxCount : Int;
	@:native("TotalVtxCount")
	var totalVtxCount : Int;
	@:native("DisplayPos")
	var displayPos : imgui.ImVec2;
	@:native("DisplaySize")
	var displaySize : imgui.ImVec2;
	@:native("FramebufferScale")
	var framebufferScale : imgui.ImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawCmd") extern class ImDrawCmd {
	@:native("ElemCount")
	var elemCount : UInt;
	@:native("ClipRect")
	var clipRect : imgui.ImVec4;
	@:native("TextureId")
	var textureId : imgui.ImTextureID;
	@:native("VtxOffset")
	var vtxOffset : UInt;
	@:native("IdxOffset")
	var idxOffset : UInt;
	@:native("UserCallback")
	var userCallback : imgui.ImDrawCallback;
	@:native("UserCallbackData")
	var userCallbackData : imgui.VoidPointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawChannel") extern class ImDrawChannel {
	@:native("_CmdBuffer")
	var _CmdBuffer : imgui.ImVector.ImVectorImDrawCmd;
	@:native("_IdxBuffer")
	var _IdxBuffer : imgui.ImVector.ImVectorImDrawIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImColor") extern class ImColor {
	@:native("Value")
	var value : imgui.ImVec4;
}

@:keep @:structAccess @:include("imgui.h") @:native("CustomRect") extern class CustomRect {
	@:native("ID")
	var iD : UInt;
	@:native("Width")
	var width : cpp.UInt16;
	@:native("Height")
	var height : cpp.UInt16;
	@:native("X")
	var x : cpp.UInt16;
	@:native("Y")
	var y : cpp.UInt16;
	@:native("GlyphAdvanceX")
	var glyphAdvanceX : cpp.Float32;
	@:native("GlyphOffset")
	var glyphOffset : imgui.ImVec2;
	@:native("Font")
	var font : cpp.Star<imgui.ImFont>;
}

