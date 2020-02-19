package imgui;

typedef ImWchar = cpp.UInt16;

typedef ImU8 = cpp.UInt8;

typedef ImU64 = cpp.UInt64;

typedef ImU32 = UInt;

typedef ImU16 = cpp.UInt16;

typedef ImTextureID = imgui.VoidPointer;

typedef ImS8 = cpp.Int8;

typedef ImS64 = cpp.Int64;

typedef ImS32 = Int;

typedef ImS16 = cpp.Int16;

typedef ImGuiStyleVar = Int;

typedef ImGuiSizeCallback = cpp.Callable<cpp.Star<imgui.ImGuiSizeCallbackData> -> cpp.Void>;

typedef ImGuiNavInput = Int;

typedef ImGuiMouseCursor = Int;

typedef ImGuiKey = Int;

typedef ImGuiInputTextCallback = cpp.Callable<imgui.ImGuiInputTextCallbackData -> Int>;

typedef ImGuiID = UInt;

typedef ImGuiDir = Int;

typedef ImGuiDataType = Int;

typedef ImGuiCond = Int;

typedef ImGuiCol = Int;

typedef ImDrawIdx = cpp.UInt16;

typedef ImDrawCallback = cpp.Callable<(cpp.Star<imgui.ImDrawList>, cpp.Star<imgui.ImDrawCmd>) -> cpp.Void>;

abstract ImGuiWindowFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoTitleBar : Int = 1;
	var NoResize : Int = 2;
	var NoMove : Int = 4;
	var NoScrollbar : Int = 8;
	var NoScrollWithMouse : Int = 16;
	var NoCollapse : Int = 32;
	var AlwaysAutoResize : Int = 64;
	var NoBackground : Int = 128;
	var NoSavedSettings : Int = 256;
	var NoMouseInputs : Int = 512;
	var MenuBar : Int = 1024;
	var HorizontalScrollbar : Int = 2048;
	var NoFocusOnAppearing : Int = 4096;
	var NoBringToFrontOnFocus : Int = 8192;
	var AlwaysVerticalScrollbar : Int = 16384;
	var AlwaysHorizontalScrollbar : Int = 32768;
	var AlwaysUseWindowPadding : Int = 65536;
	var NoNavInputs : Int = 262144;
	var NoNavFocus : Int = 524288;
	var UnsavedDocument : Int = 1048576;
	var NoNav : Int = 786432;
	var NoDecoration : Int = 43;
	var NoInputs : Int = 786944;
	var NavFlattened : Int = 8388608;
	var ChildWindow : Int = 16777216;
	var Tooltip : Int = 33554432;
	var Popup : Int = 67108864;
	var Modal : Int = 134217728;
	var ChildMenu : Int = 268435456;
}

abstract ImGuiTreeNodeFlags(Int) from Int to Int {
	var None : Int = 0;
	var Selected : Int = 1;
	var Framed : Int = 2;
	var AllowItemOverlap : Int = 4;
	var NoTreePushOnOpen : Int = 8;
	var NoAutoOpenOnLog : Int = 16;
	var DefaultOpen : Int = 32;
	var OpenOnDoubleClick : Int = 64;
	var OpenOnArrow : Int = 128;
	var Leaf : Int = 256;
	var Bullet : Int = 512;
	var FramePadding : Int = 1024;
	var NavLeftJumpsBackHere : Int = 8192;
	var CollapsingHeader : Int = 26;
}

abstract ImGuiTabItemFlags(Int) from Int to Int {
	var None : Int = 0;
	var UnsavedDocument : Int = 1;
	var SetSelected : Int = 2;
	var NoCloseWithMiddleMouseButton : Int = 4;
	var NoPushId : Int = 8;
}

abstract ImGuiTabBarFlags(Int) from Int to Int {
	var None : Int = 0;
	var Reorderable : Int = 1;
	var AutoSelectNewTabs : Int = 2;
	var TabListPopupButton : Int = 4;
	var NoCloseWithMiddleMouseButton : Int = 8;
	var NoTabListScrollingButtons : Int = 16;
	var NoTooltip : Int = 32;
	var FittingPolicyResizeDown : Int = 64;
	var FittingPolicyScroll : Int = 128;
	var FittingPolicyMask_ : Int = 192;
	var FittingPolicyDefault_ : Int = 64;
}

abstract ImGuiStyleVar(Int) from Int to Int {
	var Alpha : Int = 0;
	var WindowPadding : Int = 1;
	var WindowRounding : Int = 2;
	var WindowBorderSize : Int = 3;
	var WindowMinSize : Int = 4;
	var WindowTitleAlign : Int = 5;
	var ChildRounding : Int = 6;
	var ChildBorderSize : Int = 7;
	var PopupRounding : Int = 8;
	var PopupBorderSize : Int = 9;
	var FramePadding : Int = 10;
	var FrameRounding : Int = 11;
	var FrameBorderSize : Int = 12;
	var ItemSpacing : Int = 13;
	var ItemInnerSpacing : Int = 14;
	var IndentSpacing : Int = 15;
	var ScrollbarSize : Int = 16;
	var ScrollbarRounding : Int = 17;
	var GrabMinSize : Int = 18;
	var GrabRounding : Int = 19;
	var TabRounding : Int = 20;
	var ButtonTextAlign : Int = 21;
	var SelectableTextAlign : Int = 22;
	var COUNT : Int = 23;
}

abstract ImGuiSelectableFlags(Int) from Int to Int {
	var None : Int = 0;
	var DontClosePopups : Int = 1;
	var SpanAllColumns : Int = 2;
	var AllowDoubleClick : Int = 4;
	var Disabled : Int = 8;
}

abstract ImGuiNavInput(Int) from Int to Int {
	var Activate : Int = 0;
	var Cancel : Int = 1;
	var Input : Int = 2;
	var Menu : Int = 3;
	var DpadLeft : Int = 4;
	var DpadRight : Int = 5;
	var DpadUp : Int = 6;
	var DpadDown : Int = 7;
	var LStickLeft : Int = 8;
	var LStickRight : Int = 9;
	var LStickUp : Int = 10;
	var LStickDown : Int = 11;
	var FocusPrev : Int = 12;
	var FocusNext : Int = 13;
	var TweakSlow : Int = 14;
	var TweakFast : Int = 15;
	var KeyMenu_ : Int = 16;
	var KeyTab_ : Int = 17;
	var KeyLeft_ : Int = 18;
	var KeyRight_ : Int = 19;
	var KeyUp_ : Int = 20;
	var KeyDown_ : Int = 21;
	var COUNT : Int = 22;
	var InternalStart_ : Int = 16;
}

abstract ImGuiMouseCursor(Int) from Int to Int {
	var None : Int = -1;
	var Arrow : Int = 0;
	var TextInput : Int = 1;
	var ResizeAll : Int = 2;
	var ResizeNS : Int = 3;
	var ResizeEW : Int = 4;
	var ResizeNESW : Int = 5;
	var ResizeNWSE : Int = 6;
	var Hand : Int = 7;
	var COUNT : Int = 8;
}

abstract ImGuiKey(Int) from Int to Int {
	var Tab : Int = 0;
	var LeftArrow : Int = 1;
	var RightArrow : Int = 2;
	var UpArrow : Int = 3;
	var DownArrow : Int = 4;
	var PageUp : Int = 5;
	var PageDown : Int = 6;
	var Home : Int = 7;
	var End : Int = 8;
	var Insert : Int = 9;
	var Delete : Int = 10;
	var Backspace : Int = 11;
	var Space : Int = 12;
	var Enter : Int = 13;
	var Escape : Int = 14;
	var A : Int = 15;
	var C : Int = 16;
	var V : Int = 17;
	var X : Int = 18;
	var Y : Int = 19;
	var Z : Int = 20;
	var COUNT : Int = 21;
}

abstract ImGuiInputTextFlags(Int) from Int to Int {
	var None : Int = 0;
	var CharsDecimal : Int = 1;
	var CharsHexadecimal : Int = 2;
	var CharsUppercase : Int = 4;
	var CharsNoBlank : Int = 8;
	var AutoSelectAll : Int = 16;
	var EnterReturnsTrue : Int = 32;
	var CallbackCompletion : Int = 64;
	var CallbackHistory : Int = 128;
	var CallbackAlways : Int = 256;
	var CallbackCharFilter : Int = 512;
	var AllowTabInput : Int = 1024;
	var CtrlEnterForNewLine : Int = 2048;
	var NoHorizontalScroll : Int = 4096;
	var AlwaysInsertMode : Int = 8192;
	var ReadOnly : Int = 16384;
	var Password : Int = 32768;
	var NoUndoRedo : Int = 65536;
	var CharsScientific : Int = 131072;
	var CallbackResize : Int = 262144;
	var Multiline : Int = 1048576;
	var NoMarkEdited : Int = 2097152;
}

abstract ImGuiHoveredFlags(Int) from Int to Int {
	var None : Int = 0;
	var ChildWindows : Int = 1;
	var RootWindow : Int = 2;
	var AnyWindow : Int = 4;
	var AllowWhenBlockedByPopup : Int = 8;
	var AllowWhenBlockedByActiveItem : Int = 32;
	var AllowWhenOverlapped : Int = 64;
	var AllowWhenDisabled : Int = 128;
	var RectOnly : Int = 104;
	var RootAndChildWindows : Int = 3;
}

abstract ImGuiFocusedFlags(Int) from Int to Int {
	var None : Int = 0;
	var ChildWindows : Int = 1;
	var RootWindow : Int = 2;
	var AnyWindow : Int = 4;
	var RootAndChildWindows : Int = 3;
}

abstract ImGuiDragDropFlags(Int) from Int to Int {
	var None : Int = 0;
	var SourceNoPreviewTooltip : Int = 1;
	var SourceNoDisableHover : Int = 2;
	var SourceNoHoldToOpenOthers : Int = 4;
	var SourceAllowNullID : Int = 8;
	var SourceExtern : Int = 16;
	var SourceAutoExpirePayload : Int = 32;
	var AcceptBeforeDelivery : Int = 1024;
	var AcceptNoDrawDefaultRect : Int = 2048;
	var AcceptNoPreviewTooltip : Int = 4096;
	var AcceptPeekOnly : Int = 3072;
}

abstract ImGuiDir(Int) from Int to Int {
	var None : Int = -1;
	var Left : Int = 0;
	var Right : Int = 1;
	var Up : Int = 2;
	var Down : Int = 3;
	var COUNT : Int = 4;
}

abstract ImGuiDataType(Int) from Int to Int {
	var S8 : Int = 0;
	var U8 : Int = 1;
	var S16 : Int = 2;
	var U16 : Int = 3;
	var S32 : Int = 4;
	var U32 : Int = 5;
	var S64 : Int = 6;
	var U64 : Int = 7;
	var Float : Int = 8;
	var Double : Int = 9;
	var COUNT : Int = 10;
}

abstract ImGuiConfigFlags(Int) from Int to Int {
	var None : Int = 0;
	var NavEnableKeyboard : Int = 1;
	var NavEnableGamepad : Int = 2;
	var NavEnableSetMousePos : Int = 4;
	var NavNoCaptureKeyboard : Int = 8;
	var NoMouse : Int = 16;
	var NoMouseCursorChange : Int = 32;
	var IsSRGB : Int = 1048576;
	var IsTouchScreen : Int = 2097152;
}

abstract ImGuiCond(Int) from Int to Int {
	var Always : Int = 1;
	var Once : Int = 2;
	var FirstUseEver : Int = 4;
	var Appearing : Int = 8;
}

abstract ImGuiComboFlags(Int) from Int to Int {
	var None : Int = 0;
	var PopupAlignLeft : Int = 1;
	var HeightSmall : Int = 2;
	var HeightRegular : Int = 4;
	var HeightLarge : Int = 8;
	var HeightLargest : Int = 16;
	var NoArrowButton : Int = 32;
	var NoPreview : Int = 64;
	var HeightMask_ : Int = 30;
}

abstract ImGuiColorEditFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoAlpha : Int = 2;
	var NoPicker : Int = 4;
	var NoOptions : Int = 8;
	var NoSmallPreview : Int = 16;
	var NoInputs : Int = 32;
	var NoTooltip : Int = 64;
	var NoLabel : Int = 128;
	var NoSidePreview : Int = 256;
	var NoDragDrop : Int = 512;
	var AlphaBar : Int = 65536;
	var AlphaPreview : Int = 131072;
	var AlphaPreviewHalf : Int = 262144;
	var HDR : Int = 524288;
	var DisplayRGB : Int = 1048576;
	var DisplayHSV : Int = 2097152;
	var DisplayHex : Int = 4194304;
	var Uint8 : Int = 8388608;
	var Float : Int = 16777216;
	var PickerHueBar : Int = 33554432;
	var PickerHueWheel : Int = 67108864;
	var InputRGB : Int = 134217728;
	var InputHSV : Int = 268435456;
	var _OptionsDefault : Int = 177209344;
	var _DisplayMask : Int = 7340032;
	var _DataTypeMask : Int = 25165824;
	var _PickerMask : Int = 100663296;
	var _InputMask : Int = 402653184;
}

abstract ImGuiCol(Int) from Int to Int {
	var Text : Int = 0;
	var TextDisabled : Int = 1;
	var WindowBg : Int = 2;
	var ChildBg : Int = 3;
	var PopupBg : Int = 4;
	var Border : Int = 5;
	var BorderShadow : Int = 6;
	var FrameBg : Int = 7;
	var FrameBgHovered : Int = 8;
	var FrameBgActive : Int = 9;
	var TitleBg : Int = 10;
	var TitleBgActive : Int = 11;
	var TitleBgCollapsed : Int = 12;
	var MenuBarBg : Int = 13;
	var ScrollbarBg : Int = 14;
	var ScrollbarGrab : Int = 15;
	var ScrollbarGrabHovered : Int = 16;
	var ScrollbarGrabActive : Int = 17;
	var CheckMark : Int = 18;
	var SliderGrab : Int = 19;
	var SliderGrabActive : Int = 20;
	var Button : Int = 21;
	var ButtonHovered : Int = 22;
	var ButtonActive : Int = 23;
	var Header : Int = 24;
	var HeaderHovered : Int = 25;
	var HeaderActive : Int = 26;
	var Separator : Int = 27;
	var SeparatorHovered : Int = 28;
	var SeparatorActive : Int = 29;
	var ResizeGrip : Int = 30;
	var ResizeGripHovered : Int = 31;
	var ResizeGripActive : Int = 32;
	var Tab : Int = 33;
	var TabHovered : Int = 34;
	var TabActive : Int = 35;
	var TabUnfocused : Int = 36;
	var TabUnfocusedActive : Int = 37;
	var PlotLines : Int = 38;
	var PlotLinesHovered : Int = 39;
	var PlotHistogram : Int = 40;
	var PlotHistogramHovered : Int = 41;
	var TextSelectedBg : Int = 42;
	var DragDropTarget : Int = 43;
	var NavHighlight : Int = 44;
	var NavWindowingHighlight : Int = 45;
	var NavWindowingDimBg : Int = 46;
	var ModalWindowDimBg : Int = 47;
	var COUNT : Int = 48;
}

abstract ImGuiBackendFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasGamepad : Int = 1;
	var HasMouseCursors : Int = 2;
	var HasSetMousePos : Int = 4;
	var RendererHasVtxOffset : Int = 8;
}

abstract ImFontAtlasFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoPowerOfTwoHeight : Int = 1;
	var NoMouseCursors : Int = 2;
}

abstract ImDrawListFlags(Int) from Int to Int {
	var None : Int = 0;
	var AntiAliasedLines : Int = 1;
	var AntiAliasedFill : Int = 2;
	var AllowVtxOffset : Int = 4;
}

abstract ImDrawCornerFlags(Int) from Int to Int {
	var TopLeft : Int = 1;
	var TopRight : Int = 2;
	var BotLeft : Int = 4;
	var BotRight : Int = 8;
	var Top : Int = 3;
	var Bot : Int = 12;
	var Left : Int = 5;
	var Right : Int = 10;
	var All : Int = 15;
}

@:keep @:structAccess @:include("imgui.h") @:native("TextRange") extern class TextRange {
	@:native("b")
	var b : imgui.CharPointer;
	@:native("e")
	var e : imgui.CharPointer;
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
	var buf : imgui.CharPointer;
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
	var iniFilename : imgui.CharPointer;
	@:native("LogFilename")
	var logFilename : imgui.CharPointer;
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
	var backendPlatformName : imgui.CharPointer;
	@:native("BackendRendererName")
	var backendRendererName : imgui.CharPointer;
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
	var texPixelsAlpha8 : imgui.CharPointer;
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
	var fonts : cpp.Star<imgui.ImVector.ImVectorImFontPointer>;
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
	var _OwnerName : imgui.CharPointer;
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

@:keep @:structAccess @:include("imgui.h") extern class ImGui {
	@:native("ImGui::Value")
	@:overload(function(_prefix:imgui.CharPointer, _v:Int):cpp.Void { })
	@:overload(function(_prefix:imgui.CharPointer, _v:UInt):cpp.Void { })
	@:overload(function(_prefix:imgui.CharPointer, _v:cpp.Float32, _float_format:imgui.CharPointer):cpp.Void { })
	static function Value(_prefix:imgui.CharPointer, _b:Bool):cpp.Void;
	@:native("ImGui::VSliderScalar")
	static function VSliderScalar(_label:imgui.CharPointer, _size:imgui.ImVec2, _data_type:imgui.ImGuiDataType, _v:imgui.VoidPointer, _v_min:imgui.VoidPointer, _v_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::VSliderInt")
	static function VSliderInt(_label:imgui.CharPointer, _size:imgui.ImVec2, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::VSliderFloat")
	static function VSliderFloat(_label:imgui.CharPointer, _size:imgui.ImVec2, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::Unindent")
	static function Unindent(_indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::TreePush")
	@:overload(function(_ptr_id:imgui.VoidPointer):cpp.Void { })
	static function TreePush(_str_id:imgui.CharPointer):cpp.Void;
	@:native("ImGui::TreePop")
	static function TreePop():cpp.Void;
	@:native("ImGui::TreeNodeV")
	@:overload(function(_ptr_id:imgui.VoidPointer, _fmt:imgui.CharPointer, _args:cpp.VarArg):Bool { })
	static function TreeNodeV(_str_id:imgui.CharPointer, _fmt:imgui.CharPointer, _args:cpp.VarArg):Bool;
	@:native("ImGui::TreeNodeExV")
	@:overload(function(_ptr_id:imgui.VoidPointer, _flags:imgui.ImGuiTreeNodeFlags, _fmt:imgui.CharPointer, _args:cpp.VarArg):Bool { })
	static function TreeNodeExV(_str_id:imgui.CharPointer, _flags:imgui.ImGuiTreeNodeFlags, _fmt:imgui.CharPointer, _args:cpp.VarArg):Bool;
	@:native("ImGui::TreeNodeEx")
	@:overload(function(_str_id:imgui.CharPointer, _flags:imgui.ImGuiTreeNodeFlags, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):Bool { })
	@:overload(function(_ptr_id:imgui.VoidPointer, _flags:imgui.ImGuiTreeNodeFlags, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):Bool { })
	static function TreeNodeEx(_label:imgui.CharPointer, _flags:imgui.ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::TreeNode")
	@:overload(function(_str_id:imgui.CharPointer, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):Bool { })
	@:overload(function(_ptr_id:imgui.VoidPointer, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):Bool { })
	static function TreeNode(_label:imgui.CharPointer):Bool;
	@:native("ImGui::TreeAdvanceToLabelPos")
	static function TreeAdvanceToLabelPos():cpp.Void;
	@:native("ImGui::TextWrappedV")
	static function TextWrappedV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextWrapped")
	static function TextWrapped(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextV")
	static function TextV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextUnformatted")
	static function TextUnformatted(_text:imgui.CharPointer, _text_end:imgui.CharPointer):cpp.Void;
	@:native("ImGui::TextDisabledV")
	static function TextDisabledV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextDisabled")
	static function TextDisabled(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextColoredV")
	static function TextColoredV(_col:imgui.ImVec4, _fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextColored")
	static function TextColored(_col:imgui.ImVec4, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::Text")
	static function Text(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::StyleColorsLight")
	static function StyleColorsLight(_dst:cpp.Star<imgui.ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsDark")
	static function StyleColorsDark(_dst:cpp.Star<imgui.ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsClassic")
	static function StyleColorsClassic(_dst:cpp.Star<imgui.ImGuiStyle>):cpp.Void;
	@:native("ImGui::Spacing")
	static function Spacing():cpp.Void;
	@:native("ImGui::SmallButton")
	static function SmallButton(_label:imgui.CharPointer):Bool;
	@:native("ImGui::SliderScalarN")
	static function SliderScalarN(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _v:imgui.VoidPointer, _components:Int, _v_min:imgui.VoidPointer, _v_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderScalar")
	static function SliderScalar(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _v:imgui.VoidPointer, _v_min:imgui.VoidPointer, _v_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderInt4")
	static function SliderInt4(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::SliderInt3")
	static function SliderInt3(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::SliderInt2")
	static function SliderInt2(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::SliderInt")
	static function SliderInt(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::SliderFloat4")
	static function SliderFloat4(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat3")
	static function SliderFloat3(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat2")
	static function SliderFloat2(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat")
	static function SliderFloat(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderAngle")
	static function SliderAngle(_label:imgui.CharPointer, _v_rad:cpp.Star<cpp.Float32>, _v_degrees_min:cpp.Float32, _v_degrees_max:cpp.Float32, _format:imgui.CharPointer):Bool;
	@:native("ImGui::ShowUserGuide")
	static function ShowUserGuide():cpp.Void;
	@:native("ImGui::ShowStyleSelector")
	static function ShowStyleSelector(_label:imgui.CharPointer):Bool;
	@:native("ImGui::ShowStyleEditor")
	static function ShowStyleEditor(_ref:cpp.Star<imgui.ImGuiStyle>):cpp.Void;
	@:native("ImGui::ShowMetricsWindow")
	static function ShowMetricsWindow(_p_open:cpp.Star<Bool>):cpp.Void;
	@:native("ImGui::ShowFontSelector")
	static function ShowFontSelector(_label:imgui.CharPointer):cpp.Void;
	@:native("ImGui::ShowDemoWindow")
	static function ShowDemoWindow(_p_open:cpp.Star<Bool>):cpp.Void;
	@:native("ImGui::ShowAboutWindow")
	static function ShowAboutWindow(_p_open:cpp.Star<Bool>):cpp.Void;
	@:native("ImGui::SetWindowSize")
	@:overload(function(_name:imgui.CharPointer, _size:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void { })
	static function SetWindowSize(_size:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowPos")
	@:overload(function(_name:imgui.CharPointer, _pos:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void { })
	static function SetWindowPos(_pos:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowFontScale")
	static function SetWindowFontScale(_scale:cpp.Float32):cpp.Void;
	@:native("ImGui::SetWindowFocus")
	@:overload(function(_name:imgui.CharPointer):cpp.Void { })
	static function SetWindowFocus():cpp.Void;
	@:native("ImGui::SetWindowCollapsed")
	@:overload(function(_name:imgui.CharPointer, _collapsed:Bool, _cond:imgui.ImGuiCond):cpp.Void { })
	static function SetWindowCollapsed(_collapsed:Bool, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetTooltipV")
	static function SetTooltipV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::SetTooltip")
	static function SetTooltip(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::SetTabItemClosed")
	static function SetTabItemClosed(_tab_or_docked_window_label:imgui.CharPointer):cpp.Void;
	@:native("ImGui::SetStateStorage")
	static function SetStateStorage(_storage:cpp.Star<imgui.ImGuiStorage>):cpp.Void;
	@:native("ImGui::SetScrollY")
	static function SetScrollY(_scroll_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollX")
	static function SetScrollX(_scroll_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollHereY")
	static function SetScrollHereY(_center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollFromPosY")
	static function SetScrollFromPosY(_local_y:cpp.Float32, _center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextWindowSizeConstraints")
	static function SetNextWindowSizeConstraints(_size_min:imgui.ImVec2, _size_max:imgui.ImVec2, _custom_callback:imgui.ImGuiSizeCallback, _custom_callback_data:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::SetNextWindowSize")
	static function SetNextWindowSize(_size:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowPos")
	static function SetNextWindowPos(_pos:imgui.ImVec2, _cond:imgui.ImGuiCond, _pivot:imgui.ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowFocus")
	static function SetNextWindowFocus():cpp.Void;
	@:native("ImGui::SetNextWindowContentSize")
	static function SetNextWindowContentSize(_size:imgui.ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowCollapsed")
	static function SetNextWindowCollapsed(_collapsed:Bool, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowBgAlpha")
	static function SetNextWindowBgAlpha(_alpha:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemWidth")
	static function SetNextItemWidth(_item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemOpen")
	static function SetNextItemOpen(_is_open:Bool, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetMouseCursor")
	static function SetMouseCursor(_type:imgui.ImGuiMouseCursor):cpp.Void;
	@:native("ImGui::SetKeyboardFocusHere")
	static function SetKeyboardFocusHere(_offset:Int):cpp.Void;
	@:native("ImGui::SetItemDefaultFocus")
	static function SetItemDefaultFocus():cpp.Void;
	@:native("ImGui::SetItemAllowOverlap")
	static function SetItemAllowOverlap():cpp.Void;
	@:native("ImGui::SetDragDropPayload")
	static function SetDragDropPayload(_type:imgui.CharPointer, _data:imgui.VoidPointer, _sz:cpp.SizeT, _cond:imgui.ImGuiCond):Bool;
	@:native("ImGui::SetCursorScreenPos")
	static function SetCursorScreenPos(_pos:imgui.ImVec2):cpp.Void;
	@:native("ImGui::SetCursorPosY")
	static function SetCursorPosY(_local_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPosX")
	static function SetCursorPosX(_local_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPos")
	static function SetCursorPos(_local_pos:imgui.ImVec2):cpp.Void;
	@:native("ImGui::SetCurrentContext")
	static function SetCurrentContext(_ctx:cpp.Star<imgui.ImGuiContext>):cpp.Void;
	@:native("ImGui::SetColumnWidth")
	static function SetColumnWidth(_column_index:Int, _width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColumnOffset")
	static function SetColumnOffset(_column_index:Int, _offset_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColorEditOptions")
	static function SetColorEditOptions(_flags:imgui.ImGuiColorEditFlags):cpp.Void;
	@:native("ImGui::SetClipboardText")
	static function SetClipboardText(_text:imgui.CharPointer):cpp.Void;
	@:native("ImGui::SetAllocatorFunctions")
	static function SetAllocatorFunctions(_alloc_func:cpp.Callable<(cpp.SizeT, imgui.VoidPointer) -> imgui.VoidPointer>, _free_func:cpp.Callable<(imgui.VoidPointer, imgui.VoidPointer) -> cpp.Void>, _user_data:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::Separator")
	static function Separator():cpp.Void;
	@:native("ImGui::Selectable")
	@:overload(function(_label:imgui.CharPointer, _p_selected:cpp.Star<Bool>, _flags:imgui.ImGuiSelectableFlags, _size:imgui.ImVec2):Bool { })
	static function Selectable(_label:imgui.CharPointer, _selected:Bool, _flags:imgui.ImGuiSelectableFlags, _size:imgui.ImVec2):Bool;
	@:native("ImGui::SaveIniSettingsToMemory")
	static function SaveIniSettingsToMemory(_out_ini_size:cpp.Star<cpp.SizeT>):imgui.CharPointer;
	@:native("ImGui::SaveIniSettingsToDisk")
	static function SaveIniSettingsToDisk(_ini_filename:imgui.CharPointer):cpp.Void;
	@:native("ImGui::SameLine")
	static function SameLine(_offset_from_start_x:cpp.Float32, _spacing:cpp.Float32):cpp.Void;
	@:native("ImGui::ResetMouseDragDelta")
	static function ResetMouseDragDelta(_button:Int):cpp.Void;
	@:native("ImGui::Render")
	static function Render():cpp.Void;
	@:native("ImGui::RadioButton")
	@:overload(function(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_button:Int):Bool { })
	static function RadioButton(_label:imgui.CharPointer, _active:Bool):Bool;
	@:native("ImGui::PushTextWrapPos")
	static function PushTextWrapPos(_wrap_local_pos_x:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleVar")
	@:overload(function(_idx:imgui.ImGuiStyleVar, _val:imgui.ImVec2):cpp.Void { })
	static function PushStyleVar(_idx:imgui.ImGuiStyleVar, _val:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleColor")
	@:overload(function(_idx:imgui.ImGuiCol, _col:imgui.ImVec4):cpp.Void { })
	static function PushStyleColor(_idx:imgui.ImGuiCol, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::PushItemWidth")
	static function PushItemWidth(_item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::PushID")
	@:overload(function(_str_id_begin:imgui.CharPointer, _str_id_end:imgui.CharPointer):cpp.Void { })
	@:overload(function(_ptr_id:imgui.VoidPointer):cpp.Void { })
	@:overload(function(_int_id:Int):cpp.Void { })
	static function PushID(_str_id:imgui.CharPointer):cpp.Void;
	@:native("ImGui::PushFont")
	static function PushFont(_font:cpp.Star<imgui.ImFont>):cpp.Void;
	@:native("ImGui::PushClipRect")
	static function PushClipRect(_clip_rect_min:imgui.ImVec2, _clip_rect_max:imgui.ImVec2, _intersect_with_current_clip_rect:Bool):cpp.Void;
	@:native("ImGui::PushButtonRepeat")
	static function PushButtonRepeat(_repeat:Bool):cpp.Void;
	@:native("ImGui::PushAllowKeyboardFocus")
	static function PushAllowKeyboardFocus(_allow_keyboard_focus:Bool):cpp.Void;
	@:native("ImGui::ProgressBar")
	static function ProgressBar(_fraction:cpp.Float32, _size_arg:imgui.ImVec2, _overlay:imgui.CharPointer):cpp.Void;
	@:native("ImGui::PopTextWrapPos")
	static function PopTextWrapPos():cpp.Void;
	@:native("ImGui::PopStyleVar")
	static function PopStyleVar(_count:Int):cpp.Void;
	@:native("ImGui::PopStyleColor")
	static function PopStyleColor(_count:Int):cpp.Void;
	@:native("ImGui::PopItemWidth")
	static function PopItemWidth():cpp.Void;
	@:native("ImGui::PopID")
	static function PopID():cpp.Void;
	@:native("ImGui::PopFont")
	static function PopFont():cpp.Void;
	@:native("ImGui::PopClipRect")
	static function PopClipRect():cpp.Void;
	@:native("ImGui::PopButtonRepeat")
	static function PopButtonRepeat():cpp.Void;
	@:native("ImGui::PopAllowKeyboardFocus")
	static function PopAllowKeyboardFocus():cpp.Void;
	@:native("ImGui::PlotLines")
	@:overload(function(_label:imgui.CharPointer, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.CharPointer, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:imgui.ImVec2):cpp.Void { })
	static function PlotLines(_label:imgui.CharPointer, _values:cpp.Star<cpp.Float32>, _values_count:Int, _values_offset:Int, _overlay_text:imgui.CharPointer, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:imgui.ImVec2, _stride:Int):cpp.Void;
	@:native("ImGui::PlotHistogram")
	@:overload(function(_label:imgui.CharPointer, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.CharPointer, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:imgui.ImVec2):cpp.Void { })
	static function PlotHistogram(_label:imgui.CharPointer, _values:cpp.Star<cpp.Float32>, _values_count:Int, _values_offset:Int, _overlay_text:imgui.CharPointer, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:imgui.ImVec2, _stride:Int):cpp.Void;
	@:native("ImGui::OpenPopupOnItemClick")
	static function OpenPopupOnItemClick(_str_id:imgui.CharPointer, _mouse_button:Int):Bool;
	@:native("ImGui::OpenPopup")
	static function OpenPopup(_str_id:imgui.CharPointer):cpp.Void;
	@:native("ImGui::NextColumn")
	static function NextColumn():cpp.Void;
	@:native("ImGui::NewLine")
	static function NewLine():cpp.Void;
	@:native("ImGui::NewFrame")
	static function NewFrame():cpp.Void;
	@:native("ImGui::MenuItem")
	@:overload(function(_label:imgui.CharPointer, _shortcut:imgui.CharPointer, _p_selected:cpp.Star<Bool>, _enabled:Bool):Bool { })
	static function MenuItem(_label:imgui.CharPointer, _shortcut:imgui.CharPointer, _selected:Bool, _enabled:Bool):Bool;
	@:native("ImGui::MemFree")
	static function MemFree(_ptr:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::MemAlloc")
	static function MemAlloc(_size:cpp.SizeT):imgui.VoidPointer;
	@:native("ImGui::LogToTTY")
	static function LogToTTY(_auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogToFile")
	static function LogToFile(_auto_open_depth:Int, _filename:imgui.CharPointer):cpp.Void;
	@:native("ImGui::LogToClipboard")
	static function LogToClipboard(_auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogText")
	static function LogText(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::LogFinish")
	static function LogFinish():cpp.Void;
	@:native("ImGui::LogButtons")
	static function LogButtons():cpp.Void;
	@:native("ImGui::LoadIniSettingsFromMemory")
	static function LoadIniSettingsFromMemory(_ini_data:imgui.CharPointer, _ini_size:cpp.SizeT):cpp.Void;
	@:native("ImGui::LoadIniSettingsFromDisk")
	static function LoadIniSettingsFromDisk(_ini_filename:imgui.CharPointer):cpp.Void;
	@:native("ImGui::ListBoxHeader")
	@:overload(function(_label:imgui.CharPointer, _items_count:Int, _height_in_items:Int):Bool { })
	static function ListBoxHeader(_label:imgui.CharPointer, _size:imgui.ImVec2):Bool;
	@:native("ImGui::ListBoxFooter")
	static function ListBoxFooter():cpp.Void;
	@:native("ImGui::ListBox")
	@:overload(function(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items_getter:cpp.Callable<(imgui.VoidPointer, Int, cpp.Star<cpp.Star<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int, _height_in_items:Int):Bool { })
	static function ListBox(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items:cpp.Star<cpp.Star<cpp.Int8>>, _items_count:Int, _height_in_items:Int):Bool;
	@:native("ImGui::LabelTextV")
	static function LabelTextV(_label:imgui.CharPointer, _fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::LabelText")
	static function LabelText(_label:imgui.CharPointer, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::IsWindowHovered")
	static function IsWindowHovered(_flags:imgui.ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsWindowFocused")
	static function IsWindowFocused(_flags:imgui.ImGuiFocusedFlags):Bool;
	@:native("ImGui::IsWindowCollapsed")
	static function IsWindowCollapsed():Bool;
	@:native("ImGui::IsWindowAppearing")
	static function IsWindowAppearing():Bool;
	@:native("ImGui::IsRectVisible")
	@:overload(function(_rect_min:imgui.ImVec2, _rect_max:imgui.ImVec2):Bool { })
	static function IsRectVisible(_size:imgui.ImVec2):Bool;
	@:native("ImGui::IsPopupOpen")
	static function IsPopupOpen(_str_id:imgui.CharPointer):Bool;
	@:native("ImGui::IsMouseReleased")
	static function IsMouseReleased(_button:Int):Bool;
	@:native("ImGui::IsMousePosValid")
	static function IsMousePosValid(_mouse_pos:cpp.Star<imgui.ImVec2>):Bool;
	@:native("ImGui::IsMouseHoveringRect")
	static function IsMouseHoveringRect(_r_min:imgui.ImVec2, _r_max:imgui.ImVec2, _clip:Bool):Bool;
	@:native("ImGui::IsMouseDragging")
	static function IsMouseDragging(_button:Int, _lock_threshold:cpp.Float32):Bool;
	@:native("ImGui::IsMouseDown")
	static function IsMouseDown(_button:Int):Bool;
	@:native("ImGui::IsMouseDoubleClicked")
	static function IsMouseDoubleClicked(_button:Int):Bool;
	@:native("ImGui::IsMouseClicked")
	static function IsMouseClicked(_button:Int, _repeat:Bool):Bool;
	@:native("ImGui::IsKeyReleased")
	static function IsKeyReleased(_user_key_index:Int):Bool;
	@:native("ImGui::IsKeyPressed")
	static function IsKeyPressed(_user_key_index:Int, _repeat:Bool):Bool;
	@:native("ImGui::IsKeyDown")
	static function IsKeyDown(_user_key_index:Int):Bool;
	@:native("ImGui::IsItemVisible")
	static function IsItemVisible():Bool;
	@:native("ImGui::IsItemHovered")
	static function IsItemHovered(_flags:imgui.ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsItemFocused")
	static function IsItemFocused():Bool;
	@:native("ImGui::IsItemEdited")
	static function IsItemEdited():Bool;
	@:native("ImGui::IsItemDeactivatedAfterEdit")
	static function IsItemDeactivatedAfterEdit():Bool;
	@:native("ImGui::IsItemDeactivated")
	static function IsItemDeactivated():Bool;
	@:native("ImGui::IsItemClicked")
	static function IsItemClicked(_mouse_button:Int):Bool;
	@:native("ImGui::IsItemActive")
	static function IsItemActive():Bool;
	@:native("ImGui::IsItemActivated")
	static function IsItemActivated():Bool;
	@:native("ImGui::IsAnyMouseDown")
	static function IsAnyMouseDown():Bool;
	@:native("ImGui::IsAnyItemHovered")
	static function IsAnyItemHovered():Bool;
	@:native("ImGui::IsAnyItemFocused")
	static function IsAnyItemFocused():Bool;
	@:native("ImGui::IsAnyItemActive")
	static function IsAnyItemActive():Bool;
	@:native("ImGui::InvisibleButton")
	static function InvisibleButton(_str_id:imgui.CharPointer, _size:imgui.ImVec2):Bool;
	@:native("ImGui::InputTextWithHint")
	static function InputTextWithHint(_label:imgui.CharPointer, _hint:imgui.CharPointer, _buf:imgui.CharPointer, _buf_size:cpp.SizeT, _flags:imgui.ImGuiInputTextFlags, _callback:imgui.ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputTextMultiline")
	static function InputTextMultiline(_label:imgui.CharPointer, _buf:imgui.CharPointer, _buf_size:cpp.SizeT, _size:imgui.ImVec2, _flags:imgui.ImGuiInputTextFlags, _callback:imgui.ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputText")
	static function InputText(_label:imgui.CharPointer, _buf:imgui.CharPointer, _buf_size:cpp.SizeT, _flags:imgui.ImGuiInputTextFlags, _callback:imgui.ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputScalarN")
	static function InputScalarN(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _v:imgui.VoidPointer, _components:Int, _step:imgui.VoidPointer, _step_fast:imgui.VoidPointer, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputScalar")
	static function InputScalar(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _v:imgui.VoidPointer, _step:imgui.VoidPointer, _step_fast:imgui.VoidPointer, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt4")
	static function InputInt4(_label:imgui.CharPointer, _v:cpp.Star<Int>, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt3")
	static function InputInt3(_label:imgui.CharPointer, _v:cpp.Star<Int>, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt2")
	static function InputInt2(_label:imgui.CharPointer, _v:cpp.Star<Int>, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt")
	static function InputInt(_label:imgui.CharPointer, _v:cpp.Star<Int>, _step:Int, _step_fast:Int, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat4")
	static function InputFloat4(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat3")
	static function InputFloat3(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat2")
	static function InputFloat2(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat")
	static function InputFloat(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _step:cpp.Float32, _step_fast:cpp.Float32, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputDouble")
	static function InputDouble(_label:imgui.CharPointer, _v:cpp.Star<Float>, _step:Float, _step_fast:Float, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::Indent")
	static function Indent(_indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::ImageButton")
	static function ImageButton(_user_texture_id:imgui.ImTextureID, _size:imgui.ImVec2, _uv0:imgui.ImVec2, _uv1:imgui.ImVec2, _frame_padding:Int, _bg_col:imgui.ImVec4, _tint_col:imgui.ImVec4):Bool;
	@:native("ImGui::Image")
	static function Image(_user_texture_id:imgui.ImTextureID, _size:imgui.ImVec2, _uv0:imgui.ImVec2, _uv1:imgui.ImVec2, _tint_col:imgui.ImVec4, _border_col:imgui.ImVec4):cpp.Void;
	@:native("ImGui::GetWindowWidth")
	static function GetWindowWidth():cpp.Float32;
	@:native("ImGui::GetWindowSize")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetWindowSize():imgui.ImVec2;
	@:native("ImGui::GetWindowPos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetWindowPos():imgui.ImVec2;
	@:native("ImGui::GetWindowHeight")
	static function GetWindowHeight():cpp.Float32;
	@:native("ImGui::GetWindowDrawList")
	static function GetWindowDrawList():cpp.Star<imgui.ImDrawList>;
	@:native("ImGui::GetWindowContentRegionWidth")
	static function GetWindowContentRegionWidth():cpp.Float32;
	@:native("ImGui::GetWindowContentRegionMin")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetWindowContentRegionMin():imgui.ImVec2;
	@:native("ImGui::GetWindowContentRegionMax")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetWindowContentRegionMax():imgui.ImVec2;
	@:native("ImGui::GetVersion")
	static function GetVersion():imgui.CharPointer;
	@:native("ImGui::GetTreeNodeToLabelSpacing")
	static function GetTreeNodeToLabelSpacing():cpp.Float32;
	@:native("ImGui::GetTime")
	static function GetTime():Float;
	@:native("ImGui::GetTextLineHeightWithSpacing")
	static function GetTextLineHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetTextLineHeight")
	static function GetTextLineHeight():cpp.Float32;
	@:native("ImGui::GetStyleColorVec4")
	static function GetStyleColorVec4(_idx:imgui.ImGuiCol):cpp.Reference<imgui.ImVec4>;
	@:native("ImGui::GetStyleColorName")
	static function GetStyleColorName(_idx:imgui.ImGuiCol):imgui.CharPointer;
	@:native("ImGui::GetStyle")
	static function GetStyle():cpp.Reference<imgui.ImGuiStyle>;
	@:native("ImGui::GetStateStorage")
	static function GetStateStorage():cpp.Star<imgui.ImGuiStorage>;
	@:native("ImGui::GetScrollY")
	static function GetScrollY():cpp.Float32;
	@:native("ImGui::GetScrollX")
	static function GetScrollX():cpp.Float32;
	@:native("ImGui::GetScrollMaxY")
	static function GetScrollMaxY():cpp.Float32;
	@:native("ImGui::GetScrollMaxX")
	static function GetScrollMaxX():cpp.Float32;
	@:native("ImGui::GetMousePosOnOpeningCurrentPopup")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetMousePosOnOpeningCurrentPopup():imgui.ImVec2;
	@:native("ImGui::GetMousePos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetMousePos():imgui.ImVec2;
	@:native("ImGui::GetMouseDragDelta")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>, _button:Int, _lock_threshold:cpp.Float32):cpp.Void { })
	@:overload(function(_button:Int, _lock_threshold:cpp.Float32):imgui.ImVec2_Simple { })
	static function GetMouseDragDelta(_button:Int, _lock_threshold:cpp.Float32):imgui.ImVec2;
	@:native("ImGui::GetMouseCursor")
	static function GetMouseCursor():imgui.ImGuiMouseCursor;
	@:native("ImGui::GetKeyPressedAmount")
	static function GetKeyPressedAmount(_key_index:Int, _repeat_delay:cpp.Float32, _rate:cpp.Float32):Int;
	@:native("ImGui::GetKeyIndex")
	static function GetKeyIndex(_imgui_key:imgui.ImGuiKey):Int;
	@:native("ImGui::GetItemRectSize")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetItemRectSize():imgui.ImVec2;
	@:native("ImGui::GetItemRectMin")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetItemRectMin():imgui.ImVec2;
	@:native("ImGui::GetItemRectMax")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetItemRectMax():imgui.ImVec2;
	@:native("ImGui::GetIO")
	static function GetIO():cpp.Reference<imgui.ImGuiIO>;
	@:native("ImGui::GetID")
	@:overload(function(_str_id_begin:imgui.CharPointer, _str_id_end:imgui.CharPointer):imgui.ImGuiID { })
	@:overload(function(_ptr_id:imgui.VoidPointer):imgui.ImGuiID { })
	static function GetID(_str_id:imgui.CharPointer):imgui.ImGuiID;
	@:native("ImGui::GetFrameHeightWithSpacing")
	static function GetFrameHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetFrameHeight")
	static function GetFrameHeight():cpp.Float32;
	@:native("ImGui::GetFrameCount")
	static function GetFrameCount():Int;
	@:native("ImGui::GetForegroundDrawList")
	static function GetForegroundDrawList():cpp.Star<imgui.ImDrawList>;
	@:native("ImGui::GetFontTexUvWhitePixel")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetFontTexUvWhitePixel():imgui.ImVec2;
	@:native("ImGui::GetFontSize")
	static function GetFontSize():cpp.Float32;
	@:native("ImGui::GetFont")
	static function GetFont():cpp.Star<imgui.ImFont>;
	@:native("ImGui::GetDrawListSharedData")
	static function GetDrawListSharedData():cpp.Star<imgui.ImDrawListSharedData>;
	@:native("ImGui::GetDrawData")
	static function GetDrawData():cpp.Star<imgui.ImDrawData>;
	@:native("ImGui::GetDragDropPayload")
	static function GetDragDropPayload():cpp.Star<imgui.ImGuiPayload>;
	@:native("ImGui::GetCursorStartPos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetCursorStartPos():imgui.ImVec2;
	@:native("ImGui::GetCursorScreenPos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetCursorScreenPos():imgui.ImVec2;
	@:native("ImGui::GetCursorPosY")
	static function GetCursorPosY():cpp.Float32;
	@:native("ImGui::GetCursorPosX")
	static function GetCursorPosX():cpp.Float32;
	@:native("ImGui::GetCursorPos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetCursorPos():imgui.ImVec2;
	@:native("ImGui::GetCurrentContext")
	static function GetCurrentContext():cpp.Star<imgui.ImGuiContext>;
	@:native("ImGui::GetContentRegionMax")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetContentRegionMax():imgui.ImVec2;
	@:native("ImGui::GetContentRegionAvail")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2_Simple { })
	static function GetContentRegionAvail():imgui.ImVec2;
	@:native("ImGui::GetColumnsCount")
	static function GetColumnsCount():Int;
	@:native("ImGui::GetColumnWidth")
	static function GetColumnWidth(_column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnOffset")
	static function GetColumnOffset(_column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnIndex")
	static function GetColumnIndex():Int;
	@:native("ImGui::GetColorU32")
	@:overload(function(_col:imgui.ImVec4):imgui.ImU32 { })
	@:overload(function(_col:imgui.ImU32):imgui.ImU32 { })
	static function GetColorU32(_idx:imgui.ImGuiCol, _alpha_mul:cpp.Float32):imgui.ImU32;
	@:native("ImGui::GetClipboardText")
	static function GetClipboardText():imgui.CharPointer;
	@:native("ImGui::GetBackgroundDrawList")
	static function GetBackgroundDrawList():cpp.Star<imgui.ImDrawList>;
	@:native("ImGui::EndTooltip")
	static function EndTooltip():cpp.Void;
	@:native("ImGui::EndTabItem")
	static function EndTabItem():cpp.Void;
	@:native("ImGui::EndTabBar")
	static function EndTabBar():cpp.Void;
	@:native("ImGui::EndPopup")
	static function EndPopup():cpp.Void;
	@:native("ImGui::EndMenuBar")
	static function EndMenuBar():cpp.Void;
	@:native("ImGui::EndMenu")
	static function EndMenu():cpp.Void;
	@:native("ImGui::EndMainMenuBar")
	static function EndMainMenuBar():cpp.Void;
	@:native("ImGui::EndGroup")
	static function EndGroup():cpp.Void;
	@:native("ImGui::EndFrame")
	static function EndFrame():cpp.Void;
	@:native("ImGui::EndDragDropTarget")
	static function EndDragDropTarget():cpp.Void;
	@:native("ImGui::EndDragDropSource")
	static function EndDragDropSource():cpp.Void;
	@:native("ImGui::EndCombo")
	static function EndCombo():cpp.Void;
	@:native("ImGui::EndChildFrame")
	static function EndChildFrame():cpp.Void;
	@:native("ImGui::EndChild")
	static function EndChild():cpp.Void;
	@:native("ImGui::End")
	static function End():cpp.Void;
	@:native("ImGui::Dummy")
	static function Dummy(_size:imgui.ImVec2):cpp.Void;
	@:native("ImGui::DragScalarN")
	static function DragScalarN(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _v:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _v_min:imgui.VoidPointer, _v_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragScalar")
	static function DragScalar(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _v:imgui.VoidPointer, _v_speed:cpp.Float32, _v_min:imgui.VoidPointer, _v_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragIntRange2")
	static function DragIntRange2(_label:imgui.CharPointer, _v_current_min:cpp.Star<Int>, _v_current_max:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer, _format_max:imgui.CharPointer):Bool;
	@:native("ImGui::DragInt4")
	static function DragInt4(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::DragInt3")
	static function DragInt3(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::DragInt2")
	static function DragInt2(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::DragInt")
	static function DragInt(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::DragFloatRange2")
	static function DragFloatRange2(_label:imgui.CharPointer, _v_current_min:cpp.Star<cpp.Float32>, _v_current_max:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _format_max:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat4")
	static function DragFloat4(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat3")
	static function DragFloat3(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat2")
	static function DragFloat2(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat")
	static function DragFloat(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DestroyContext")
	static function DestroyContext(_ctx:cpp.Star<imgui.ImGuiContext>):cpp.Void;
	@:native("ImGui::DebugCheckVersionAndDataLayout")
	static function DebugCheckVersionAndDataLayout(_version_str:imgui.CharPointer, _sz_io:cpp.SizeT, _sz_style:cpp.SizeT, _sz_vec2:cpp.SizeT, _sz_vec4:cpp.SizeT, _sz_drawvert:cpp.SizeT, _sz_drawidx:cpp.SizeT):Bool;
	@:native("ImGui::CreateContext")
	static function CreateContext(_shared_font_atlas:cpp.Star<imgui.ImFontAtlas>):cpp.Star<imgui.ImGuiContext>;
	@:native("ImGui::Combo")
	@:overload(function(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items_separated_by_zeros:imgui.CharPointer, _popup_max_height_in_items:Int):Bool { })
	@:overload(function(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items_getter:cpp.Callable<(imgui.VoidPointer, Int, cpp.Star<cpp.Star<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int, _popup_max_height_in_items:Int):Bool { })
	static function Combo(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items:cpp.Star<cpp.Star<cpp.Int8>>, _items_count:Int, _popup_max_height_in_items:Int):Bool;
	@:native("ImGui::Columns")
	static function Columns(_count:Int, _id:imgui.CharPointer, _border:Bool):cpp.Void;
	@:native("ImGui::ColorPicker4")
	static function ColorPicker4(_label:imgui.CharPointer, _col:cpp.Star<cpp.Float32>, _flags:imgui.ImGuiColorEditFlags, _ref_col:cpp.Star<cpp.Float32>):Bool;
	@:native("ImGui::ColorPicker3")
	static function ColorPicker3(_label:imgui.CharPointer, _col:cpp.Star<cpp.Float32>, _flags:imgui.ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorEdit4")
	static function ColorEdit4(_label:imgui.CharPointer, _col:cpp.Star<cpp.Float32>, _flags:imgui.ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorEdit3")
	static function ColorEdit3(_label:imgui.CharPointer, _col:cpp.Star<cpp.Float32>, _flags:imgui.ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorConvertU32ToFloat4")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec4>, _in:imgui.ImU32):cpp.Void { })
	@:overload(function(_in:imgui.ImU32):imgui.ImVec4_Simple { })
	static function ColorConvertU32ToFloat4(_in:imgui.ImU32):imgui.ImVec4;
	@:native("ImGui::ColorConvertRGBtoHSV")
	static function ColorConvertRGBtoHSV(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32, _out_h:cpp.Reference<cpp.Float32>, _out_s:cpp.Reference<cpp.Float32>, _out_v:cpp.Reference<cpp.Float32>):cpp.Void;
	@:native("ImGui::ColorConvertHSVtoRGB")
	static function ColorConvertHSVtoRGB(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _out_r:cpp.Reference<cpp.Float32>, _out_g:cpp.Reference<cpp.Float32>, _out_b:cpp.Reference<cpp.Float32>):cpp.Void;
	@:native("ImGui::ColorConvertFloat4ToU32")
	static function ColorConvertFloat4ToU32(_in:imgui.ImVec4):imgui.ImU32;
	@:native("ImGui::ColorButton")
	static function ColorButton(_desc_id:imgui.CharPointer, _col:imgui.ImVec4, _flags:imgui.ImGuiColorEditFlags, _size:imgui.ImVec2):Bool;
	@:native("ImGui::CollapsingHeader")
	@:overload(function(_label:imgui.CharPointer, _p_open:cpp.Star<Bool>, _flags:imgui.ImGuiTreeNodeFlags):Bool { })
	static function CollapsingHeader(_label:imgui.CharPointer, _flags:imgui.ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::CloseCurrentPopup")
	static function CloseCurrentPopup():cpp.Void;
	@:native("ImGui::CheckboxFlags")
	static function CheckboxFlags(_label:imgui.CharPointer, _flags:cpp.Star<UInt>, _flags_value:UInt):Bool;
	@:native("ImGui::Checkbox")
	static function Checkbox(_label:imgui.CharPointer, _v:cpp.Star<Bool>):Bool;
	@:native("ImGui::CaptureMouseFromApp")
	static function CaptureMouseFromApp(_want_capture_mouse_value:Bool):cpp.Void;
	@:native("ImGui::CaptureKeyboardFromApp")
	static function CaptureKeyboardFromApp(_want_capture_keyboard_value:Bool):cpp.Void;
	@:native("ImGui::CalcTextSize")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>, _text:imgui.CharPointer, _text_end:imgui.CharPointer, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_text:imgui.CharPointer, _text_end:imgui.CharPointer, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):imgui.ImVec2_Simple { })
	static function CalcTextSize(_text:imgui.CharPointer, _text_end:imgui.CharPointer, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):imgui.ImVec2;
	@:native("ImGui::CalcListClipping")
	static function CalcListClipping(_items_count:Int, _items_height:cpp.Float32, _out_items_display_start:cpp.Star<Int>, _out_items_display_end:cpp.Star<Int>):cpp.Void;
	@:native("ImGui::CalcItemWidth")
	static function CalcItemWidth():cpp.Float32;
	@:native("ImGui::Button")
	static function Button(_label:imgui.CharPointer, _size:imgui.ImVec2):Bool;
	@:native("ImGui::BulletTextV")
	static function BulletTextV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::BulletText")
	static function BulletText(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::Bullet")
	static function Bullet():cpp.Void;
	@:native("ImGui::BeginTooltip")
	static function BeginTooltip():cpp.Void;
	@:native("ImGui::BeginTabItem")
	static function BeginTabItem(_label:imgui.CharPointer, _p_open:cpp.Star<Bool>, _flags:imgui.ImGuiTabItemFlags):Bool;
	@:native("ImGui::BeginTabBar")
	static function BeginTabBar(_str_id:imgui.CharPointer, _flags:imgui.ImGuiTabBarFlags):Bool;
	@:native("ImGui::BeginPopupModal")
	static function BeginPopupModal(_name:imgui.CharPointer, _p_open:cpp.Star<Bool>, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginPopupContextWindow")
	static function BeginPopupContextWindow(_str_id:imgui.CharPointer, _mouse_button:Int, _also_over_items:Bool):Bool;
	@:native("ImGui::BeginPopupContextVoid")
	static function BeginPopupContextVoid(_str_id:imgui.CharPointer, _mouse_button:Int):Bool;
	@:native("ImGui::BeginPopupContextItem")
	static function BeginPopupContextItem(_str_id:imgui.CharPointer, _mouse_button:Int):Bool;
	@:native("ImGui::BeginPopup")
	static function BeginPopup(_str_id:imgui.CharPointer, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginMenuBar")
	static function BeginMenuBar():Bool;
	@:native("ImGui::BeginMenu")
	static function BeginMenu(_label:imgui.CharPointer, _enabled:Bool):Bool;
	@:native("ImGui::BeginMainMenuBar")
	static function BeginMainMenuBar():Bool;
	@:native("ImGui::BeginGroup")
	static function BeginGroup():cpp.Void;
	@:native("ImGui::BeginDragDropTarget")
	static function BeginDragDropTarget():Bool;
	@:native("ImGui::BeginDragDropSource")
	static function BeginDragDropSource(_flags:imgui.ImGuiDragDropFlags):Bool;
	@:native("ImGui::BeginCombo")
	static function BeginCombo(_label:imgui.CharPointer, _preview_value:imgui.CharPointer, _flags:imgui.ImGuiComboFlags):Bool;
	@:native("ImGui::BeginChildFrame")
	static function BeginChildFrame(_id:imgui.ImGuiID, _size:imgui.ImVec2, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginChild")
	@:overload(function(_id:imgui.ImGuiID, _size:imgui.ImVec2, _border:Bool, _flags:imgui.ImGuiWindowFlags):Bool { })
	static function BeginChild(_str_id:imgui.CharPointer, _size:imgui.ImVec2, _border:Bool, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::Begin")
	static function Begin(_name:imgui.CharPointer, _p_open:cpp.Star<Bool>, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::ArrowButton")
	static function ArrowButton(_str_id:imgui.CharPointer, _dir:imgui.ImGuiDir):Bool;
	@:native("ImGui::AlignTextToFramePadding")
	static function AlignTextToFramePadding():cpp.Void;
	@:native("ImGui::AcceptDragDropPayload")
	static function AcceptDragDropPayload(_type:imgui.CharPointer, _flags:imgui.ImGuiDragDropFlags):cpp.Star<imgui.ImGuiPayload>;
}

