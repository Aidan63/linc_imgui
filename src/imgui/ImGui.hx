package imgui;

typedef FILE = cpp.Void;

typedef ImWchar32 = UInt;

typedef ImWchar16 = cpp.UInt16;

typedef ImWchar = ImWchar16;

typedef ImU8 = cpp.UInt8;

typedef ImU64 = cpp.UInt64;

typedef ImU32 = UInt;

typedef ImU16 = cpp.UInt16;

typedef ImTextureID = cpp.Star<cpp.Void>;

typedef ImS8 = cpp.Int8;

typedef ImS64 = cpp.Int64;

typedef ImS32 = Int;

typedef ImS16 = cpp.Int16;

typedef ImPoolIdx = Int;

typedef ImGuiSizeCallback = cpp.Callable<cpp.Star<ImGuiSizeCallbackData> -> Void>;

typedef ImGuiInputTextCallback = cpp.Callable<ImGuiInputTextCallbackData -> Int>;

typedef ImGuiID = UInt;

typedef ImFileHandle = cpp.Star<FILE>;

typedef ImDrawIdx = cpp.UInt16;

typedef ImDrawCallback = cpp.Callable<(cpp.Star<ImDrawList>, cpp.Star<ImDrawCmd>) -> Void>;

@:enum abstract ImGuiWindowFlags(Int) from Int to Int {
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

@:enum abstract ImGuiTreeNodeFlags(Int) from Int to Int {
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
	var SpanAvailWidth : Int = 2048;
	var SpanFullWidth : Int = 4096;
	var NavLeftJumpsBackHere : Int = 8192;
	var CollapsingHeader : Int = 26;
}

@:enum abstract ImGuiTreeNodeFlagsPrivate(Int) from Int to Int {
	var ImGuiTreeNodeFlags_ClipLabelForTrailingButton : Int = 1048576;
}

@:enum abstract ImGuiTooltipFlags(Int) from Int to Int {
	var None : Int = 0;
	var OverridePreviousTooltip : Int = 1;
}

@:enum abstract ImGuiTextFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoWidthForLargeClippedText : Int = 1;
}

@:enum abstract ImGuiTabItemFlags(Int) from Int to Int {
	var None : Int = 0;
	var UnsavedDocument : Int = 1;
	var SetSelected : Int = 2;
	var NoCloseWithMiddleMouseButton : Int = 4;
	var NoPushId : Int = 8;
	var NoTooltip : Int = 16;
}

@:enum abstract ImGuiTabItemFlagsPrivate(Int) from Int to Int {
	var ImGuiTabItemFlags_NoCloseButton : Int = 1048576;
}

@:enum abstract ImGuiTabBarFlags(Int) from Int to Int {
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

@:enum abstract ImGuiTabBarFlagsPrivate(Int) from Int to Int {
	var ImGuiTabBarFlags_DockNode : Int = 1048576;
	var ImGuiTabBarFlags_IsFocused : Int = 2097152;
	var ImGuiTabBarFlags_SaveSettings : Int = 4194304;
}

@:enum abstract ImGuiStyleVar(Int) from Int to Int {
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

@:enum abstract ImGuiSliderFlags(Int) from Int to Int {
	var None : Int = 0;
	var Vertical : Int = 1;
}

@:enum abstract ImGuiSeparatorFlags(Int) from Int to Int {
	var None : Int = 0;
	var Horizontal : Int = 1;
	var Vertical : Int = 2;
	var SpanAllColumns : Int = 4;
}

@:enum abstract ImGuiSelectableFlags(Int) from Int to Int {
	var None : Int = 0;
	var DontClosePopups : Int = 1;
	var SpanAllColumns : Int = 2;
	var AllowDoubleClick : Int = 4;
	var Disabled : Int = 8;
	var AllowItemOverlap : Int = 16;
}

@:enum abstract ImGuiSelectableFlagsPrivate(Int) from Int to Int {
	var ImGuiSelectableFlags_NoHoldingActiveID : Int = 1048576;
	var ImGuiSelectableFlags_SelectOnClick : Int = 2097152;
	var ImGuiSelectableFlags_SelectOnRelease : Int = 4194304;
	var ImGuiSelectableFlags_SpanAvailWidth : Int = 8388608;
	var ImGuiSelectableFlags_DrawHoveredWhenHeld : Int = 16777216;
	var ImGuiSelectableFlags_SetNavIdOnHover : Int = 33554432;
}

@:enum abstract ImGuiPopupPositionPolicy(Int) from Int to Int {
	var _Default : Int = 0;
	var _ComboBox : Int = 1;
}

@:enum abstract ImGuiPopupFlags(Int) from Int to Int {
	var None : Int = 0;
	var MouseButtonLeft : Int = 0;
	var MouseButtonRight : Int = 1;
	var MouseButtonMiddle : Int = 2;
	var MouseButtonMask_ : Int = 31;
	var MouseButtonDefault_ : Int = 1;
	var NoOpenOverExistingPopup : Int = 32;
	var NoOpenOverItems : Int = 64;
	var AnyPopupId : Int = 128;
	var AnyPopupLevel : Int = 256;
	var AnyPopup : Int = 384;
}

@:enum abstract ImGuiPlotType(Int) from Int to Int {
	var _Lines : Int = 0;
	var _Histogram : Int = 1;
}

@:enum abstract ImGuiNextWindowDataFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasPos : Int = 1;
	var HasSize : Int = 2;
	var HasContentSize : Int = 4;
	var HasCollapsed : Int = 8;
	var HasSizeConstraint : Int = 16;
	var HasFocus : Int = 32;
	var HasBgAlpha : Int = 64;
	var HasScroll : Int = 128;
}

@:enum abstract ImGuiNextItemDataFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasWidth : Int = 1;
	var HasOpen : Int = 2;
}

@:enum abstract ImGuiNavMoveFlags(Int) from Int to Int {
	var None : Int = 0;
	var LoopX : Int = 1;
	var LoopY : Int = 2;
	var WrapX : Int = 4;
	var WrapY : Int = 8;
	var AllowCurrentNavId : Int = 16;
	var AlsoScoreVisibleSet : Int = 32;
	var ScrollToEdge : Int = 64;
}

@:enum abstract ImGuiNavLayer(Int) from Int to Int {
	var _Main : Int = 0;
	var _Menu : Int = 1;
	var _COUNT : Int = 2;
}

@:enum abstract ImGuiNavInput(Int) from Int to Int {
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
	var KeyLeft_ : Int = 17;
	var KeyRight_ : Int = 18;
	var KeyUp_ : Int = 19;
	var KeyDown_ : Int = 20;
	var COUNT : Int = 21;
	var InternalStart_ : Int = 16;
}

@:enum abstract ImGuiNavHighlightFlags(Int) from Int to Int {
	var None : Int = 0;
	var TypeDefault : Int = 1;
	var TypeThin : Int = 2;
	var AlwaysDraw : Int = 4;
	var NoRounding : Int = 8;
}

@:enum abstract ImGuiNavForward(Int) from Int to Int {
	var _None : Int = 0;
	var _ForwardQueued : Int = 1;
	var _ForwardActive : Int = 2;
}

@:enum abstract ImGuiNavDirSourceFlags(Int) from Int to Int {
	var None : Int = 0;
	var Keyboard : Int = 1;
	var PadDPad : Int = 2;
	var PadLStick : Int = 4;
}

@:enum abstract ImGuiMouseCursor(Int) from Int to Int {
	var None : Int = -1;
	var Arrow : Int = 0;
	var TextInput : Int = 1;
	var ResizeAll : Int = 2;
	var ResizeNS : Int = 3;
	var ResizeEW : Int = 4;
	var ResizeNESW : Int = 5;
	var ResizeNWSE : Int = 6;
	var Hand : Int = 7;
	var NotAllowed : Int = 8;
	var COUNT : Int = 9;
}

@:enum abstract ImGuiMouseButton(Int) from Int to Int {
	var Left : Int = 0;
	var Right : Int = 1;
	var Middle : Int = 2;
	var COUNT : Int = 5;
}

@:enum abstract ImGuiLogType(Int) from Int to Int {
	var _None : Int = 0;
	var _TTY : Int = 1;
	var _File : Int = 2;
	var _Buffer : Int = 3;
	var _Clipboard : Int = 4;
}

@:enum abstract ImGuiLayoutType(Int) from Int to Int {
	var Horizontal : Int = 0;
	var Vertical : Int = 1;
}

@:enum abstract ImGuiKey(Int) from Int to Int {
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
	var KeyPadEnter : Int = 15;
	var A : Int = 16;
	var C : Int = 17;
	var V : Int = 18;
	var X : Int = 19;
	var Y : Int = 20;
	var Z : Int = 21;
	var COUNT : Int = 22;
}

@:enum abstract ImGuiKeyModFlags(Int) from Int to Int {
	var None : Int = 0;
	var Ctrl : Int = 1;
	var Shift : Int = 2;
	var Alt : Int = 4;
	var Super : Int = 8;
}

@:enum abstract ImGuiItemStatusFlags(Int) from Int to Int {
	var None : Int = 0;
	var HoveredRect : Int = 1;
	var HasDisplayRect : Int = 2;
	var Edited : Int = 4;
	var ToggledSelection : Int = 8;
	var ToggledOpen : Int = 16;
	var HasDeactivated : Int = 32;
	var Deactivated : Int = 64;
}

@:enum abstract ImGuiItemFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoTabStop : Int = 1;
	var ButtonRepeat : Int = 2;
	var Disabled : Int = 4;
	var NoNav : Int = 8;
	var NoNavDefaultFocus : Int = 16;
	var SelectableDontClosePopup : Int = 32;
	var MixedValue : Int = 64;
	var Default_ : Int = 0;
}

@:enum abstract ImGuiInputTextFlags(Int) from Int to Int {
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

@:enum abstract ImGuiInputSource(Int) from Int to Int {
	var _None : Int = 0;
	var _Mouse : Int = 1;
	var _Nav : Int = 2;
	var _NavKeyboard : Int = 3;
	var _NavGamepad : Int = 4;
	var _COUNT : Int = 5;
}

@:enum abstract ImGuiInputReadMode(Int) from Int to Int {
	var _Down : Int = 0;
	var _Pressed : Int = 1;
	var _Released : Int = 2;
	var _Repeat : Int = 3;
	var _RepeatSlow : Int = 4;
	var _RepeatFast : Int = 5;
}

@:enum abstract ImGuiHoveredFlags(Int) from Int to Int {
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

@:enum abstract ImGuiFocusedFlags(Int) from Int to Int {
	var None : Int = 0;
	var ChildWindows : Int = 1;
	var RootWindow : Int = 2;
	var AnyWindow : Int = 4;
	var RootAndChildWindows : Int = 3;
}

@:enum abstract ImGuiDragFlags(Int) from Int to Int {
	var None : Int = 0;
	var Vertical : Int = 1;
}

@:enum abstract ImGuiDragDropFlags(Int) from Int to Int {
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

@:enum abstract ImGuiDir(Int) from Int to Int {
	var None : Int = -1;
	var Left : Int = 0;
	var Right : Int = 1;
	var Up : Int = 2;
	var Down : Int = 3;
	var COUNT : Int = 4;
}

@:enum abstract ImGuiDataType(Int) from Int to Int {
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

@:enum abstract ImGuiDataTypePrivate(Int) from Int to Int {
	var ImGuiDataType_String : Int = 11;
	var ImGuiDataType_Pointer : Int = 12;
	var ImGuiDataType_ID : Int = 13;
}

@:enum abstract ImGuiConfigFlags(Int) from Int to Int {
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

@:enum abstract ImGuiCond(Int) from Int to Int {
	var None : Int = 0;
	var Always : Int = 1;
	var Once : Int = 2;
	var FirstUseEver : Int = 4;
	var Appearing : Int = 8;
}

@:enum abstract ImGuiComboFlags(Int) from Int to Int {
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

@:enum abstract ImGuiColumnsFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoBorder : Int = 1;
	var NoResize : Int = 2;
	var NoPreserveWidths : Int = 4;
	var NoForceWithinWindow : Int = 8;
	var GrowParentContentsSize : Int = 16;
}

@:enum abstract ImGuiColorEditFlags(Int) from Int to Int {
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
	var NoBorder : Int = 1024;
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

@:enum abstract ImGuiCol(Int) from Int to Int {
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

@:enum abstract ImGuiButtonFlags(Int) from Int to Int {
	var None : Int = 0;
	var Repeat : Int = 1;
	var PressedOnClick : Int = 2;
	var PressedOnClickRelease : Int = 4;
	var PressedOnClickReleaseAnywhere : Int = 8;
	var PressedOnRelease : Int = 16;
	var PressedOnDoubleClick : Int = 32;
	var PressedOnDragDropHold : Int = 64;
	var FlattenChildren : Int = 128;
	var AllowItemOverlap : Int = 256;
	var DontClosePopups : Int = 512;
	var Disabled : Int = 1024;
	var AlignTextBaseLine : Int = 2048;
	var NoKeyModifiers : Int = 4096;
	var NoHoldingActiveId : Int = 8192;
	var NoNavFocus : Int = 16384;
	var NoHoveredOnFocus : Int = 32768;
	var MouseButtonLeft : Int = 65536;
	var MouseButtonRight : Int = 131072;
	var MouseButtonMiddle : Int = 262144;
	var MouseButtonMask_ : Int = 458752;
	var MouseButtonShift_ : Int = 16;
	var MouseButtonDefault_ : Int = 65536;
	var PressedOnMask_ : Int = 126;
	var PressedOnDefault_ : Int = 4;
}

@:enum abstract ImGuiBackendFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasGamepad : Int = 1;
	var HasMouseCursors : Int = 2;
	var HasSetMousePos : Int = 4;
	var RendererHasVtxOffset : Int = 8;
}

@:enum abstract ImGuiAxis(Int) from Int to Int {
	var _None : Int = -1;
	var _X : Int = 0;
	var _Y : Int = 1;
}

@:enum abstract ImFontAtlasFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoPowerOfTwoHeight : Int = 1;
	var NoMouseCursors : Int = 2;
}

@:enum abstract ImDrawListFlags(Int) from Int to Int {
	var None : Int = 0;
	var AntiAliasedLines : Int = 1;
	var AntiAliasedFill : Int = 2;
	var AllowVtxOffset : Int = 4;
}

@:enum abstract ImDrawCornerFlags(Int) from Int to Int {
	var None : Int = 0;
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

@:keep @:structAccess @:include("imgui.h") @:native("ImVec4") extern class ImVec4 {
	@:native("x")
	var x : cpp.Float32;
	@:native("y")
	var y : cpp.Float32;
	@:native("z")
	var z : cpp.Float32;
	@:native("w")
	var w : cpp.Float32;
	@:native("ImVec4")
	@:overload(function(__x:cpp.Float32, __y:cpp.Float32, __z:cpp.Float32, __w:cpp.Float32):ImVec4 { })
	static function create():ImVec4;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec2ih") extern class ImVec2ih {
	@:native("x")
	var x : cpp.Int16;
	@:native("y")
	var y : cpp.Int16;
	@:native("ImVec2ih")
	@:overload(function(__x:cpp.Int16, __y:cpp.Int16):ImVec2ih { })
	@:overload(function(_rhs:ImVec2):ImVec2ih { })
	static function create():ImVec2ih;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec2") extern class ImVec2 {
	@:native("x")
	var x : cpp.Float32;
	@:native("y")
	var y : cpp.Float32;
	@:native("ImVec2")
	@:overload(function(__x:cpp.Float32, __y:cpp.Float32):ImVec2 { })
	static function create():ImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec1") extern class ImVec1 {
	@:native("x")
	var x : cpp.Float32;
	@:native("ImVec1")
	@:overload(function(__x:cpp.Float32):ImVec1 { })
	static function create():ImVec1;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImRect") extern class ImRect {
	@:native("Min")
	var min : ImVec2;
	@:native("Max")
	var max : ImVec2;
	@:native("TranslateY")
	function translateY(_dy:cpp.Float32):cpp.Void;
	@:native("TranslateX")
	function translateX(_dx:cpp.Float32):cpp.Void;
	@:native("Translate")
	function translate(_d:ImVec2):cpp.Void;
	@:native("ToVec4")
	function toVec4(_pOut:cpp.Star<ImVec4>, _self:cpp.Star<ImRect>):cpp.Void;
	@:native("Overlaps")
	function overlaps(_r:ImRect):Bool;
	@:native("IsInverted")
	function isInverted():Bool;
	@:native("ImRect")
	@:overload(function(_min:ImVec2, _max:ImVec2):ImRect { })
	@:overload(function(_v:ImVec4):ImRect { })
	@:overload(function(_x1:cpp.Float32, _y1:cpp.Float32, _x2:cpp.Float32, _y2:cpp.Float32):ImRect { })
	static function create():ImRect;
	@:native("GetWidth")
	function getWidth():cpp.Float32;
	@:native("GetTR")
	function getTR(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetTL")
	function getTL(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetSize")
	function getSize(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetHeight")
	function getHeight():cpp.Float32;
	@:native("GetCenter")
	function getCenter(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetBR")
	function getBR(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetBL")
	function getBL(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImRect>):cpp.Void;
	@:native("Floor")
	function floor():cpp.Void;
	@:native("Expand")
	@:overload(function(_amount:ImVec2):cpp.Void { })
	function expand(_amount:cpp.Float32):cpp.Void;
	@:native("Contains")
	@:overload(function(_r:ImRect):Bool { })
	function contains(_p:ImVec2):Bool;
	@:native("ClipWithFull")
	function clipWithFull(_r:ImRect):cpp.Void;
	@:native("ClipWith")
	function clipWith(_r:ImRect):cpp.Void;
	@:native("Add")
	@:overload(function(_r:ImRect):cpp.Void { })
	function add(_p:ImVec2):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiWindowTempData") extern class ImGuiWindowTempData {
	@:native("CursorPos")
	var cursorPos : ImVec2;
	@:native("CursorPosPrevLine")
	var cursorPosPrevLine : ImVec2;
	@:native("CursorStartPos")
	var cursorStartPos : ImVec2;
	@:native("CursorMaxPos")
	var cursorMaxPos : ImVec2;
	@:native("CurrLineSize")
	var currLineSize : ImVec2;
	@:native("PrevLineSize")
	var prevLineSize : ImVec2;
	@:native("CurrLineTextBaseOffset")
	var currLineTextBaseOffset : cpp.Float32;
	@:native("PrevLineTextBaseOffset")
	var prevLineTextBaseOffset : cpp.Float32;
	@:native("Indent")
	var indent : ImVec1;
	@:native("ColumnsOffset")
	var columnsOffset : ImVec1;
	@:native("GroupOffset")
	var groupOffset : ImVec1;
	@:native("LastItemId")
	var lastItemId : ImGuiID;
	@:native("LastItemStatusFlags")
	var lastItemStatusFlags : ImGuiItemStatusFlags;
	@:native("LastItemRect")
	var lastItemRect : ImRect;
	@:native("LastItemDisplayRect")
	var lastItemDisplayRect : ImRect;
	@:native("NavLayerCurrent")
	var navLayerCurrent : ImGuiNavLayer;
	@:native("NavLayerCurrentMask")
	var navLayerCurrentMask : Int;
	@:native("NavLayerActiveMask")
	var navLayerActiveMask : Int;
	@:native("NavLayerActiveMaskNext")
	var navLayerActiveMaskNext : Int;
	@:native("NavFocusScopeIdCurrent")
	var navFocusScopeIdCurrent : ImGuiID;
	@:native("NavHideHighlightOneFrame")
	var navHideHighlightOneFrame : Bool;
	@:native("NavHasScroll")
	var navHasScroll : Bool;
	@:native("MenuBarAppending")
	var menuBarAppending : Bool;
	@:native("MenuBarOffset")
	var menuBarOffset : ImVec2;
	@:native("MenuColumns")
	var menuColumns : ImGuiMenuColumns;
	@:native("TreeDepth")
	var treeDepth : Int;
	@:native("TreeJumpToParentOnPopMask")
	var treeJumpToParentOnPopMask : ImU32;
	@:native("ChildWindows")
	var childWindows : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("StateStorage")
	var stateStorage : cpp.Star<ImGuiStorage>;
	@:native("CurrentColumns")
	var currentColumns : cpp.Star<ImGuiColumns>;
	@:native("LayoutType")
	var layoutType : ImGuiLayoutType;
	@:native("ParentLayoutType")
	var parentLayoutType : ImGuiLayoutType;
	@:native("FocusCounterRegular")
	var focusCounterRegular : Int;
	@:native("FocusCounterTabStop")
	var focusCounterTabStop : Int;
	@:native("ItemFlags")
	var itemFlags : ImGuiItemFlags;
	@:native("ItemWidth")
	var itemWidth : cpp.Float32;
	@:native("TextWrapPos")
	var textWrapPos : cpp.Float32;
	@:native("ItemFlagsStack")
	var itemFlagsStack : ImVectorImGuiItemFlags;
	@:native("ItemWidthStack")
	var itemWidthStack : ImVectorfloat;
	@:native("TextWrapPosStack")
	var textWrapPosStack : ImVectorfloat;
	@:native("GroupStack")
	var groupStack : ImVectorImGuiGroupData;
	@:native("StackSizesBackup")
	var stackSizesBackup : cpp.RawPointer<cpp.Int16>;
	@:native("ImGuiWindowTempData")
	static function create():ImGuiWindowTempData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiWindowSettings") extern class ImGuiWindowSettings {
	@:native("ID")
	var iD : ImGuiID;
	@:native("Pos")
	var pos : ImVec2ih;
	@:native("Size")
	var size : ImVec2ih;
	@:native("Collapsed")
	var collapsed : Bool;
	@:native("WantApply")
	var wantApply : Bool;
	@:native("ImGuiWindowSettings")
	static function create():ImGuiWindowSettings;
	@:native("GetName")
	function getName():cpp.Star<cpp.Int8>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiWindow") extern class ImGuiWindow {
	@:native("Name")
	var name : cpp.Star<cpp.Int8>;
	@:native("ID")
	var iD : ImGuiID;
	@:native("Flags")
	var flags : ImGuiWindowFlags;
	@:native("Pos")
	var pos : ImVec2;
	@:native("Size")
	var size : ImVec2;
	@:native("SizeFull")
	var sizeFull : ImVec2;
	@:native("ContentSize")
	var contentSize : ImVec2;
	@:native("ContentSizeExplicit")
	var contentSizeExplicit : ImVec2;
	@:native("WindowPadding")
	var windowPadding : ImVec2;
	@:native("WindowRounding")
	var windowRounding : cpp.Float32;
	@:native("WindowBorderSize")
	var windowBorderSize : cpp.Float32;
	@:native("NameBufLen")
	var nameBufLen : Int;
	@:native("MoveId")
	var moveId : ImGuiID;
	@:native("ChildId")
	var childId : ImGuiID;
	@:native("Scroll")
	var scroll : ImVec2;
	@:native("ScrollMax")
	var scrollMax : ImVec2;
	@:native("ScrollTarget")
	var scrollTarget : ImVec2;
	@:native("ScrollTargetCenterRatio")
	var scrollTargetCenterRatio : ImVec2;
	@:native("ScrollbarSizes")
	var scrollbarSizes : ImVec2;
	@:native("ScrollbarX")
	var scrollbarX : Bool;
	@:native("ScrollbarY")
	var scrollbarY : Bool;
	@:native("Active")
	var active : Bool;
	@:native("WasActive")
	var wasActive : Bool;
	@:native("WriteAccessed")
	var writeAccessed : Bool;
	@:native("Collapsed")
	var collapsed : Bool;
	@:native("WantCollapseToggle")
	var wantCollapseToggle : Bool;
	@:native("SkipItems")
	var skipItems : Bool;
	@:native("Appearing")
	var appearing : Bool;
	@:native("Hidden")
	var hidden : Bool;
	@:native("IsFallbackWindow")
	var isFallbackWindow : Bool;
	@:native("HasCloseButton")
	var hasCloseButton : Bool;
	@:native("ResizeBorderHeld")
	var resizeBorderHeld : cpp.Int8;
	@:native("BeginCount")
	var beginCount : cpp.Int16;
	@:native("BeginOrderWithinParent")
	var beginOrderWithinParent : cpp.Int16;
	@:native("BeginOrderWithinContext")
	var beginOrderWithinContext : cpp.Int16;
	@:native("PopupId")
	var popupId : ImGuiID;
	@:native("AutoFitFramesX")
	var autoFitFramesX : ImS8;
	@:native("AutoFitFramesY")
	var autoFitFramesY : ImS8;
	@:native("AutoFitChildAxises")
	var autoFitChildAxises : ImS8;
	@:native("AutoFitOnlyGrows")
	var autoFitOnlyGrows : Bool;
	@:native("AutoPosLastDirection")
	var autoPosLastDirection : ImGuiDir;
	@:native("HiddenFramesCanSkipItems")
	var hiddenFramesCanSkipItems : Int;
	@:native("HiddenFramesCannotSkipItems")
	var hiddenFramesCannotSkipItems : Int;
	@:native("SetWindowPosAllowFlags")
	var setWindowPosAllowFlags : ImGuiCond;
	@:native("SetWindowSizeAllowFlags")
	var setWindowSizeAllowFlags : ImGuiCond;
	@:native("SetWindowCollapsedAllowFlags")
	var setWindowCollapsedAllowFlags : ImGuiCond;
	@:native("SetWindowPosVal")
	var setWindowPosVal : ImVec2;
	@:native("SetWindowPosPivot")
	var setWindowPosPivot : ImVec2;
	@:native("IDStack")
	var iDStack : ImVectorImGuiID;
	@:native("DC")
	var dC : ImGuiWindowTempData;
	@:native("OuterRectClipped")
	var outerRectClipped : ImRect;
	@:native("InnerRect")
	var innerRect : ImRect;
	@:native("InnerClipRect")
	var innerClipRect : ImRect;
	@:native("WorkRect")
	var workRect : ImRect;
	@:native("ClipRect")
	var clipRect : ImRect;
	@:native("ContentRegionRect")
	var contentRegionRect : ImRect;
	@:native("LastFrameActive")
	var lastFrameActive : Int;
	@:native("LastTimeActive")
	var lastTimeActive : cpp.Float32;
	@:native("ItemWidthDefault")
	var itemWidthDefault : cpp.Float32;
	@:native("StateStorage")
	var stateStorage : ImGuiStorage;
	@:native("ColumnsStorage")
	var columnsStorage : ImVectorImGuiColumns;
	@:native("FontWindowScale")
	var fontWindowScale : cpp.Float32;
	@:native("SettingsOffset")
	var settingsOffset : Int;
	@:native("DrawList")
	var drawList : cpp.Star<ImDrawList>;
	@:native("DrawListInst")
	var drawListInst : ImDrawList;
	@:native("ParentWindow")
	var parentWindow : cpp.Star<ImGuiWindow>;
	@:native("RootWindow")
	var rootWindow : cpp.Star<ImGuiWindow>;
	@:native("RootWindowForTitleBarHighlight")
	var rootWindowForTitleBarHighlight : cpp.Star<ImGuiWindow>;
	@:native("RootWindowForNav")
	var rootWindowForNav : cpp.Star<ImGuiWindow>;
	@:native("NavLastChildNavWindow")
	var navLastChildNavWindow : cpp.Star<ImGuiWindow>;
	@:native("NavLastIds")
	var navLastIds : cpp.RawPointer<ImGuiID>;
	@:native("NavRectRel")
	var navRectRel : cpp.RawPointer<ImRect>;
	@:native("MemoryCompacted")
	var memoryCompacted : Bool;
	@:native("MemoryDrawListIdxCapacity")
	var memoryDrawListIdxCapacity : Int;
	@:native("MemoryDrawListVtxCapacity")
	var memoryDrawListVtxCapacity : Int;
	@:native("TitleBarRect")
	function titleBarRect(_pOut:cpp.Star<ImRect>, _self:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("TitleBarHeight")
	function titleBarHeight():cpp.Float32;
	@:native("Rect")
	function rect(_pOut:cpp.Star<ImRect>, _self:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("MenuBarRect")
	function menuBarRect(_pOut:cpp.Star<ImRect>, _self:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("MenuBarHeight")
	function menuBarHeight():cpp.Float32;
	@:native("ImGuiWindow")
	static function create(_context:cpp.Star<ImGuiContext>, _name:imgui.utils.VarConstCharStar):ImGuiWindow;
	@:native("GetIDNoKeepAlive")
	@:overload(function(_str:imgui.utils.VarConstCharStar):ImGuiID { })
	@:overload(function(_ptr:imgui.VoidPointer):ImGuiID { })
	@:overload(function(_n:Int):ImGuiID { })
	function getIDNoKeepAlive(_str:imgui.utils.VarConstCharStar, _str_end:imgui.utils.VarConstCharStar):ImGuiID;
	@:native("GetIDFromRectangle")
	function getIDFromRectangle(_r_abs:ImRect):ImGuiID;
	@:native("GetID")
	@:overload(function(_str:imgui.utils.VarConstCharStar):ImGuiID { })
	@:overload(function(_ptr:imgui.VoidPointer):ImGuiID { })
	@:overload(function(_n:Int):ImGuiID { })
	function getID(_str:imgui.utils.VarConstCharStar, _str_end:imgui.utils.VarConstCharStar):ImGuiID;
	@:native("CalcFontSize")
	function calcFontSize():cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextRange") extern class ImGuiTextRange {
	@:native("b")
	var b : imgui.utils.VarConstCharStar;
	@:native("e")
	var e : imgui.utils.VarConstCharStar;
	@:native("split")
	function split(_separator:cpp.Int8, _out:ImVectorImGuiTextRangePointer):cpp.Void;
	@:native("empty")
	function empty():Bool;
	@:native("ImGuiTextRange")
	@:overload(function(__b:imgui.utils.VarConstCharStar, __e:imgui.utils.VarConstCharStar):ImGuiTextRange { })
	static function create():ImGuiTextRange;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextFilter") extern class ImGuiTextFilter {
	@:native("InputBuf")
	var inputBuf : cpp.RawPointer<cpp.Int8>;
	@:native("Filters")
	var filters : ImVectorImGuiTextRange;
	@:native("CountGrep")
	var countGrep : Int;
	@:native("PassFilter")
	@:overload(function(_text:imgui.utils.VarConstCharStar):Bool { })
	function passFilter(_text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):Bool;
	@:native("IsActive")
	function isActive():Bool;
	@:native("ImGuiTextFilter")
	@:overload(function():ImGuiTextFilter { })
	static function create(_default_filter:imgui.utils.VarConstCharStar):ImGuiTextFilter;
	@:native("Draw")
	@:overload(function(_width:cpp.Float32):Bool { })
	@:overload(function():Bool { })
	function draw(_label:imgui.utils.VarConstCharStar, _width:cpp.Float32):Bool;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("Build")
	function build():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextBuffer") extern class ImGuiTextBuffer {
	@:native("Buf")
	var buf : ImVectorchar;
	@:native("size")
	function size():Int;
	@:native("reserve")
	function reserve(_capacity:Int):cpp.Void;
	@:native("end")
	function end():imgui.utils.VarConstCharStar;
	@:native("empty")
	function empty():Bool;
	@:native("clear")
	function clear():cpp.Void;
	@:native("c_str")
	function c_str():imgui.utils.VarConstCharStar;
	@:native("begin")
	function begin():imgui.utils.VarConstCharStar;
	@:native("appendfv")
	function appendfv(_fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("appendf")
	function appendf(_fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("append")
	@:overload(function(_str:imgui.utils.VarConstCharStar):cpp.Void { })
	function append(_str:imgui.utils.VarConstCharStar, _str_end:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGuiTextBuffer")
	static function create():ImGuiTextBuffer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTabItem") extern class ImGuiTabItem {
	@:native("ID")
	var iD : ImGuiID;
	@:native("Flags")
	var flags : ImGuiTabItemFlags;
	@:native("LastFrameVisible")
	var lastFrameVisible : Int;
	@:native("LastFrameSelected")
	var lastFrameSelected : Int;
	@:native("NameOffset")
	var nameOffset : Int;
	@:native("Offset")
	var offset : cpp.Float32;
	@:native("Width")
	var width : cpp.Float32;
	@:native("ContentWidth")
	var contentWidth : cpp.Float32;
	@:native("ImGuiTabItem")
	static function create():ImGuiTabItem;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTabBar") extern class ImGuiTabBar {
	@:native("Tabs")
	var tabs : ImVectorImGuiTabItem;
	@:native("ID")
	var iD : ImGuiID;
	@:native("SelectedTabId")
	var selectedTabId : ImGuiID;
	@:native("NextSelectedTabId")
	var nextSelectedTabId : ImGuiID;
	@:native("VisibleTabId")
	var visibleTabId : ImGuiID;
	@:native("CurrFrameVisible")
	var currFrameVisible : Int;
	@:native("PrevFrameVisible")
	var prevFrameVisible : Int;
	@:native("BarRect")
	var barRect : ImRect;
	@:native("LastTabContentHeight")
	var lastTabContentHeight : cpp.Float32;
	@:native("OffsetMax")
	var offsetMax : cpp.Float32;
	@:native("OffsetMaxIdeal")
	var offsetMaxIdeal : cpp.Float32;
	@:native("OffsetNextTab")
	var offsetNextTab : cpp.Float32;
	@:native("ScrollingAnim")
	var scrollingAnim : cpp.Float32;
	@:native("ScrollingTarget")
	var scrollingTarget : cpp.Float32;
	@:native("ScrollingTargetDistToVisibility")
	var scrollingTargetDistToVisibility : cpp.Float32;
	@:native("ScrollingSpeed")
	var scrollingSpeed : cpp.Float32;
	@:native("Flags")
	var flags : ImGuiTabBarFlags;
	@:native("ReorderRequestTabId")
	var reorderRequestTabId : ImGuiID;
	@:native("ReorderRequestDir")
	var reorderRequestDir : ImS8;
	@:native("WantLayout")
	var wantLayout : Bool;
	@:native("VisibleTabWasSubmitted")
	var visibleTabWasSubmitted : Bool;
	@:native("LastTabItemIdx")
	var lastTabItemIdx : cpp.Int16;
	@:native("FramePadding")
	var framePadding : ImVec2;
	@:native("TabsNames")
	var tabsNames : ImGuiTextBuffer;
	@:native("ImGuiTabBar")
	static function create():ImGuiTabBar;
	@:native("GetTabOrder")
	function getTabOrder(_tab:cpp.Star<ImGuiTabItem>):Int;
	@:native("GetTabName")
	function getTabName(_tab:cpp.Star<ImGuiTabItem>):imgui.utils.VarConstCharStar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStyleMod") extern class ImGuiStyleMod {
	@:native("VarIdx")
	var varIdx : ImGuiStyleVar;
	@:native("ImGuiStyleMod")
	@:overload(function(_idx:ImGuiStyleVar, _v:cpp.Float32):ImGuiStyleMod { })
	@:overload(function(_idx:ImGuiStyleVar, _v:ImVec2):ImGuiStyleMod { })
	static function create(_idx:ImGuiStyleVar, _v:Int):ImGuiStyleMod;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStyle") extern class ImGuiStyle {
	@:native("Alpha")
	var alpha : cpp.Float32;
	@:native("WindowPadding")
	var windowPadding : ImVec2;
	@:native("WindowRounding")
	var windowRounding : cpp.Float32;
	@:native("WindowBorderSize")
	var windowBorderSize : cpp.Float32;
	@:native("WindowMinSize")
	var windowMinSize : ImVec2;
	@:native("WindowTitleAlign")
	var windowTitleAlign : ImVec2;
	@:native("WindowMenuButtonPosition")
	var windowMenuButtonPosition : ImGuiDir;
	@:native("ChildRounding")
	var childRounding : cpp.Float32;
	@:native("ChildBorderSize")
	var childBorderSize : cpp.Float32;
	@:native("PopupRounding")
	var popupRounding : cpp.Float32;
	@:native("PopupBorderSize")
	var popupBorderSize : cpp.Float32;
	@:native("FramePadding")
	var framePadding : ImVec2;
	@:native("FrameRounding")
	var frameRounding : cpp.Float32;
	@:native("FrameBorderSize")
	var frameBorderSize : cpp.Float32;
	@:native("ItemSpacing")
	var itemSpacing : ImVec2;
	@:native("ItemInnerSpacing")
	var itemInnerSpacing : ImVec2;
	@:native("TouchExtraPadding")
	var touchExtraPadding : ImVec2;
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
	@:native("TabMinWidthForUnselectedCloseButton")
	var tabMinWidthForUnselectedCloseButton : cpp.Float32;
	@:native("ColorButtonPosition")
	var colorButtonPosition : ImGuiDir;
	@:native("ButtonTextAlign")
	var buttonTextAlign : ImVec2;
	@:native("SelectableTextAlign")
	var selectableTextAlign : ImVec2;
	@:native("DisplayWindowPadding")
	var displayWindowPadding : ImVec2;
	@:native("DisplaySafeAreaPadding")
	var displaySafeAreaPadding : ImVec2;
	@:native("MouseCursorScale")
	var mouseCursorScale : cpp.Float32;
	@:native("AntiAliasedLines")
	var antiAliasedLines : Bool;
	@:native("AntiAliasedFill")
	var antiAliasedFill : Bool;
	@:native("CurveTessellationTol")
	var curveTessellationTol : cpp.Float32;
	@:native("CircleSegmentMaxError")
	var circleSegmentMaxError : cpp.Float32;
	@:native("Colors")
	var colors : cpp.RawPointer<ImVec4>;
	@:native("ScaleAllSizes")
	function scaleAllSizes(_scale_factor:cpp.Float32):cpp.Void;
	@:native("ImGuiStyle")
	static function create():ImGuiStyle;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStoragePair") extern class ImGuiStoragePair {
	@:native("key")
	var key : ImGuiID;
	@:native("ImGuiStoragePair")
	@:overload(function(__key:ImGuiID, __val_f:cpp.Float32):ImGuiStoragePair { })
	@:overload(function(__key:ImGuiID, __val_p:imgui.VoidPointer):ImGuiStoragePair { })
	static function create(__key:ImGuiID, __val_i:Int):ImGuiStoragePair;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStorage") extern class ImGuiStorage {
	@:native("Data")
	var data : ImVectorImGuiStoragePair;
	@:native("SetVoidPtr")
	function setVoidPtr(_key:ImGuiID, _val:imgui.VoidPointer):cpp.Void;
	@:native("SetInt")
	function setInt(_key:ImGuiID, _val:Int):cpp.Void;
	@:native("SetFloat")
	function setFloat(_key:ImGuiID, _val:cpp.Float32):cpp.Void;
	@:native("SetBool")
	function setBool(_key:ImGuiID, _val:Bool):cpp.Void;
	@:native("SetAllInt")
	function setAllInt(_val:Int):cpp.Void;
	@:native("GetVoidPtrRef")
	@:overload(function(_key:ImGuiID):cpp.Star<cpp.Star<cpp.Void>> { })
	function getVoidPtrRef(_key:ImGuiID, _default_val:imgui.VoidPointer):cpp.Star<cpp.Star<cpp.Void>>;
	@:native("GetVoidPtr")
	function getVoidPtr(_key:ImGuiID):imgui.VoidPointer;
	@:native("GetIntRef")
	@:overload(function(_key:ImGuiID):imgui.IntPointer { })
	function getIntRef(_key:ImGuiID, _default_val:Int):imgui.IntPointer;
	@:native("GetInt")
	@:overload(function(_key:ImGuiID):Int { })
	function getInt(_key:ImGuiID, _default_val:Int):Int;
	@:native("GetFloatRef")
	@:overload(function(_key:ImGuiID):imgui.FloatPointer { })
	function getFloatRef(_key:ImGuiID, _default_val:cpp.Float32):imgui.FloatPointer;
	@:native("GetFloat")
	@:overload(function(_key:ImGuiID):cpp.Float32 { })
	function getFloat(_key:ImGuiID, _default_val:cpp.Float32):cpp.Float32;
	@:native("GetBoolRef")
	@:overload(function(_key:ImGuiID):imgui.BoolPointer { })
	function getBoolRef(_key:ImGuiID, _default_val:Bool):imgui.BoolPointer;
	@:native("GetBool")
	@:overload(function(_key:ImGuiID):Bool { })
	function getBool(_key:ImGuiID, _default_val:Bool):Bool;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("BuildSortByKey")
	function buildSortByKey():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiSizeCallbackData") extern class ImGuiSizeCallbackData {
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("Pos")
	var pos : ImVec2;
	@:native("CurrentSize")
	var currentSize : ImVec2;
	@:native("DesiredSize")
	var desiredSize : ImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiShrinkWidthItem") extern class ImGuiShrinkWidthItem {
	@:native("Index")
	var index : Int;
	@:native("Width")
	var width : cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiSettingsHandler") extern class ImGuiSettingsHandler {
	@:native("TypeName")
	var typeName : imgui.utils.VarConstCharStar;
	@:native("TypeHash")
	var typeHash : ImGuiID;
	@:native("ClearAllFn")
	var clearAllFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>) -> Void>;
	@:native("ReadInitFn")
	var readInitFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>) -> Void>;
	@:native("ReadOpenFn")
	var readOpenFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>, imgui.utils.VarConstCharStar) -> imgui.VoidPointer>;
	@:native("ReadLineFn")
	var readLineFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>, cpp.Star<cpp.Void>, imgui.utils.VarConstCharStar) -> Void>;
	@:native("ApplyAllFn")
	var applyAllFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>) -> Void>;
	@:native("WriteAllFn")
	var writeAllFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>, cpp.Star<ImGuiTextBuffer>) -> Void>;
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("ImGuiSettingsHandler")
	static function create():ImGuiSettingsHandler;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiPtrOrIndex") extern class ImGuiPtrOrIndex {
	@:native("Ptr")
	var ptr : imgui.VoidPointer;
	@:native("Index")
	var index : Int;
	@:native("ImGuiPtrOrIndex")
	@:overload(function(_index:Int):ImGuiPtrOrIndex { })
	static function create(_ptr:imgui.VoidPointer):ImGuiPtrOrIndex;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiPopupData") extern class ImGuiPopupData {
	@:native("PopupId")
	var popupId : ImGuiID;
	@:native("Window")
	var window : cpp.Star<ImGuiWindow>;
	@:native("SourceWindow")
	var sourceWindow : cpp.Star<ImGuiWindow>;
	@:native("OpenFrameCount")
	var openFrameCount : Int;
	@:native("OpenParentId")
	var openParentId : ImGuiID;
	@:native("OpenPopupPos")
	var openPopupPos : ImVec2;
	@:native("OpenMousePos")
	var openMousePos : ImVec2;
	@:native("ImGuiPopupData")
	static function create():ImGuiPopupData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiPayload") extern class ImGuiPayload {
	@:native("Data")
	var data : imgui.VoidPointer;
	@:native("DataSize")
	var dataSize : Int;
	@:native("SourceId")
	var sourceId : ImGuiID;
	@:native("SourceParentId")
	var sourceParentId : ImGuiID;
	@:native("DataFrameCount")
	var dataFrameCount : Int;
	@:native("DataType")
	var dataType : cpp.RawPointer<cpp.Int8>;
	@:native("Preview")
	var preview : Bool;
	@:native("Delivery")
	var delivery : Bool;
	@:native("IsPreview")
	function isPreview():Bool;
	@:native("IsDelivery")
	function isDelivery():Bool;
	@:native("IsDataType")
	function isDataType(_type:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGuiPayload")
	static function create():ImGuiPayload;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiOnceUponAFrame") extern class ImGuiOnceUponAFrame {
	@:native("RefFrame")
	var refFrame : Int;
	@:native("ImGuiOnceUponAFrame")
	static function create():ImGuiOnceUponAFrame;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiNextWindowData") extern class ImGuiNextWindowData {
	@:native("Flags")
	var flags : ImGuiNextWindowDataFlags;
	@:native("PosCond")
	var posCond : ImGuiCond;
	@:native("SizeCond")
	var sizeCond : ImGuiCond;
	@:native("CollapsedCond")
	var collapsedCond : ImGuiCond;
	@:native("PosVal")
	var posVal : ImVec2;
	@:native("PosPivotVal")
	var posPivotVal : ImVec2;
	@:native("SizeVal")
	var sizeVal : ImVec2;
	@:native("ContentSizeVal")
	var contentSizeVal : ImVec2;
	@:native("ScrollVal")
	var scrollVal : ImVec2;
	@:native("CollapsedVal")
	var collapsedVal : Bool;
	@:native("SizeConstraintRect")
	var sizeConstraintRect : ImRect;
	@:native("SizeCallback")
	var sizeCallback : ImGuiSizeCallback;
	@:native("SizeCallbackUserData")
	var sizeCallbackUserData : imgui.VoidPointer;
	@:native("BgAlphaVal")
	var bgAlphaVal : cpp.Float32;
	@:native("MenuBarOffsetMinVal")
	var menuBarOffsetMinVal : ImVec2;
	@:native("ImGuiNextWindowData")
	static function create():ImGuiNextWindowData;
	@:native("ClearFlags")
	function clearFlags():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiNextItemData") extern class ImGuiNextItemData {
	@:native("Flags")
	var flags : ImGuiNextItemDataFlags;
	@:native("Width")
	var width : cpp.Float32;
	@:native("FocusScopeId")
	var focusScopeId : ImGuiID;
	@:native("OpenCond")
	var openCond : ImGuiCond;
	@:native("OpenVal")
	var openVal : Bool;
	@:native("ImGuiNextItemData")
	static function create():ImGuiNextItemData;
	@:native("ClearFlags")
	function clearFlags():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiNavMoveResult") extern class ImGuiNavMoveResult {
	@:native("Window")
	var window : cpp.Star<ImGuiWindow>;
	@:native("ID")
	var iD : ImGuiID;
	@:native("FocusScopeId")
	var focusScopeId : ImGuiID;
	@:native("DistBox")
	var distBox : cpp.Float32;
	@:native("DistCenter")
	var distCenter : cpp.Float32;
	@:native("DistAxial")
	var distAxial : cpp.Float32;
	@:native("RectRel")
	var rectRel : ImRect;
	@:native("ImGuiNavMoveResult")
	static function create():ImGuiNavMoveResult;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiMenuColumns") extern class ImGuiMenuColumns {
	@:native("Spacing")
	var spacing : cpp.Float32;
	@:native("Width")
	var width : cpp.Float32;
	@:native("NextWidth")
	var nextWidth : cpp.Float32;
	@:native("Pos")
	var pos : imgui.FloatPointer;
	@:native("NextWidths")
	var nextWidths : imgui.FloatPointer;
	@:native("Update")
	function update(_count:Int, _spacing:cpp.Float32, _clear:Bool):cpp.Void;
	@:native("ImGuiMenuColumns")
	static function create():ImGuiMenuColumns;
	@:native("DeclColumns")
	function declColumns(_w0:cpp.Float32, _w1:cpp.Float32, _w2:cpp.Float32):cpp.Float32;
	@:native("CalcExtraSpace")
	function calcExtraSpace(_avail_w:cpp.Float32):cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiListClipper") extern class ImGuiListClipper {
	@:native("DisplayStart")
	var displayStart : Int;
	@:native("DisplayEnd")
	var displayEnd : Int;
	@:native("ItemsCount")
	var itemsCount : Int;
	@:native("StepNo")
	var stepNo : Int;
	@:native("ItemsHeight")
	var itemsHeight : cpp.Float32;
	@:native("StartPosY")
	var startPosY : cpp.Float32;
	@:native("Step")
	function step():Bool;
	@:native("ImGuiListClipper")
	@:overload(function(_items_height:cpp.Float32):ImGuiListClipper { })
	@:overload(function():ImGuiListClipper { })
	static function create(_items_count:Int, _items_height:cpp.Float32):ImGuiListClipper;
	@:native("End")
	function end():cpp.Void;
	@:native("Begin")
	@:overload(function(_items_count:Int):cpp.Void { })
	function begin(_items_count:Int, _items_height:cpp.Float32):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiItemHoveredDataBackup") extern class ImGuiItemHoveredDataBackup {
	@:native("LastItemId")
	var lastItemId : ImGuiID;
	@:native("LastItemStatusFlags")
	var lastItemStatusFlags : ImGuiItemStatusFlags;
	@:native("LastItemRect")
	var lastItemRect : ImRect;
	@:native("LastItemDisplayRect")
	var lastItemDisplayRect : ImRect;
	@:native("Restore")
	function restore():cpp.Void;
	@:native("ImGuiItemHoveredDataBackup")
	static function create():ImGuiItemHoveredDataBackup;
	@:native("Backup")
	function backup():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiInputTextState") extern class ImGuiInputTextState {
	@:native("ID")
	var iD : ImGuiID;
	@:native("CurLenW")
	var curLenW : Int;
	@:native("CurLenA")
	var curLenA : Int;
	@:native("TextW")
	var textW : ImVectorImWchar;
	@:native("TextA")
	var textA : ImVectorchar;
	@:native("InitialTextA")
	var initialTextA : ImVectorchar;
	@:native("TextAIsValid")
	var textAIsValid : Bool;
	@:native("BufCapacityA")
	var bufCapacityA : Int;
	@:native("ScrollX")
	var scrollX : cpp.Float32;
	@:native("CursorAnim")
	var cursorAnim : cpp.Float32;
	@:native("CursorFollow")
	var cursorFollow : Bool;
	@:native("SelectedAllMouseLock")
	var selectedAllMouseLock : Bool;
	@:native("UserFlags")
	var userFlags : ImGuiInputTextFlags;
	@:native("UserCallback")
	var userCallback : ImGuiInputTextCallback;
	@:native("UserCallbackData")
	var userCallbackData : imgui.VoidPointer;
	@:native("SelectAll")
	function selectAll():cpp.Void;
	@:native("OnKeyPressed")
	function onKeyPressed(_key:Int):cpp.Void;
	@:native("ImGuiInputTextState")
	static function create():ImGuiInputTextState;
	@:native("HasSelection")
	function hasSelection():Bool;
	@:native("GetUndoAvailCount")
	function getUndoAvailCount():Int;
	@:native("GetRedoAvailCount")
	function getRedoAvailCount():Int;
	@:native("CursorClamp")
	function cursorClamp():cpp.Void;
	@:native("CursorAnimReset")
	function cursorAnimReset():cpp.Void;
	@:native("ClearText")
	function clearText():cpp.Void;
	@:native("ClearSelection")
	function clearSelection():cpp.Void;
	@:native("ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiInputTextCallbackData") extern class ImGuiInputTextCallbackData {
	@:native("EventFlag")
	var eventFlag : ImGuiInputTextFlags;
	@:native("Flags")
	var flags : ImGuiInputTextFlags;
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("EventChar")
	var eventChar : ImWchar;
	@:native("EventKey")
	var eventKey : ImGuiKey;
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
	@:native("InsertChars")
	@:overload(function(_pos:Int, _text:imgui.utils.VarConstCharStar):cpp.Void { })
	function insertChars(_pos:Int, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGuiInputTextCallbackData")
	static function create():ImGuiInputTextCallbackData;
	@:native("HasSelection")
	function hasSelection():Bool;
	@:native("DeleteChars")
	function deleteChars(_pos:Int, _bytes_count:Int):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiIO") extern class ImGuiIO {
	@:native("ConfigFlags")
	var configFlags : ImGuiConfigFlags;
	@:native("BackendFlags")
	var backendFlags : ImGuiBackendFlags;
	@:native("DisplaySize")
	var displaySize : ImVec2;
	@:native("DeltaTime")
	var deltaTime : cpp.Float32;
	@:native("IniSavingRate")
	var iniSavingRate : cpp.Float32;
	@:native("IniFilename")
	var iniFilename : imgui.utils.VarConstCharStar;
	@:native("LogFilename")
	var logFilename : imgui.utils.VarConstCharStar;
	@:native("MouseDoubleClickTime")
	var mouseDoubleClickTime : cpp.Float32;
	@:native("MouseDoubleClickMaxDist")
	var mouseDoubleClickMaxDist : cpp.Float32;
	@:native("MouseDragThreshold")
	var mouseDragThreshold : cpp.Float32;
	@:native("KeyMap")
	var keyMap : imgui.IntPointer;
	@:native("KeyRepeatDelay")
	var keyRepeatDelay : cpp.Float32;
	@:native("KeyRepeatRate")
	var keyRepeatRate : cpp.Float32;
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("Fonts")
	var fonts : cpp.Star<ImFontAtlas>;
	@:native("FontGlobalScale")
	var fontGlobalScale : cpp.Float32;
	@:native("FontAllowUserScaling")
	var fontAllowUserScaling : Bool;
	@:native("FontDefault")
	var fontDefault : cpp.Star<ImFont>;
	@:native("DisplayFramebufferScale")
	var displayFramebufferScale : ImVec2;
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
	@:native("ConfigWindowsMemoryCompactTimer")
	var configWindowsMemoryCompactTimer : cpp.Float32;
	@:native("BackendPlatformName")
	var backendPlatformName : imgui.utils.VarConstCharStar;
	@:native("BackendRendererName")
	var backendRendererName : imgui.utils.VarConstCharStar;
	@:native("BackendPlatformUserData")
	var backendPlatformUserData : imgui.VoidPointer;
	@:native("BackendRendererUserData")
	var backendRendererUserData : imgui.VoidPointer;
	@:native("BackendLanguageUserData")
	var backendLanguageUserData : imgui.VoidPointer;
	@:native("GetClipboardTextFn")
	var getClipboardTextFn : cpp.Callable<cpp.Star<cpp.Void> -> imgui.utils.VarConstCharStar>;
	@:native("SetClipboardTextFn")
	var setClipboardTextFn : cpp.Callable<(cpp.Star<cpp.Void>, imgui.utils.VarConstCharStar) -> Void>;
	@:native("ClipboardUserData")
	var clipboardUserData : imgui.VoidPointer;
	@:native("ImeSetInputScreenPosFn")
	var imeSetInputScreenPosFn : cpp.Callable<(Int, Int) -> Void>;
	@:native("ImeWindowHandle")
	var imeWindowHandle : imgui.VoidPointer;
	@:native("RenderDrawListsFnUnused")
	var renderDrawListsFnUnused : imgui.VoidPointer;
	@:native("MousePos")
	var mousePos : ImVec2;
	@:native("MouseDown")
	var mouseDown : imgui.BoolPointer;
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
	var keysDown : imgui.BoolPointer;
	@:native("NavInputs")
	var navInputs : imgui.FloatPointer;
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
	var mouseDelta : ImVec2;
	@:native("KeyMods")
	var keyMods : ImGuiKeyModFlags;
	@:native("MousePosPrev")
	var mousePosPrev : ImVec2;
	@:native("MouseClickedPos")
	var mouseClickedPos : cpp.RawPointer<ImVec2>;
	@:native("MouseClickedTime")
	var mouseClickedTime : cpp.RawPointer<Float>;
	@:native("MouseClicked")
	var mouseClicked : imgui.BoolPointer;
	@:native("MouseDoubleClicked")
	var mouseDoubleClicked : imgui.BoolPointer;
	@:native("MouseReleased")
	var mouseReleased : imgui.BoolPointer;
	@:native("MouseDownOwned")
	var mouseDownOwned : imgui.BoolPointer;
	@:native("MouseDownWasDoubleClick")
	var mouseDownWasDoubleClick : imgui.BoolPointer;
	@:native("MouseDownDuration")
	var mouseDownDuration : imgui.FloatPointer;
	@:native("MouseDownDurationPrev")
	var mouseDownDurationPrev : imgui.FloatPointer;
	@:native("MouseDragMaxDistanceAbs")
	var mouseDragMaxDistanceAbs : cpp.RawPointer<ImVec2>;
	@:native("MouseDragMaxDistanceSqr")
	var mouseDragMaxDistanceSqr : imgui.FloatPointer;
	@:native("KeysDownDuration")
	var keysDownDuration : imgui.FloatPointer;
	@:native("KeysDownDurationPrev")
	var keysDownDurationPrev : imgui.FloatPointer;
	@:native("NavInputsDownDuration")
	var navInputsDownDuration : imgui.FloatPointer;
	@:native("NavInputsDownDurationPrev")
	var navInputsDownDurationPrev : imgui.FloatPointer;
	@:native("PenPressure")
	var penPressure : cpp.Float32;
	@:native("InputQueueSurrogate")
	var inputQueueSurrogate : ImWchar16;
	@:native("InputQueueCharacters")
	var inputQueueCharacters : ImVectorImWchar;
	@:native("ImGuiIO")
	static function create():ImGuiIO;
	@:native("ClearInputCharacters")
	function clearInputCharacters():cpp.Void;
	@:native("AddInputCharactersUTF8")
	function addInputCharactersUTF8(_str:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("AddInputCharacterUTF16")
	function addInputCharacterUTF16(_c:ImWchar16):cpp.Void;
	@:native("AddInputCharacter")
	function addInputCharacter(_c:UInt):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiGroupData") extern class ImGuiGroupData {
	@:native("BackupCursorPos")
	var backupCursorPos : ImVec2;
	@:native("BackupCursorMaxPos")
	var backupCursorMaxPos : ImVec2;
	@:native("BackupIndent")
	var backupIndent : ImVec1;
	@:native("BackupGroupOffset")
	var backupGroupOffset : ImVec1;
	@:native("BackupCurrLineSize")
	var backupCurrLineSize : ImVec2;
	@:native("BackupCurrLineTextBaseOffset")
	var backupCurrLineTextBaseOffset : cpp.Float32;
	@:native("BackupActiveIdIsAlive")
	var backupActiveIdIsAlive : ImGuiID;
	@:native("BackupActiveIdPreviousFrameIsAlive")
	var backupActiveIdPreviousFrameIsAlive : Bool;
	@:native("EmitItem")
	var emitItem : Bool;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiDataTypeTempStorage") extern class ImGuiDataTypeTempStorage {
	@:native("Data")
	var data : cpp.RawPointer<ImU8>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiDataTypeInfo") extern class ImGuiDataTypeInfo {
	@:native("Size")
	var size : cpp.SizeT;
	@:native("PrintFmt")
	var printFmt : imgui.utils.VarConstCharStar;
	@:native("ScanFmt")
	var scanFmt : imgui.utils.VarConstCharStar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiContext") extern class ImGuiContext {
	@:native("Initialized")
	var initialized : Bool;
	@:native("FontAtlasOwnedByContext")
	var fontAtlasOwnedByContext : Bool;
	@:native("IO")
	var iO : ImGuiIO;
	@:native("Style")
	var style : ImGuiStyle;
	@:native("Font")
	var font : cpp.Star<ImFont>;
	@:native("FontSize")
	var fontSize : cpp.Float32;
	@:native("FontBaseSize")
	var fontBaseSize : cpp.Float32;
	@:native("DrawListSharedData")
	var drawListSharedData : ImDrawListSharedData;
	@:native("Time")
	var time : Float;
	@:native("FrameCount")
	var frameCount : Int;
	@:native("FrameCountEnded")
	var frameCountEnded : Int;
	@:native("FrameCountRendered")
	var frameCountRendered : Int;
	@:native("WithinFrameScope")
	var withinFrameScope : Bool;
	@:native("WithinFrameScopeWithImplicitWindow")
	var withinFrameScopeWithImplicitWindow : Bool;
	@:native("WithinEndChild")
	var withinEndChild : Bool;
	@:native("TestEngineHookItems")
	var testEngineHookItems : Bool;
	@:native("TestEngineHookIdInfo")
	var testEngineHookIdInfo : ImGuiID;
	@:native("TestEngine")
	var testEngine : imgui.VoidPointer;
	@:native("Windows")
	var windows : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("WindowsFocusOrder")
	var windowsFocusOrder : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("WindowsTempSortBuffer")
	var windowsTempSortBuffer : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("CurrentWindowStack")
	var currentWindowStack : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("WindowsById")
	var windowsById : ImGuiStorage;
	@:native("WindowsActiveCount")
	var windowsActiveCount : Int;
	@:native("CurrentWindow")
	var currentWindow : cpp.Star<ImGuiWindow>;
	@:native("HoveredWindow")
	var hoveredWindow : cpp.Star<ImGuiWindow>;
	@:native("HoveredRootWindow")
	var hoveredRootWindow : cpp.Star<ImGuiWindow>;
	@:native("MovingWindow")
	var movingWindow : cpp.Star<ImGuiWindow>;
	@:native("WheelingWindow")
	var wheelingWindow : cpp.Star<ImGuiWindow>;
	@:native("WheelingWindowRefMousePos")
	var wheelingWindowRefMousePos : ImVec2;
	@:native("WheelingWindowTimer")
	var wheelingWindowTimer : cpp.Float32;
	@:native("HoveredId")
	var hoveredId : ImGuiID;
	@:native("HoveredIdAllowOverlap")
	var hoveredIdAllowOverlap : Bool;
	@:native("HoveredIdPreviousFrame")
	var hoveredIdPreviousFrame : ImGuiID;
	@:native("HoveredIdTimer")
	var hoveredIdTimer : cpp.Float32;
	@:native("HoveredIdNotActiveTimer")
	var hoveredIdNotActiveTimer : cpp.Float32;
	@:native("ActiveId")
	var activeId : ImGuiID;
	@:native("ActiveIdIsAlive")
	var activeIdIsAlive : ImGuiID;
	@:native("ActiveIdTimer")
	var activeIdTimer : cpp.Float32;
	@:native("ActiveIdIsJustActivated")
	var activeIdIsJustActivated : Bool;
	@:native("ActiveIdAllowOverlap")
	var activeIdAllowOverlap : Bool;
	@:native("ActiveIdHasBeenPressedBefore")
	var activeIdHasBeenPressedBefore : Bool;
	@:native("ActiveIdHasBeenEditedBefore")
	var activeIdHasBeenEditedBefore : Bool;
	@:native("ActiveIdHasBeenEditedThisFrame")
	var activeIdHasBeenEditedThisFrame : Bool;
	@:native("ActiveIdUsingNavDirMask")
	var activeIdUsingNavDirMask : ImU32;
	@:native("ActiveIdUsingNavInputMask")
	var activeIdUsingNavInputMask : ImU32;
	@:native("ActiveIdUsingKeyInputMask")
	var activeIdUsingKeyInputMask : ImU64;
	@:native("ActiveIdClickOffset")
	var activeIdClickOffset : ImVec2;
	@:native("ActiveIdWindow")
	var activeIdWindow : cpp.Star<ImGuiWindow>;
	@:native("ActiveIdSource")
	var activeIdSource : ImGuiInputSource;
	@:native("ActiveIdMouseButton")
	var activeIdMouseButton : Int;
	@:native("ActiveIdPreviousFrame")
	var activeIdPreviousFrame : ImGuiID;
	@:native("ActiveIdPreviousFrameIsAlive")
	var activeIdPreviousFrameIsAlive : Bool;
	@:native("ActiveIdPreviousFrameHasBeenEditedBefore")
	var activeIdPreviousFrameHasBeenEditedBefore : Bool;
	@:native("ActiveIdPreviousFrameWindow")
	var activeIdPreviousFrameWindow : cpp.Star<ImGuiWindow>;
	@:native("LastActiveId")
	var lastActiveId : ImGuiID;
	@:native("LastActiveIdTimer")
	var lastActiveIdTimer : cpp.Float32;
	@:native("NextWindowData")
	var nextWindowData : ImGuiNextWindowData;
	@:native("NextItemData")
	var nextItemData : ImGuiNextItemData;
	@:native("ColorModifiers")
	var colorModifiers : ImVectorImGuiColorMod;
	@:native("StyleModifiers")
	var styleModifiers : ImVectorImGuiStyleMod;
	@:native("FontStack")
	var fontStack : cpp.Star<ImVectorImFontPointer>;
	@:native("OpenPopupStack")
	var openPopupStack : ImVectorImGuiPopupData;
	@:native("BeginPopupStack")
	var beginPopupStack : ImVectorImGuiPopupData;
	@:native("NavWindow")
	var navWindow : cpp.Star<ImGuiWindow>;
	@:native("NavId")
	var navId : ImGuiID;
	@:native("NavFocusScopeId")
	var navFocusScopeId : ImGuiID;
	@:native("NavActivateId")
	var navActivateId : ImGuiID;
	@:native("NavActivateDownId")
	var navActivateDownId : ImGuiID;
	@:native("NavActivatePressedId")
	var navActivatePressedId : ImGuiID;
	@:native("NavInputId")
	var navInputId : ImGuiID;
	@:native("NavJustTabbedId")
	var navJustTabbedId : ImGuiID;
	@:native("NavJustMovedToId")
	var navJustMovedToId : ImGuiID;
	@:native("NavJustMovedToFocusScopeId")
	var navJustMovedToFocusScopeId : ImGuiID;
	@:native("NavJustMovedToKeyMods")
	var navJustMovedToKeyMods : ImGuiKeyModFlags;
	@:native("NavNextActivateId")
	var navNextActivateId : ImGuiID;
	@:native("NavInputSource")
	var navInputSource : ImGuiInputSource;
	@:native("NavScoringRect")
	var navScoringRect : ImRect;
	@:native("NavScoringCount")
	var navScoringCount : Int;
	@:native("NavLayer")
	var navLayer : ImGuiNavLayer;
	@:native("NavIdTabCounter")
	var navIdTabCounter : Int;
	@:native("NavIdIsAlive")
	var navIdIsAlive : Bool;
	@:native("NavMousePosDirty")
	var navMousePosDirty : Bool;
	@:native("NavDisableHighlight")
	var navDisableHighlight : Bool;
	@:native("NavDisableMouseHover")
	var navDisableMouseHover : Bool;
	@:native("NavAnyRequest")
	var navAnyRequest : Bool;
	@:native("NavInitRequest")
	var navInitRequest : Bool;
	@:native("NavInitRequestFromMove")
	var navInitRequestFromMove : Bool;
	@:native("NavInitResultId")
	var navInitResultId : ImGuiID;
	@:native("NavInitResultRectRel")
	var navInitResultRectRel : ImRect;
	@:native("NavMoveFromClampedRefRect")
	var navMoveFromClampedRefRect : Bool;
	@:native("NavMoveRequest")
	var navMoveRequest : Bool;
	@:native("NavMoveRequestFlags")
	var navMoveRequestFlags : ImGuiNavMoveFlags;
	@:native("NavMoveRequestForward")
	var navMoveRequestForward : ImGuiNavForward;
	@:native("NavMoveRequestKeyMods")
	var navMoveRequestKeyMods : ImGuiKeyModFlags;
	@:native("NavMoveDir")
	var navMoveDir : ImGuiDir;
	@:native("NavMoveDirLast")
	var navMoveDirLast : ImGuiDir;
	@:native("NavMoveClipDir")
	var navMoveClipDir : ImGuiDir;
	@:native("NavMoveResultLocal")
	var navMoveResultLocal : ImGuiNavMoveResult;
	@:native("NavMoveResultLocalVisibleSet")
	var navMoveResultLocalVisibleSet : ImGuiNavMoveResult;
	@:native("NavMoveResultOther")
	var navMoveResultOther : ImGuiNavMoveResult;
	@:native("NavWrapRequestWindow")
	var navWrapRequestWindow : cpp.Star<ImGuiWindow>;
	@:native("NavWrapRequestFlags")
	var navWrapRequestFlags : ImGuiNavMoveFlags;
	@:native("NavWindowingTarget")
	var navWindowingTarget : cpp.Star<ImGuiWindow>;
	@:native("NavWindowingTargetAnim")
	var navWindowingTargetAnim : cpp.Star<ImGuiWindow>;
	@:native("NavWindowingListWindow")
	var navWindowingListWindow : cpp.Star<ImGuiWindow>;
	@:native("NavWindowingTimer")
	var navWindowingTimer : cpp.Float32;
	@:native("NavWindowingHighlightAlpha")
	var navWindowingHighlightAlpha : cpp.Float32;
	@:native("NavWindowingToggleLayer")
	var navWindowingToggleLayer : Bool;
	@:native("FocusRequestCurrWindow")
	var focusRequestCurrWindow : cpp.Star<ImGuiWindow>;
	@:native("FocusRequestNextWindow")
	var focusRequestNextWindow : cpp.Star<ImGuiWindow>;
	@:native("FocusRequestCurrCounterRegular")
	var focusRequestCurrCounterRegular : Int;
	@:native("FocusRequestCurrCounterTabStop")
	var focusRequestCurrCounterTabStop : Int;
	@:native("FocusRequestNextCounterRegular")
	var focusRequestNextCounterRegular : Int;
	@:native("FocusRequestNextCounterTabStop")
	var focusRequestNextCounterTabStop : Int;
	@:native("FocusTabPressed")
	var focusTabPressed : Bool;
	@:native("DrawData")
	var drawData : ImDrawData;
	@:native("DrawDataBuilder")
	var drawDataBuilder : ImDrawDataBuilder;
	@:native("DimBgRatio")
	var dimBgRatio : cpp.Float32;
	@:native("BackgroundDrawList")
	var backgroundDrawList : ImDrawList;
	@:native("ForegroundDrawList")
	var foregroundDrawList : ImDrawList;
	@:native("MouseCursor")
	var mouseCursor : ImGuiMouseCursor;
	@:native("DragDropActive")
	var dragDropActive : Bool;
	@:native("DragDropWithinSource")
	var dragDropWithinSource : Bool;
	@:native("DragDropWithinTarget")
	var dragDropWithinTarget : Bool;
	@:native("DragDropSourceFlags")
	var dragDropSourceFlags : ImGuiDragDropFlags;
	@:native("DragDropSourceFrameCount")
	var dragDropSourceFrameCount : Int;
	@:native("DragDropMouseButton")
	var dragDropMouseButton : Int;
	@:native("DragDropPayload")
	var dragDropPayload : ImGuiPayload;
	@:native("DragDropTargetRect")
	var dragDropTargetRect : ImRect;
	@:native("DragDropTargetId")
	var dragDropTargetId : ImGuiID;
	@:native("DragDropAcceptFlags")
	var dragDropAcceptFlags : ImGuiDragDropFlags;
	@:native("DragDropAcceptIdCurrRectSurface")
	var dragDropAcceptIdCurrRectSurface : cpp.Float32;
	@:native("DragDropAcceptIdCurr")
	var dragDropAcceptIdCurr : ImGuiID;
	@:native("DragDropAcceptIdPrev")
	var dragDropAcceptIdPrev : ImGuiID;
	@:native("DragDropAcceptFrameCount")
	var dragDropAcceptFrameCount : Int;
	@:native("DragDropHoldJustPressedId")
	var dragDropHoldJustPressedId : ImGuiID;
	@:native("DragDropPayloadBufHeap")
	var dragDropPayloadBufHeap : ImVectorunsignedchar;
	@:native("DragDropPayloadBufLocal")
	var dragDropPayloadBufLocal : imgui.CharPointer;
	@:native("CurrentTabBar")
	var currentTabBar : cpp.Star<ImGuiTabBar>;
	@:native("TabBars")
	var tabBars : ImVectorImGuiTabBar;
	@:native("CurrentTabBarStack")
	var currentTabBarStack : ImVectorImGuiPtrOrIndex;
	@:native("ShrinkWidthBuffer")
	var shrinkWidthBuffer : ImVectorImGuiShrinkWidthItem;
	@:native("LastValidMousePos")
	var lastValidMousePos : ImVec2;
	@:native("InputTextState")
	var inputTextState : ImGuiInputTextState;
	@:native("InputTextPasswordFont")
	var inputTextPasswordFont : ImFont;
	@:native("TempInputId")
	var tempInputId : ImGuiID;
	@:native("ColorEditOptions")
	var colorEditOptions : ImGuiColorEditFlags;
	@:native("ColorEditLastHue")
	var colorEditLastHue : cpp.Float32;
	@:native("ColorEditLastSat")
	var colorEditLastSat : cpp.Float32;
	@:native("ColorEditLastColor")
	var colorEditLastColor : imgui.FloatPointer;
	@:native("ColorPickerRef")
	var colorPickerRef : ImVec4;
	@:native("DragCurrentAccumDirty")
	var dragCurrentAccumDirty : Bool;
	@:native("DragCurrentAccum")
	var dragCurrentAccum : cpp.Float32;
	@:native("DragSpeedDefaultRatio")
	var dragSpeedDefaultRatio : cpp.Float32;
	@:native("ScrollbarClickDeltaToGrabCenter")
	var scrollbarClickDeltaToGrabCenter : cpp.Float32;
	@:native("TooltipOverrideCount")
	var tooltipOverrideCount : Int;
	@:native("ClipboardHandlerData")
	var clipboardHandlerData : ImVectorchar;
	@:native("MenusIdSubmittedThisFrame")
	var menusIdSubmittedThisFrame : ImVectorImGuiID;
	@:native("PlatformImePos")
	var platformImePos : ImVec2;
	@:native("PlatformImeLastPos")
	var platformImeLastPos : ImVec2;
	@:native("SettingsLoaded")
	var settingsLoaded : Bool;
	@:native("SettingsDirtyTimer")
	var settingsDirtyTimer : cpp.Float32;
	@:native("SettingsIniData")
	var settingsIniData : ImGuiTextBuffer;
	@:native("SettingsHandlers")
	var settingsHandlers : ImVectorImGuiSettingsHandler;
	@:native("SettingsWindows")
	var settingsWindows : ImVectorImGuiWindowSettings;
	@:native("LogEnabled")
	var logEnabled : Bool;
	@:native("LogType")
	var logType : ImGuiLogType;
	@:native("LogFile")
	var logFile : ImFileHandle;
	@:native("LogBuffer")
	var logBuffer : ImGuiTextBuffer;
	@:native("LogLinePosY")
	var logLinePosY : cpp.Float32;
	@:native("LogLineFirstItem")
	var logLineFirstItem : Bool;
	@:native("LogDepthRef")
	var logDepthRef : Int;
	@:native("LogDepthToExpand")
	var logDepthToExpand : Int;
	@:native("LogDepthToExpandDefault")
	var logDepthToExpandDefault : Int;
	@:native("DebugItemPickerActive")
	var debugItemPickerActive : Bool;
	@:native("DebugItemPickerBreakId")
	var debugItemPickerBreakId : ImGuiID;
	@:native("FramerateSecPerFrame")
	var framerateSecPerFrame : imgui.FloatPointer;
	@:native("FramerateSecPerFrameIdx")
	var framerateSecPerFrameIdx : Int;
	@:native("FramerateSecPerFrameAccum")
	var framerateSecPerFrameAccum : cpp.Float32;
	@:native("WantCaptureMouseNextFrame")
	var wantCaptureMouseNextFrame : Int;
	@:native("WantCaptureKeyboardNextFrame")
	var wantCaptureKeyboardNextFrame : Int;
	@:native("WantTextInputNextFrame")
	var wantTextInputNextFrame : Int;
	@:native("TempBuffer")
	var tempBuffer : cpp.RawPointer<cpp.Int8>;
	@:native("ImGuiContext")
	static function create(_shared_font_atlas:cpp.Star<ImFontAtlas>):ImGuiContext;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiColumns") extern class ImGuiColumns {
	@:native("ID")
	var iD : ImGuiID;
	@:native("Flags")
	var flags : ImGuiColumnsFlags;
	@:native("IsFirstFrame")
	var isFirstFrame : Bool;
	@:native("IsBeingResized")
	var isBeingResized : Bool;
	@:native("Current")
	var current : Int;
	@:native("Count")
	var count : Int;
	@:native("OffMinX")
	var offMinX : cpp.Float32;
	@:native("OffMaxX")
	var offMaxX : cpp.Float32;
	@:native("LineMinY")
	var lineMinY : cpp.Float32;
	@:native("LineMaxY")
	var lineMaxY : cpp.Float32;
	@:native("HostCursorPosY")
	var hostCursorPosY : cpp.Float32;
	@:native("HostCursorMaxPosX")
	var hostCursorMaxPosX : cpp.Float32;
	@:native("HostInitialClipRect")
	var hostInitialClipRect : ImRect;
	@:native("HostBackupClipRect")
	var hostBackupClipRect : ImRect;
	@:native("HostWorkRect")
	var hostWorkRect : ImRect;
	@:native("Columns")
	var columns : ImVectorImGuiColumnData;
	@:native("Splitter")
	var splitter : ImDrawListSplitter;
	@:native("ImGuiColumns")
	static function create():ImGuiColumns;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiColumnData") extern class ImGuiColumnData {
	@:native("OffsetNorm")
	var offsetNorm : cpp.Float32;
	@:native("OffsetNormBeforeResize")
	var offsetNormBeforeResize : cpp.Float32;
	@:native("Flags")
	var flags : ImGuiColumnsFlags;
	@:native("ClipRect")
	var clipRect : ImRect;
	@:native("ImGuiColumnData")
	static function create():ImGuiColumnData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiColorMod") extern class ImGuiColorMod {
	@:native("Col")
	var col : ImGuiCol;
	@:native("BackupValue")
	var backupValue : ImVec4;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontGlyphRangesBuilder") extern class ImFontGlyphRangesBuilder {
	@:native("UsedChars")
	var usedChars : ImVectorImU32;
	@:native("SetBit")
	function setBit(_n:cpp.SizeT):cpp.Void;
	@:native("ImFontGlyphRangesBuilder")
	static function create():ImFontGlyphRangesBuilder;
	@:native("GetBit")
	function getBit(_n:cpp.SizeT):Bool;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("BuildRanges")
	function buildRanges(_out_ranges:ImVectorImWcharPointer):cpp.Void;
	@:native("AddText")
	@:overload(function(_text:imgui.utils.VarConstCharStar):cpp.Void { })
	function addText(_text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("AddRanges")
	function addRanges(_ranges:cpp.Star<ImWchar>):cpp.Void;
	@:native("AddChar")
	function addChar(_c:ImWchar):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontGlyph") extern class ImFontGlyph {
	@:native("Codepoint")
	var codepoint : UInt;
	@:native("Visible")
	var visible : UInt;
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
	var glyphExtraSpacing : ImVec2;
	@:native("GlyphOffset")
	var glyphOffset : ImVec2;
	@:native("GlyphRanges")
	var glyphRanges : cpp.Star<ImWchar>;
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
	@:native("EllipsisChar")
	var ellipsisChar : ImWchar;
	@:native("Name")
	var name : cpp.RawPointer<cpp.Int8>;
	@:native("DstFont")
	var dstFont : cpp.Star<ImFont>;
	@:native("ImFontConfig")
	static function create():ImFontConfig;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontAtlasCustomRect") extern class ImFontAtlasCustomRect {
	@:native("Width")
	var width : cpp.UInt16;
	@:native("Height")
	var height : cpp.UInt16;
	@:native("X")
	var x : cpp.UInt16;
	@:native("Y")
	var y : cpp.UInt16;
	@:native("GlyphID")
	var glyphID : UInt;
	@:native("GlyphAdvanceX")
	var glyphAdvanceX : cpp.Float32;
	@:native("GlyphOffset")
	var glyphOffset : ImVec2;
	@:native("Font")
	var font : cpp.Star<ImFont>;
	@:native("IsPacked")
	function isPacked():Bool;
	@:native("ImFontAtlasCustomRect")
	static function create():ImFontAtlasCustomRect;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontAtlas") extern class ImFontAtlas {
	@:native("Locked")
	var locked : Bool;
	@:native("Flags")
	var flags : ImFontAtlasFlags;
	@:native("TexID")
	var texID : ImTextureID;
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
	var texUvScale : ImVec2;
	@:native("TexUvWhitePixel")
	var texUvWhitePixel : ImVec2;
	@:native("Fonts")
	var fonts : cpp.Star<ImVectorImFontPointer>;
	@:native("CustomRects")
	var customRects : ImVectorImFontAtlasCustomRect;
	@:native("ConfigData")
	var configData : ImVectorImFontConfig;
	@:native("CustomRectIds")
	var customRectIds : imgui.IntPointer;
	@:native("SetTexID")
	function setTexID(_id:ImTextureID):cpp.Void;
	@:native("IsBuilt")
	function isBuilt():Bool;
	@:native("ImFontAtlas")
	static function create():ImFontAtlas;
	@:native("GetTexDataAsRGBA32")
	@:overload(function(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:imgui.IntPointer, _out_height:imgui.IntPointer):cpp.Void { })
	function getTexDataAsRGBA32(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:imgui.IntPointer, _out_height:imgui.IntPointer, _out_bytes_per_pixel:imgui.IntPointer):cpp.Void;
	@:native("GetTexDataAsAlpha8")
	@:overload(function(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:imgui.IntPointer, _out_height:imgui.IntPointer):cpp.Void { })
	function getTexDataAsAlpha8(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:imgui.IntPointer, _out_height:imgui.IntPointer, _out_bytes_per_pixel:imgui.IntPointer):cpp.Void;
	@:native("GetMouseCursorTexData")
	function getMouseCursorTexData(_cursor:ImGuiMouseCursor, _out_offset:cpp.Star<ImVec2>, _out_size:cpp.Star<ImVec2>, _out_uv_border:cpp.RawPointer<ImVec2>, _out_uv_fill:cpp.RawPointer<ImVec2>):Bool;
	@:native("GetGlyphRangesVietnamese")
	function getGlyphRangesVietnamese():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesThai")
	function getGlyphRangesThai():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesKorean")
	function getGlyphRangesKorean():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesJapanese")
	function getGlyphRangesJapanese():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesDefault")
	function getGlyphRangesDefault():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesCyrillic")
	function getGlyphRangesCyrillic():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesChineseSimplifiedCommon")
	function getGlyphRangesChineseSimplifiedCommon():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesChineseFull")
	function getGlyphRangesChineseFull():cpp.Star<ImWchar>;
	@:native("GetCustomRectByIndex")
	function getCustomRectByIndex(_index:Int):cpp.Star<ImFontAtlasCustomRect>;
	@:native("ClearTexData")
	function clearTexData():cpp.Void;
	@:native("ClearInputData")
	function clearInputData():cpp.Void;
	@:native("ClearFonts")
	function clearFonts():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("CalcCustomRectUV")
	function calcCustomRectUV(_rect:cpp.Star<ImFontAtlasCustomRect>, _out_uv_min:cpp.Star<ImVec2>, _out_uv_max:cpp.Star<ImVec2>):cpp.Void;
	@:native("Build")
	function build():Bool;
	@:native("AddFontFromMemoryTTF")
	@:overload(function(_font_data:imgui.VoidPointer, _font_size:Int, _size_pixels:cpp.Float32, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(_font_data:imgui.VoidPointer, _font_size:Int, _size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromMemoryTTF(_font_data:imgui.VoidPointer, _font_size:Int, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<ImFontConfig>, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontFromMemoryCompressedTTF")
	@:overload(function(_compressed_font_data:imgui.VoidPointer, _compressed_font_size:Int, _size_pixels:cpp.Float32, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(_compressed_font_data:imgui.VoidPointer, _compressed_font_size:Int, _size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromMemoryCompressedTTF(_compressed_font_data:imgui.VoidPointer, _compressed_font_size:Int, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<ImFontConfig>, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontFromMemoryCompressedBase85TTF")
	@:overload(function(_compressed_font_data_base85:imgui.utils.VarConstCharStar, _size_pixels:cpp.Float32, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(_compressed_font_data_base85:imgui.utils.VarConstCharStar, _size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromMemoryCompressedBase85TTF(_compressed_font_data_base85:imgui.utils.VarConstCharStar, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<ImFontConfig>, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontFromFileTTF")
	@:overload(function(_filename:imgui.utils.VarConstCharStar, _size_pixels:cpp.Float32, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(_filename:imgui.utils.VarConstCharStar, _size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromFileTTF(_filename:imgui.utils.VarConstCharStar, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<ImFontConfig>, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontDefault")
	@:overload(function():cpp.Star<ImFont> { })
	function addFontDefault(_font_cfg:cpp.Star<ImFontConfig>):cpp.Star<ImFont>;
	@:native("AddFont")
	function addFont(_font_cfg:cpp.Star<ImFontConfig>):cpp.Star<ImFont>;
	@:native("AddCustomRectRegular")
	function addCustomRectRegular(_width:Int, _height:Int):Int;
	@:native("AddCustomRectFontGlyph")
	@:overload(function(_font:cpp.Star<ImFont>, _id:ImWchar, _width:Int, _height:Int, _advance_x:cpp.Float32):Int { })
	function addCustomRectFontGlyph(_font:cpp.Star<ImFont>, _id:ImWchar, _width:Int, _height:Int, _advance_x:cpp.Float32, _offset:ImVec2):Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFont") extern class ImFont {
	@:native("IndexAdvanceX")
	var indexAdvanceX : ImVectorfloat;
	@:native("FallbackAdvanceX")
	var fallbackAdvanceX : cpp.Float32;
	@:native("FontSize")
	var fontSize : cpp.Float32;
	@:native("IndexLookup")
	var indexLookup : ImVectorImWchar;
	@:native("Glyphs")
	var glyphs : ImVectorImFontGlyph;
	@:native("FallbackGlyph")
	var fallbackGlyph : cpp.Star<ImFontGlyph>;
	@:native("DisplayOffset")
	var displayOffset : ImVec2;
	@:native("ContainerAtlas")
	var containerAtlas : cpp.Star<ImFontAtlas>;
	@:native("ConfigData")
	var configData : cpp.Star<ImFontConfig>;
	@:native("ConfigDataCount")
	var configDataCount : cpp.Int16;
	@:native("FallbackChar")
	var fallbackChar : ImWchar;
	@:native("EllipsisChar")
	var ellipsisChar : ImWchar;
	@:native("DirtyLookupTables")
	var dirtyLookupTables : Bool;
	@:native("Scale")
	var scale : cpp.Float32;
	@:native("Ascent")
	var ascent : cpp.Float32;
	@:native("Descent")
	var descent : cpp.Float32;
	@:native("MetricsTotalSurface")
	var metricsTotalSurface : Int;
	@:native("Used4kPagesMap")
	var used4kPagesMap : cpp.RawPointer<ImU8>;
	@:native("SetGlyphVisible")
	function setGlyphVisible(_c:ImWchar, _visible:Bool):cpp.Void;
	@:native("SetFallbackChar")
	function setFallbackChar(_c:ImWchar):cpp.Void;
	@:native("RenderText")
	@:overload(function(_draw_list:cpp.Star<ImDrawList>, _size:cpp.Float32, _pos:ImVec2, _col:ImU32, _clip_rect:ImVec4, _text_begin:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_draw_list:cpp.Star<ImDrawList>, _size:cpp.Float32, _pos:ImVec2, _col:ImU32, _clip_rect:ImVec4, _text_begin:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):cpp.Void { })
	function renderText(_draw_list:cpp.Star<ImDrawList>, _size:cpp.Float32, _pos:ImVec2, _col:ImU32, _clip_rect:ImVec4, _text_begin:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _wrap_width:cpp.Float32, _cpu_fine_clip:Bool):cpp.Void;
	@:native("RenderChar")
	function renderChar(_draw_list:cpp.Star<ImDrawList>, _size:cpp.Float32, _pos:ImVec2, _col:ImU32, _c:ImWchar):cpp.Void;
	@:native("IsLoaded")
	function isLoaded():Bool;
	@:native("IsGlyphRangeUnused")
	function isGlyphRangeUnused(_c_begin:UInt, _c_last:UInt):Bool;
	@:native("ImFont")
	static function create():ImFont;
	@:native("GrowIndex")
	function growIndex(_new_size:Int):cpp.Void;
	@:native("GetDebugName")
	function getDebugName():imgui.utils.VarConstCharStar;
	@:native("GetCharAdvance")
	function getCharAdvance(_c:ImWchar):cpp.Float32;
	@:native("FindGlyphNoFallback")
	function findGlyphNoFallback(_c:ImWchar):cpp.Star<ImFontGlyph>;
	@:native("FindGlyph")
	function findGlyph(_c:ImWchar):cpp.Star<ImFontGlyph>;
	@:native("ClearOutputData")
	function clearOutputData():cpp.Void;
	@:native("CalcWordWrapPositionA")
	function calcWordWrapPositionA(_scale:cpp.Float32, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _wrap_width:cpp.Float32):imgui.utils.VarConstCharStar;
	@:native("CalcTextSizeA")
	@:overload(function(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImFont>, _size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImFont>, _size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:imgui.utils.VarConstCharStar):cpp.Void { })
	function calcTextSizeA(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImFont>, _size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _remaining:cpp.Star<cpp.RawConstPointer<cpp.Int8>>):cpp.Void;
	@:native("BuildLookupTable")
	function buildLookupTable():cpp.Void;
	@:native("AddRemapChar")
	@:overload(function(_dst:ImWchar, _src:ImWchar):cpp.Void { })
	function addRemapChar(_dst:ImWchar, _src:ImWchar, _overwrite_dst:Bool):cpp.Void;
	@:native("AddGlyph")
	function addGlyph(_c:ImWchar, _x0:cpp.Float32, _y0:cpp.Float32, _x1:cpp.Float32, _y1:cpp.Float32, _u0:cpp.Float32, _v0:cpp.Float32, _u1:cpp.Float32, _v1:cpp.Float32, _advance_x:cpp.Float32):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawVert") extern class ImDrawVert {
	@:native("pos")
	var pos : ImVec2;
	@:native("uv")
	var uv : ImVec2;
	@:native("col")
	var col : ImU32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawListSplitter") extern class ImDrawListSplitter {
	@:native("_Current")
	var _Current : Int;
	@:native("_Count")
	var _Count : Int;
	@:native("_Channels")
	var _Channels : ImVectorImDrawChannel;
	@:native("Split")
	function split(_draw_list:cpp.Star<ImDrawList>, _count:Int):cpp.Void;
	@:native("SetCurrentChannel")
	function setCurrentChannel(_draw_list:cpp.Star<ImDrawList>, _channel_idx:Int):cpp.Void;
	@:native("Merge")
	function merge(_draw_list:cpp.Star<ImDrawList>):cpp.Void;
	@:native("ImDrawListSplitter")
	static function create():ImDrawListSplitter;
	@:native("ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawListSharedData") extern class ImDrawListSharedData {
	@:native("TexUvWhitePixel")
	var texUvWhitePixel : ImVec2;
	@:native("Font")
	var font : cpp.Star<ImFont>;
	@:native("FontSize")
	var fontSize : cpp.Float32;
	@:native("CurveTessellationTol")
	var curveTessellationTol : cpp.Float32;
	@:native("CircleSegmentMaxError")
	var circleSegmentMaxError : cpp.Float32;
	@:native("ClipRectFullscreen")
	var clipRectFullscreen : ImVec4;
	@:native("InitialFlags")
	var initialFlags : ImDrawListFlags;
	@:native("ArcFastVtx")
	var arcFastVtx : cpp.RawPointer<ImVec2>;
	@:native("CircleSegmentCounts")
	var circleSegmentCounts : cpp.RawPointer<ImU8>;
	@:native("SetCircleSegmentMaxError")
	function setCircleSegmentMaxError(_max_error:cpp.Float32):cpp.Void;
	@:native("ImDrawListSharedData")
	static function create():ImDrawListSharedData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawList") extern class ImDrawList {
	@:native("CmdBuffer")
	var cmdBuffer : ImVectorImDrawCmd;
	@:native("IdxBuffer")
	var idxBuffer : ImVectorImDrawIdx;
	@:native("VtxBuffer")
	var vtxBuffer : ImVectorImDrawVert;
	@:native("Flags")
	var flags : ImDrawListFlags;
	@:native("_Data")
	var _Data : cpp.Star<ImDrawListSharedData>;
	@:native("_OwnerName")
	var _OwnerName : imgui.utils.VarConstCharStar;
	@:native("_VtxCurrentIdx")
	var _VtxCurrentIdx : UInt;
	@:native("_VtxWritePtr")
	var _VtxWritePtr : cpp.Star<ImDrawVert>;
	@:native("_IdxWritePtr")
	var _IdxWritePtr : cpp.Star<ImDrawIdx>;
	@:native("_ClipRectStack")
	var _ClipRectStack : ImVectorImVec4;
	@:native("_TextureIdStack")
	var _TextureIdStack : ImVectorImTextureID;
	@:native("_Path")
	var _Path : ImVectorImVec2;
	@:native("_CmdHeader")
	var _CmdHeader : ImDrawCmd;
	@:native("_Splitter")
	var _Splitter : ImDrawListSplitter;
	@:native("_ResetForNewFrame")
	function _ResetForNewFrame():cpp.Void;
	@:native("_PopUnusedDrawCmd")
	function _PopUnusedDrawCmd():cpp.Void;
	@:native("_OnChangedVtxOffset")
	function _OnChangedVtxOffset():cpp.Void;
	@:native("_OnChangedTextureID")
	function _OnChangedTextureID():cpp.Void;
	@:native("_OnChangedClipRect")
	function _OnChangedClipRect():cpp.Void;
	@:native("_ClearFreeMemory")
	function _ClearFreeMemory():cpp.Void;
	@:native("PushTextureID")
	function pushTextureID(_texture_id:ImTextureID):cpp.Void;
	@:native("PushClipRectFullScreen")
	function pushClipRectFullScreen():cpp.Void;
	@:native("PushClipRect")
	@:overload(function(_clip_rect_min:ImVec2, _clip_rect_max:ImVec2):cpp.Void { })
	function pushClipRect(_clip_rect_min:ImVec2, _clip_rect_max:ImVec2, _intersect_with_current_clip_rect:Bool):cpp.Void;
	@:native("PrimWriteVtx")
	function primWriteVtx(_pos:ImVec2, _uv:ImVec2, _col:ImU32):cpp.Void;
	@:native("PrimWriteIdx")
	function primWriteIdx(_idx:ImDrawIdx):cpp.Void;
	@:native("PrimVtx")
	function primVtx(_pos:ImVec2, _uv:ImVec2, _col:ImU32):cpp.Void;
	@:native("PrimUnreserve")
	function primUnreserve(_idx_count:Int, _vtx_count:Int):cpp.Void;
	@:native("PrimReserve")
	function primReserve(_idx_count:Int, _vtx_count:Int):cpp.Void;
	@:native("PrimRectUV")
	function primRectUV(_a:ImVec2, _b:ImVec2, _uv_a:ImVec2, _uv_b:ImVec2, _col:ImU32):cpp.Void;
	@:native("PrimRect")
	function primRect(_a:ImVec2, _b:ImVec2, _col:ImU32):cpp.Void;
	@:native("PrimQuadUV")
	function primQuadUV(_a:ImVec2, _b:ImVec2, _c:ImVec2, _d:ImVec2, _uv_a:ImVec2, _uv_b:ImVec2, _uv_c:ImVec2, _uv_d:ImVec2, _col:ImU32):cpp.Void;
	@:native("PopTextureID")
	function popTextureID():cpp.Void;
	@:native("PopClipRect")
	function popClipRect():cpp.Void;
	@:native("PathStroke")
	@:overload(function(_col:ImU32, _closed:Bool):cpp.Void { })
	function pathStroke(_col:ImU32, _closed:Bool, _thickness:cpp.Float32):cpp.Void;
	@:native("PathRect")
	@:overload(function(_rect_min:ImVec2, _rect_max:ImVec2, _rounding_corners:ImDrawCornerFlags):cpp.Void { })
	@:overload(function(_rect_min:ImVec2, _rect_max:ImVec2):cpp.Void { })
	function pathRect(_rect_min:ImVec2, _rect_max:ImVec2, _rounding:cpp.Float32, _rounding_corners:ImDrawCornerFlags):cpp.Void;
	@:native("PathLineToMergeDuplicate")
	function pathLineToMergeDuplicate(_pos:ImVec2):cpp.Void;
	@:native("PathLineTo")
	function pathLineTo(_pos:ImVec2):cpp.Void;
	@:native("PathFillConvex")
	function pathFillConvex(_col:ImU32):cpp.Void;
	@:native("PathClear")
	function pathClear():cpp.Void;
	@:native("PathBezierCurveTo")
	@:overload(function(_p2:ImVec2, _p3:ImVec2, _p4:ImVec2):cpp.Void { })
	function pathBezierCurveTo(_p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _num_segments:Int):cpp.Void;
	@:native("PathArcToFast")
	function pathArcToFast(_center:ImVec2, _radius:cpp.Float32, _a_min_of_12:Int, _a_max_of_12:Int):cpp.Void;
	@:native("PathArcTo")
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _a_min:cpp.Float32, _a_max:cpp.Float32):cpp.Void { })
	function pathArcTo(_center:ImVec2, _radius:cpp.Float32, _a_min:cpp.Float32, _a_max:cpp.Float32, _num_segments:Int):cpp.Void;
	@:native("ImDrawList")
	static function create(_shared_data:cpp.Star<ImDrawListSharedData>):ImDrawList;
	@:native("GetClipRectMin")
	function getClipRectMin(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImDrawList>):cpp.Void;
	@:native("GetClipRectMax")
	function getClipRectMax(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImDrawList>):cpp.Void;
	@:native("CloneOutput")
	function cloneOutput():cpp.Star<ImDrawList>;
	@:native("ChannelsSplit")
	function channelsSplit(_count:Int):cpp.Void;
	@:native("ChannelsSetCurrent")
	function channelsSetCurrent(_n:Int):cpp.Void;
	@:native("ChannelsMerge")
	function channelsMerge():cpp.Void;
	@:native("AddTriangleFilled")
	function addTriangleFilled(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _col:ImU32):cpp.Void;
	@:native("AddTriangle")
	@:overload(function(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _col:ImU32):cpp.Void { })
	function addTriangle(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void;
	@:native("AddText")
	@:overload(function(_pos:ImVec2, _col:ImU32, _text_begin:imgui.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(_font:cpp.Star<ImFont>, _font_size:cpp.Float32, _pos:ImVec2, _col:ImU32, _text_begin:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _wrap_width:cpp.Float32, _cpu_fine_clip_rect:cpp.Star<ImVec4>):cpp.Void { })
	@:overload(function(_font:cpp.Star<ImFont>, _font_size:cpp.Float32, _pos:ImVec2, _col:ImU32, _text_begin:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_font:cpp.Star<ImFont>, _font_size:cpp.Float32, _pos:ImVec2, _col:ImU32, _text_begin:imgui.utils.VarConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_font:cpp.Star<ImFont>, _font_size:cpp.Float32, _pos:ImVec2, _col:ImU32, _text_begin:imgui.utils.VarConstCharStar):cpp.Void { })
	function addText(_pos:ImVec2, _col:ImU32, _text_begin:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("AddRectFilledMultiColor")
	function addRectFilledMultiColor(_p_min:ImVec2, _p_max:ImVec2, _col_upr_left:ImU32, _col_upr_right:ImU32, _col_bot_right:ImU32, _col_bot_left:ImU32):cpp.Void;
	@:native("AddRectFilled")
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _rounding_corners:ImDrawCornerFlags):cpp.Void { })
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32):cpp.Void { })
	function addRectFilled(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _rounding:cpp.Float32, _rounding_corners:ImDrawCornerFlags):cpp.Void;
	@:native("AddRect")
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _rounding_corners:ImDrawCornerFlags, _thickness:cpp.Float32):cpp.Void { })
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void { })
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32):cpp.Void { })
	function addRect(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _rounding:cpp.Float32, _rounding_corners:ImDrawCornerFlags, _thickness:cpp.Float32):cpp.Void;
	@:native("AddQuadFilled")
	function addQuadFilled(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32):cpp.Void;
	@:native("AddQuad")
	@:overload(function(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32):cpp.Void { })
	function addQuad(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void;
	@:native("AddPolyline")
	function addPolyline(_points:cpp.Star<ImVec2>, _num_points:Int, _col:ImU32, _closed:Bool, _thickness:cpp.Float32):cpp.Void;
	@:native("AddNgonFilled")
	function addNgonFilled(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int):cpp.Void;
	@:native("AddNgon")
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int):cpp.Void { })
	function addNgon(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int, _thickness:cpp.Float32):cpp.Void;
	@:native("AddLine")
	@:overload(function(_p1:ImVec2, _p2:ImVec2, _col:ImU32):cpp.Void { })
	function addLine(_p1:ImVec2, _p2:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void;
	@:native("AddImageRounded")
	@:overload(function(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2, _uv_max:ImVec2, _col:ImU32, _rounding:cpp.Float32):cpp.Void { })
	function addImageRounded(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2, _uv_max:ImVec2, _col:ImU32, _rounding:cpp.Float32, _rounding_corners:ImDrawCornerFlags):cpp.Void;
	@:native("AddImageQuad")
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv1:ImVec2, _uv2:ImVec2, _uv3:ImVec2, _uv4:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv2:ImVec2, _uv3:ImVec2, _uv4:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv3:ImVec2, _uv4:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv4:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2):cpp.Void { })
	function addImageQuad(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv1:ImVec2, _uv2:ImVec2, _uv3:ImVec2, _uv4:ImVec2, _col:ImU32):cpp.Void;
	@:native("AddImage")
	@:overload(function(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2, _uv_max:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2):cpp.Void { })
	function addImage(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2, _uv_max:ImVec2, _col:ImU32):cpp.Void;
	@:native("AddDrawCmd")
	function addDrawCmd():cpp.Void;
	@:native("AddConvexPolyFilled")
	function addConvexPolyFilled(_points:cpp.Star<ImVec2>, _num_points:Int, _col:ImU32):cpp.Void;
	@:native("AddCircleFilled")
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _col:ImU32):cpp.Void { })
	function addCircleFilled(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int):cpp.Void;
	@:native("AddCircle")
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _thickness:cpp.Float32):cpp.Void { })
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _col:ImU32):cpp.Void { })
	function addCircle(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int, _thickness:cpp.Float32):cpp.Void;
	@:native("AddCallback")
	function addCallback(_callback:ImDrawCallback, _callback_data:imgui.VoidPointer):cpp.Void;
	@:native("AddBezierCurve")
	@:overload(function(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void { })
	function addBezierCurve(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32, _thickness:cpp.Float32, _num_segments:Int):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawDataBuilder") extern class ImDrawDataBuilder {
	@:native("Layers")
	var layers : cpp.Star<ImVectorImDrawListPointer>;
	@:native("FlattenIntoSingleLayer")
	function flattenIntoSingleLayer():cpp.Void;
	@:native("ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawData") extern class ImDrawData {
	@:native("Valid")
	var valid : Bool;
	@:native("CmdLists")
	var cmdLists : cpp.RawPointer<cpp.Star<ImDrawList>>;
	@:native("CmdListsCount")
	var cmdListsCount : Int;
	@:native("TotalIdxCount")
	var totalIdxCount : Int;
	@:native("TotalVtxCount")
	var totalVtxCount : Int;
	@:native("DisplayPos")
	var displayPos : ImVec2;
	@:native("DisplaySize")
	var displaySize : ImVec2;
	@:native("FramebufferScale")
	var framebufferScale : ImVec2;
	@:native("ScaleClipRects")
	function scaleClipRects(_fb_scale:ImVec2):cpp.Void;
	@:native("ImDrawData")
	static function create():ImDrawData;
	@:native("DeIndexAllBuffers")
	function deIndexAllBuffers():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawCmd") extern class ImDrawCmd {
	@:native("ClipRect")
	var clipRect : ImVec4;
	@:native("TextureId")
	var textureId : ImTextureID;
	@:native("VtxOffset")
	var vtxOffset : UInt;
	@:native("IdxOffset")
	var idxOffset : UInt;
	@:native("ElemCount")
	var elemCount : UInt;
	@:native("UserCallback")
	var userCallback : ImDrawCallback;
	@:native("UserCallbackData")
	var userCallbackData : imgui.VoidPointer;
	@:native("ImDrawCmd")
	static function create():ImDrawCmd;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawChannel") extern class ImDrawChannel {
	@:native("_CmdBuffer")
	var _CmdBuffer : ImVectorImDrawCmd;
	@:native("_IdxBuffer")
	var _IdxBuffer : ImVectorImDrawIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImColor") extern class ImColor {
	@:native("Value")
	var value : ImVec4;
	@:native("SetHSV")
	@:overload(function(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32):cpp.Void { })
	function setHSV(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):cpp.Void;
	@:native("ImColor")
	@:overload(function(_r:Int, _g:Int, _b:Int, _a:Int):ImColor { })
	@:overload(function(_r:Int, _g:Int, _b:Int):ImColor { })
	@:overload(function(_rgba:ImU32):ImColor { })
	@:overload(function(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32, _a:cpp.Float32):ImColor { })
	@:overload(function(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32):ImColor { })
	@:overload(function(_col:ImVec4):ImColor { })
	static function create():ImColor;
	@:native("HSV")
	@:overload(function(_pOut:cpp.Star<ImColor>, _self:cpp.Star<ImColor>, _h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32):cpp.Void { })
	function hSV(_pOut:cpp.Star<ImColor>, _self:cpp.Star<ImColor>, _h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImBitVector") extern class ImBitVector {
	@:native("Storage")
	var storage : ImVectorImU32;
	@:native("TestBit")
	function testBit(_n:Int):Bool;
	@:native("SetBit")
	function setBit(_n:Int):cpp.Void;
	@:native("Create")
	function create(_sz:Int):cpp.Void;
	@:native("ClearBit")
	function clearBit(_n:Int):cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:build(imgui.linc.Linc.xml("imgui")) @:build(imgui.linc.Linc.touch()) extern class ImGui {
	@:native("ImGui::Value")
	@:overload(function(_prefix:imgui.utils.VarConstCharStar, _v:Int):cpp.Void { })
	@:overload(function(_prefix:imgui.utils.VarConstCharStar, _v:UInt):cpp.Void { })
	@:overload(function(_prefix:imgui.utils.VarConstCharStar, _v:cpp.Float32, _float_format:imgui.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(_prefix:imgui.utils.VarConstCharStar, _v:cpp.Float32):cpp.Void { })
	static function value(_prefix:imgui.utils.VarConstCharStar, _b:Bool):cpp.Void;
	@:native("ImGui::VSliderScalar")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _size:ImVec2, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _size:ImVec2, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer):Bool { })
	static function vSliderScalar(_label:imgui.utils.VarConstCharStar, _size:ImVec2, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::VSliderInt")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _size:ImVec2, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function vSliderInt(_label:imgui.utils.VarConstCharStar, _size:ImVec2, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::VSliderFloat")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _size:ImVec2, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _size:ImVec2, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function vSliderFloat(_label:imgui.utils.VarConstCharStar, _size:ImVec2, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::UpdateWindowParentAndRootLinks")
	static function updateWindowParentAndRootLinks(_window:cpp.Star<ImGuiWindow>, _flags:ImGuiWindowFlags, _parent_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::UpdateMouseMovingWindowNewFrame")
	static function updateMouseMovingWindowNewFrame():cpp.Void;
	@:native("ImGui::UpdateMouseMovingWindowEndFrame")
	static function updateMouseMovingWindowEndFrame():cpp.Void;
	@:native("ImGui::UpdateHoveredWindowAndCaptureFlags")
	static function updateHoveredWindowAndCaptureFlags():cpp.Void;
	@:native("ImGui::Unindent")
	@:overload(function():cpp.Void { })
	static function unindent(_indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::TreePushOverrideID")
	static function treePushOverrideID(_id:ImGuiID):cpp.Void;
	@:native("ImGui::TreePush")
	@:overload(function(_ptr_id:imgui.VoidPointer):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function treePush(_str_id:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::TreePop")
	static function treePop():cpp.Void;
	@:native("ImGui::TreeNodeV")
	@:overload(function(_ptr_id:imgui.VoidPointer, _fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):Bool { })
	static function treeNodeV(_str_id:imgui.utils.VarConstCharStar, _fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):Bool;
	@:native("ImGui::TreeNodeExV")
	@:overload(function(_ptr_id:imgui.VoidPointer, _flags:ImGuiTreeNodeFlags, _fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):Bool { })
	static function treeNodeExV(_str_id:imgui.utils.VarConstCharStar, _flags:ImGuiTreeNodeFlags, _fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):Bool;
	@:native("ImGui::TreeNodeEx")
	@:overload(function(_label:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_str_id:imgui.utils.VarConstCharStar, _flags:ImGuiTreeNodeFlags, _fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):Bool { })
	@:overload(function(_ptr_id:imgui.VoidPointer, _flags:ImGuiTreeNodeFlags, _fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):Bool { })
	static function treeNodeEx(_label:imgui.utils.VarConstCharStar, _flags:ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::TreeNodeBehaviorIsOpen")
	@:overload(function(_id:ImGuiID):Bool { })
	static function treeNodeBehaviorIsOpen(_id:ImGuiID, _flags:ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::TreeNodeBehavior")
	@:overload(function(_id:ImGuiID, _flags:ImGuiTreeNodeFlags, _label:imgui.utils.VarConstCharStar):Bool { })
	static function treeNodeBehavior(_id:ImGuiID, _flags:ImGuiTreeNodeFlags, _label:imgui.utils.VarConstCharStar, _label_end:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::TreeNode")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar, _fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):Bool { })
	@:overload(function(_ptr_id:imgui.VoidPointer, _fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):Bool { })
	static function treeNode(_label:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::TextWrappedV")
	static function textWrappedV(_fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextWrapped")
	static function textWrapped(_fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextV")
	static function textV(_fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextUnformatted")
	@:overload(function(_text:imgui.utils.VarConstCharStar):cpp.Void { })
	static function textUnformatted(_text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::TextEx")
	@:overload(function(_text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(_text:imgui.utils.VarConstCharStar):cpp.Void { })
	static function textEx(_text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _flags:ImGuiTextFlags):cpp.Void;
	@:native("ImGui::TextDisabledV")
	static function textDisabledV(_fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextDisabled")
	static function textDisabled(_fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextColoredV")
	static function textColoredV(_col:ImVec4, _fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextColored")
	static function textColored(_col:ImVec4, _fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::Text")
	static function text(_fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::TempInputText")
	static function tempInputText(_bb:ImRect, _id:ImGuiID, _label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:Int, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::TempInputScalar")
	@:overload(function(_bb:ImRect, _id:ImGuiID, _label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _p_clamp_min:imgui.VoidPointer):Bool { })
	@:overload(function(_bb:ImRect, _id:ImGuiID, _label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar):Bool { })
	static function tempInputScalar(_bb:ImRect, _id:ImGuiID, _label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _p_clamp_min:imgui.VoidPointer, _p_clamp_max:imgui.VoidPointer):Bool;
	@:native("ImGui::TempInputIsActive")
	static function tempInputIsActive(_id:ImGuiID):Bool;
	@:native("ImGui::TabItemLabelAndCloseButton")
	static function tabItemLabelAndCloseButton(_draw_list:cpp.Star<ImDrawList>, _bb:ImRect, _flags:ImGuiTabItemFlags, _frame_padding:ImVec2, _label:imgui.utils.VarConstCharStar, _tab_id:ImGuiID, _close_button_id:ImGuiID, _is_contents_visible:Bool):Bool;
	@:native("ImGui::TabItemEx")
	static function tabItemEx(_tab_bar:cpp.Star<ImGuiTabBar>, _label:imgui.utils.VarConstCharStar, _p_open:imgui.BoolPointer, _flags:ImGuiTabItemFlags):Bool;
	@:native("ImGui::TabItemCalcSize")
	static function tabItemCalcSize(_pOut:cpp.Star<ImVec2>, _label:imgui.utils.VarConstCharStar, _has_close_button:Bool):cpp.Void;
	@:native("ImGui::TabItemBackground")
	static function tabItemBackground(_draw_list:cpp.Star<ImDrawList>, _bb:ImRect, _flags:ImGuiTabItemFlags, _col:ImU32):cpp.Void;
	@:native("ImGui::TabBarRemoveTab")
	static function tabBarRemoveTab(_tab_bar:cpp.Star<ImGuiTabBar>, _tab_id:ImGuiID):cpp.Void;
	@:native("ImGui::TabBarQueueChangeTabOrder")
	static function tabBarQueueChangeTabOrder(_tab_bar:cpp.Star<ImGuiTabBar>, _tab:cpp.Star<ImGuiTabItem>, _dir:Int):cpp.Void;
	@:native("ImGui::TabBarFindTabByID")
	static function tabBarFindTabByID(_tab_bar:cpp.Star<ImGuiTabBar>, _tab_id:ImGuiID):cpp.Star<ImGuiTabItem>;
	@:native("ImGui::TabBarCloseTab")
	static function tabBarCloseTab(_tab_bar:cpp.Star<ImGuiTabBar>, _tab:cpp.Star<ImGuiTabItem>):cpp.Void;
	@:native("ImGui::StyleColorsLight")
	@:overload(function():cpp.Void { })
	static function styleColorsLight(_dst:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsDark")
	@:overload(function():cpp.Void { })
	static function styleColorsDark(_dst:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsClassic")
	@:overload(function():cpp.Void { })
	static function styleColorsClassic(_dst:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::StartMouseMovingWindow")
	static function startMouseMovingWindow(_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::SplitterBehavior")
	@:overload(function(_bb:ImRect, _id:ImGuiID, _axis:ImGuiAxis, _size1:imgui.FloatPointer, _size2:imgui.FloatPointer, _min_size1:cpp.Float32, _min_size2:cpp.Float32, _hover_visibility_delay:cpp.Float32):Bool { })
	@:overload(function(_bb:ImRect, _id:ImGuiID, _axis:ImGuiAxis, _size1:imgui.FloatPointer, _size2:imgui.FloatPointer, _min_size1:cpp.Float32, _min_size2:cpp.Float32):Bool { })
	static function splitterBehavior(_bb:ImRect, _id:ImGuiID, _axis:ImGuiAxis, _size1:imgui.FloatPointer, _size2:imgui.FloatPointer, _min_size1:cpp.Float32, _min_size2:cpp.Float32, _hover_extend:cpp.Float32, _hover_visibility_delay:cpp.Float32):Bool;
	@:native("ImGui::Spacing")
	static function spacing():cpp.Void;
	@:native("ImGui::SmallButton")
	static function smallButton(_label:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::SliderScalarN")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer):Bool { })
	static function sliderScalarN(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderScalar")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer):Bool { })
	static function sliderScalar(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderInt4")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function sliderInt4(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::SliderInt3")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function sliderInt3(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::SliderInt2")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function sliderInt2(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::SliderInt")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function sliderInt(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::SliderFloat4")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function sliderFloat4(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat3")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function sliderFloat3(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat2")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function sliderFloat2(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function sliderFloat(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderBehavior")
	static function sliderBehavior(_bb:ImRect, _id:ImGuiID, _data_type:ImGuiDataType, _p_v:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32, _flags:ImGuiSliderFlags, _out_grab_bb:cpp.Star<ImRect>):Bool;
	@:native("ImGui::SliderAngle")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_rad:imgui.FloatPointer, _v_degrees_min:cpp.Float32, _v_degrees_max:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_rad:imgui.FloatPointer, _v_degrees_min:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_rad:imgui.FloatPointer):Bool { })
	static function sliderAngle(_label:imgui.utils.VarConstCharStar, _v_rad:imgui.FloatPointer, _v_degrees_min:cpp.Float32, _v_degrees_max:cpp.Float32, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::Shutdown")
	static function shutdown(_context:cpp.Star<ImGuiContext>):cpp.Void;
	@:native("ImGui::ShrinkWidths")
	static function shrinkWidths(_items:cpp.Star<ImGuiShrinkWidthItem>, _count:Int, _width_excess:cpp.Float32):cpp.Void;
	@:native("ImGui::ShowUserGuide")
	static function showUserGuide():cpp.Void;
	@:native("ImGui::ShowStyleSelector")
	static function showStyleSelector(_label:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::ShowStyleEditor")
	@:overload(function():cpp.Void { })
	static function showStyleEditor(_ref:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::ShowMetricsWindow")
	@:overload(function():cpp.Void { })
	static function showMetricsWindow(_p_open:imgui.BoolPointer):cpp.Void;
	@:native("ImGui::ShowFontSelector")
	static function showFontSelector(_label:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::ShowDemoWindow")
	@:overload(function():cpp.Void { })
	static function showDemoWindow(_p_open:imgui.BoolPointer):cpp.Void;
	@:native("ImGui::ShowAboutWindow")
	@:overload(function():cpp.Void { })
	static function showAboutWindow(_p_open:imgui.BoolPointer):cpp.Void;
	@:native("ImGui::ShadeVertsLinearUV")
	static function shadeVertsLinearUV(_draw_list:cpp.Star<ImDrawList>, _vert_start_idx:Int, _vert_end_idx:Int, _a:ImVec2, _b:ImVec2, _uv_a:ImVec2, _uv_b:ImVec2, _clamp:Bool):cpp.Void;
	@:native("ImGui::ShadeVertsLinearColorGradientKeepAlpha")
	static function shadeVertsLinearColorGradientKeepAlpha(_draw_list:cpp.Star<ImDrawList>, _vert_start_idx:Int, _vert_end_idx:Int, _gradient_p0:ImVec2, _gradient_p1:ImVec2, _col0:ImU32, _col1:ImU32):cpp.Void;
	@:native("ImGui::SetWindowSize")
	@:overload(function(_size:ImVec2):cpp.Void { })
	@:overload(function(_name:imgui.utils.VarConstCharStar, _size:ImVec2, _cond:ImGuiCond):cpp.Void { })
	@:overload(function(_name:imgui.utils.VarConstCharStar, _size:ImVec2):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _size:ImVec2, _cond:ImGuiCond):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _size:ImVec2):cpp.Void { })
	static function setWindowSize(_size:ImVec2, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowPos")
	@:overload(function(_pos:ImVec2):cpp.Void { })
	@:overload(function(_name:imgui.utils.VarConstCharStar, _pos:ImVec2, _cond:ImGuiCond):cpp.Void { })
	@:overload(function(_name:imgui.utils.VarConstCharStar, _pos:ImVec2):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _pos:ImVec2, _cond:ImGuiCond):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _pos:ImVec2):cpp.Void { })
	static function setWindowPos(_pos:ImVec2, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowFontScale")
	static function setWindowFontScale(_scale:cpp.Float32):cpp.Void;
	@:native("ImGui::SetWindowFocus")
	@:overload(function(_name:imgui.utils.VarConstCharStar):cpp.Void { })
	static function setWindowFocus():cpp.Void;
	@:native("ImGui::SetWindowCollapsed")
	@:overload(function(_collapsed:Bool):cpp.Void { })
	@:overload(function(_name:imgui.utils.VarConstCharStar, _collapsed:Bool, _cond:ImGuiCond):cpp.Void { })
	@:overload(function(_name:imgui.utils.VarConstCharStar, _collapsed:Bool):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _collapsed:Bool, _cond:ImGuiCond):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _collapsed:Bool):cpp.Void { })
	static function setWindowCollapsed(_collapsed:Bool, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowClipRectBeforeSetChannel")
	static function setWindowClipRectBeforeSetChannel(_window:cpp.Star<ImGuiWindow>, _clip_rect:ImRect):cpp.Void;
	@:native("ImGui::SetTooltipV")
	static function setTooltipV(_fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::SetTooltip")
	static function setTooltip(_fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::SetTabItemClosed")
	static function setTabItemClosed(_tab_or_docked_window_label:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::SetStateStorage")
	static function setStateStorage(_storage:cpp.Star<ImGuiStorage>):cpp.Void;
	@:native("ImGui::SetScrollY")
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _new_scroll_y:cpp.Float32):cpp.Void { })
	static function setScrollY(_scroll_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollX")
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _new_scroll_x:cpp.Float32):cpp.Void { })
	static function setScrollX(_scroll_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollHereY")
	@:overload(function():cpp.Void { })
	static function setScrollHereY(_center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollHereX")
	@:overload(function():cpp.Void { })
	static function setScrollHereX(_center_x_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollFromPosY")
	@:overload(function(_local_y:cpp.Float32):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _local_y:cpp.Float32, _center_y_ratio:cpp.Float32):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _local_y:cpp.Float32):cpp.Void { })
	static function setScrollFromPosY(_local_y:cpp.Float32, _center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollFromPosX")
	@:overload(function(_local_x:cpp.Float32):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _local_x:cpp.Float32, _center_x_ratio:cpp.Float32):cpp.Void { })
	@:overload(function(_window:cpp.Star<ImGuiWindow>, _local_x:cpp.Float32):cpp.Void { })
	static function setScrollFromPosX(_local_x:cpp.Float32, _center_x_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextWindowSizeConstraints")
	@:overload(function(_size_min:ImVec2, _size_max:ImVec2, _custom_callback_data:imgui.VoidPointer):cpp.Void { })
	@:overload(function(_size_min:ImVec2, _size_max:ImVec2):cpp.Void { })
	static function setNextWindowSizeConstraints(_size_min:ImVec2, _size_max:ImVec2, _custom_callback:ImGuiSizeCallback, _custom_callback_data:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::SetNextWindowSize")
	@:overload(function(_size:ImVec2):cpp.Void { })
	static function setNextWindowSize(_size:ImVec2, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowScroll")
	static function setNextWindowScroll(_scroll:ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowPos")
	@:overload(function(_pos:ImVec2, _pivot:ImVec2):cpp.Void { })
	@:overload(function(_pos:ImVec2):cpp.Void { })
	static function setNextWindowPos(_pos:ImVec2, _cond:ImGuiCond, _pivot:ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowFocus")
	static function setNextWindowFocus():cpp.Void;
	@:native("ImGui::SetNextWindowContentSize")
	static function setNextWindowContentSize(_size:ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowCollapsed")
	@:overload(function(_collapsed:Bool):cpp.Void { })
	static function setNextWindowCollapsed(_collapsed:Bool, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowBgAlpha")
	static function setNextWindowBgAlpha(_alpha:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemWidth")
	static function setNextItemWidth(_item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemOpen")
	@:overload(function(_is_open:Bool):cpp.Void { })
	static function setNextItemOpen(_is_open:Bool, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetNavIDWithRectRel")
	static function setNavIDWithRectRel(_id:ImGuiID, _nav_layer:Int, _focus_scope_id:ImGuiID, _rect_rel:ImRect):cpp.Void;
	@:native("ImGui::SetNavID")
	static function setNavID(_id:ImGuiID, _nav_layer:Int, _focus_scope_id:ImGuiID):cpp.Void;
	@:native("ImGui::SetMouseCursor")
	static function setMouseCursor(_cursor_type:ImGuiMouseCursor):cpp.Void;
	@:native("ImGui::SetKeyboardFocusHere")
	@:overload(function():cpp.Void { })
	static function setKeyboardFocusHere(_offset:Int):cpp.Void;
	@:native("ImGui::SetItemDefaultFocus")
	static function setItemDefaultFocus():cpp.Void;
	@:native("ImGui::SetItemAllowOverlap")
	static function setItemAllowOverlap():cpp.Void;
	@:native("ImGui::SetHoveredID")
	static function setHoveredID(_id:ImGuiID):cpp.Void;
	@:native("ImGui::SetFocusID")
	static function setFocusID(_id:ImGuiID, _window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::SetDragDropPayload")
	@:overload(function(_type:imgui.utils.VarConstCharStar, _data:imgui.VoidPointer, _sz:cpp.SizeT):Bool { })
	static function setDragDropPayload(_type:imgui.utils.VarConstCharStar, _data:imgui.VoidPointer, _sz:cpp.SizeT, _cond:ImGuiCond):Bool;
	@:native("ImGui::SetCursorScreenPos")
	static function setCursorScreenPos(_pos:ImVec2):cpp.Void;
	@:native("ImGui::SetCursorPosY")
	static function setCursorPosY(_local_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPosX")
	static function setCursorPosX(_local_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPos")
	static function setCursorPos(_local_pos:ImVec2):cpp.Void;
	@:native("ImGui::SetCurrentFont")
	static function setCurrentFont(_font:cpp.Star<ImFont>):cpp.Void;
	@:native("ImGui::SetCurrentContext")
	static function setCurrentContext(_ctx:cpp.Star<ImGuiContext>):cpp.Void;
	@:native("ImGui::SetColumnWidth")
	static function setColumnWidth(_column_index:Int, _width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColumnOffset")
	static function setColumnOffset(_column_index:Int, _offset_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColorEditOptions")
	static function setColorEditOptions(_flags:ImGuiColorEditFlags):cpp.Void;
	@:native("ImGui::SetClipboardText")
	static function setClipboardText(_text:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::SetAllocatorFunctions")
	@:overload(function(_alloc_func:cpp.Callable<(cpp.SizeT, cpp.Star<cpp.Void>) -> imgui.VoidPointer>, _free_func:cpp.Callable<(cpp.Star<cpp.Void>, cpp.Star<cpp.Void>) -> Void>):cpp.Void { })
	static function setAllocatorFunctions(_alloc_func:cpp.Callable<(cpp.SizeT, cpp.Star<cpp.Void>) -> imgui.VoidPointer>, _free_func:cpp.Callable<(cpp.Star<cpp.Void>, cpp.Star<cpp.Void>) -> Void>, _user_data:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::SetActiveID")
	static function setActiveID(_id:ImGuiID, _window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::SeparatorEx")
	static function separatorEx(_flags:ImGuiSeparatorFlags):cpp.Void;
	@:native("ImGui::Separator")
	static function separator():cpp.Void;
	@:native("ImGui::Selectable")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _selected:Bool, _size:ImVec2):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _size:ImVec2):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _p_selected:imgui.BoolPointer, _flags:ImGuiSelectableFlags, _size:ImVec2):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _p_selected:imgui.BoolPointer, _size:ImVec2):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _p_selected:imgui.BoolPointer):Bool { })
	static function selectable(_label:imgui.utils.VarConstCharStar, _selected:Bool, _flags:ImGuiSelectableFlags, _size:ImVec2):Bool;
	@:native("ImGui::ScrollbarEx")
	static function scrollbarEx(_bb:ImRect, _id:ImGuiID, _axis:ImGuiAxis, _p_scroll_v:imgui.FloatPointer, _avail_v:cpp.Float32, _contents_v:cpp.Float32, _rounding_corners:ImDrawCornerFlags):Bool;
	@:native("ImGui::Scrollbar")
	static function scrollbar(_axis:ImGuiAxis):cpp.Void;
	@:native("ImGui::ScrollToBringRectIntoView")
	static function scrollToBringRectIntoView(_pOut:cpp.Star<ImVec2>, _window:cpp.Star<ImGuiWindow>, _item_rect:ImRect):cpp.Void;
	@:native("ImGui::SaveIniSettingsToMemory")
	@:overload(function():imgui.utils.VarConstCharStar { })
	static function saveIniSettingsToMemory(_out_ini_size:cpp.Star<cpp.SizeT>):imgui.utils.VarConstCharStar;
	@:native("ImGui::SaveIniSettingsToDisk")
	static function saveIniSettingsToDisk(_ini_filename:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::SameLine")
	@:overload(function(_spacing:cpp.Float32):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function sameLine(_offset_from_start_x:cpp.Float32, _spacing:cpp.Float32):cpp.Void;
	@:native("ImGui::ResetMouseDragDelta")
	@:overload(function():cpp.Void { })
	static function resetMouseDragDelta(_button:ImGuiMouseButton):cpp.Void;
	@:native("ImGui::RenderTextWrapped")
	static function renderTextWrapped(_pos:ImVec2, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _wrap_width:cpp.Float32):cpp.Void;
	@:native("ImGui::RenderTextEllipsis")
	static function renderTextEllipsis(_draw_list:cpp.Star<ImDrawList>, _pos_min:ImVec2, _pos_max:ImVec2, _clip_max_x:cpp.Float32, _ellipsis_max_x:cpp.Float32, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _text_size_if_known:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::RenderTextClippedEx")
	@:overload(function(_draw_list:cpp.Star<ImDrawList>, _pos_min:ImVec2, _pos_max:ImVec2, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _text_size_if_known:cpp.Star<ImVec2>, _clip_rect:cpp.Star<ImRect>):cpp.Void { })
	@:overload(function(_draw_list:cpp.Star<ImDrawList>, _pos_min:ImVec2, _pos_max:ImVec2, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _text_size_if_known:cpp.Star<ImVec2>):cpp.Void { })
	static function renderTextClippedEx(_draw_list:cpp.Star<ImDrawList>, _pos_min:ImVec2, _pos_max:ImVec2, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _text_size_if_known:cpp.Star<ImVec2>, _align:ImVec2, _clip_rect:cpp.Star<ImRect>):cpp.Void;
	@:native("ImGui::RenderTextClipped")
	@:overload(function(_pos_min:ImVec2, _pos_max:ImVec2, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _text_size_if_known:cpp.Star<ImVec2>, _clip_rect:cpp.Star<ImRect>):cpp.Void { })
	@:overload(function(_pos_min:ImVec2, _pos_max:ImVec2, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _text_size_if_known:cpp.Star<ImVec2>):cpp.Void { })
	static function renderTextClipped(_pos_min:ImVec2, _pos_max:ImVec2, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _text_size_if_known:cpp.Star<ImVec2>, _align:ImVec2, _clip_rect:cpp.Star<ImRect>):cpp.Void;
	@:native("ImGui::RenderText")
	@:overload(function(_pos:ImVec2, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(_pos:ImVec2, _text:imgui.utils.VarConstCharStar):cpp.Void { })
	static function renderText(_pos:ImVec2, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _hide_text_after_hash:Bool):cpp.Void;
	@:native("ImGui::RenderRectFilledRangeH")
	static function renderRectFilledRangeH(_draw_list:cpp.Star<ImDrawList>, _rect:ImRect, _col:ImU32, _x_start_norm:cpp.Float32, _x_end_norm:cpp.Float32, _rounding:cpp.Float32):cpp.Void;
	@:native("ImGui::RenderNavHighlight")
	@:overload(function(_bb:ImRect, _id:ImGuiID):cpp.Void { })
	static function renderNavHighlight(_bb:ImRect, _id:ImGuiID, _flags:ImGuiNavHighlightFlags):cpp.Void;
	@:native("ImGui::RenderMouseCursor")
	static function renderMouseCursor(_draw_list:cpp.Star<ImDrawList>, _pos:ImVec2, _scale:cpp.Float32, _mouse_cursor:ImGuiMouseCursor, _col_fill:ImU32, _col_border:ImU32, _col_shadow:ImU32):cpp.Void;
	@:native("ImGui::RenderFrameBorder")
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2):cpp.Void { })
	static function renderFrameBorder(_p_min:ImVec2, _p_max:ImVec2, _rounding:cpp.Float32):cpp.Void;
	@:native("ImGui::RenderFrame")
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _fill_col:ImU32, _rounding:cpp.Float32):cpp.Void { })
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _fill_col:ImU32):cpp.Void { })
	static function renderFrame(_p_min:ImVec2, _p_max:ImVec2, _fill_col:ImU32, _border:Bool, _rounding:cpp.Float32):cpp.Void;
	@:native("ImGui::RenderColorRectWithAlphaCheckerboard")
	@:overload(function(_draw_list:cpp.Star<ImDrawList>, _p_min:ImVec2, _p_max:ImVec2, _fill_col:ImU32, _grid_step:cpp.Float32, _grid_off:ImVec2, _rounding_corners_flags:Int):cpp.Void { })
	static function renderColorRectWithAlphaCheckerboard(_draw_list:cpp.Star<ImDrawList>, _p_min:ImVec2, _p_max:ImVec2, _fill_col:ImU32, _grid_step:cpp.Float32, _grid_off:ImVec2, _rounding:cpp.Float32, _rounding_corners_flags:Int):cpp.Void;
	@:native("ImGui::RenderCheckMark")
	static function renderCheckMark(_draw_list:cpp.Star<ImDrawList>, _pos:ImVec2, _col:ImU32, _sz:cpp.Float32):cpp.Void;
	@:native("ImGui::RenderBullet")
	static function renderBullet(_draw_list:cpp.Star<ImDrawList>, _pos:ImVec2, _col:ImU32):cpp.Void;
	@:native("ImGui::RenderArrowPointingAt")
	static function renderArrowPointingAt(_draw_list:cpp.Star<ImDrawList>, _pos:ImVec2, _half_sz:ImVec2, _direction:ImGuiDir, _col:ImU32):cpp.Void;
	@:native("ImGui::RenderArrow")
	@:overload(function(_draw_list:cpp.Star<ImDrawList>, _pos:ImVec2, _col:ImU32, _dir:ImGuiDir):cpp.Void { })
	static function renderArrow(_draw_list:cpp.Star<ImDrawList>, _pos:ImVec2, _col:ImU32, _dir:ImGuiDir, _scale:cpp.Float32):cpp.Void;
	@:native("ImGui::Render")
	static function render():cpp.Void;
	@:native("ImGui::RadioButton")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_button:Int):Bool { })
	static function radioButton(_label:imgui.utils.VarConstCharStar, _active:Bool):Bool;
	@:native("ImGui::PushTextWrapPos")
	@:overload(function():cpp.Void { })
	static function pushTextWrapPos(_wrap_local_pos_x:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleVar")
	@:overload(function(_idx:ImGuiStyleVar, _val:ImVec2):cpp.Void { })
	static function pushStyleVar(_idx:ImGuiStyleVar, _val:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleColor")
	@:overload(function(_idx:ImGuiCol, _col:ImVec4):cpp.Void { })
	static function pushStyleColor(_idx:ImGuiCol, _col:ImU32):cpp.Void;
	@:native("ImGui::PushOverrideID")
	static function pushOverrideID(_id:ImGuiID):cpp.Void;
	@:native("ImGui::PushMultiItemsWidths")
	static function pushMultiItemsWidths(_components:Int, _width_full:cpp.Float32):cpp.Void;
	@:native("ImGui::PushItemWidth")
	static function pushItemWidth(_item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::PushItemFlag")
	static function pushItemFlag(_option:ImGuiItemFlags, _enabled:Bool):cpp.Void;
	@:native("ImGui::PushID")
	@:overload(function(_str_id_begin:imgui.utils.VarConstCharStar, _str_id_end:imgui.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(_ptr_id:imgui.VoidPointer):cpp.Void { })
	@:overload(function(_int_id:Int):cpp.Void { })
	static function pushID(_str_id:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::PushFont")
	static function pushFont(_font:cpp.Star<ImFont>):cpp.Void;
	@:native("ImGui::PushFocusScope")
	static function pushFocusScope(_id:ImGuiID):cpp.Void;
	@:native("ImGui::PushColumnsBackground")
	static function pushColumnsBackground():cpp.Void;
	@:native("ImGui::PushColumnClipRect")
	static function pushColumnClipRect(_column_index:Int):cpp.Void;
	@:native("ImGui::PushClipRect")
	static function pushClipRect(_clip_rect_min:ImVec2, _clip_rect_max:ImVec2, _intersect_with_current_clip_rect:Bool):cpp.Void;
	@:native("ImGui::PushButtonRepeat")
	static function pushButtonRepeat(_repeat:Bool):cpp.Void;
	@:native("ImGui::PushAllowKeyboardFocus")
	static function pushAllowKeyboardFocus(_allow_keyboard_focus:Bool):cpp.Void;
	@:native("ImGui::ProgressBar")
	@:overload(function(_fraction:cpp.Float32, _size_arg:ImVec2):cpp.Void { })
	@:overload(function(_fraction:cpp.Float32):cpp.Void { })
	static function progressBar(_fraction:cpp.Float32, _size_arg:ImVec2, _overlay:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::PopTextWrapPos")
	static function popTextWrapPos():cpp.Void;
	@:native("ImGui::PopStyleVar")
	@:overload(function():cpp.Void { })
	static function popStyleVar(_count:Int):cpp.Void;
	@:native("ImGui::PopStyleColor")
	@:overload(function():cpp.Void { })
	static function popStyleColor(_count:Int):cpp.Void;
	@:native("ImGui::PopItemWidth")
	static function popItemWidth():cpp.Void;
	@:native("ImGui::PopItemFlag")
	static function popItemFlag():cpp.Void;
	@:native("ImGui::PopID")
	static function popID():cpp.Void;
	@:native("ImGui::PopFont")
	static function popFont():cpp.Void;
	@:native("ImGui::PopFocusScope")
	static function popFocusScope():cpp.Void;
	@:native("ImGui::PopColumnsBackground")
	static function popColumnsBackground():cpp.Void;
	@:native("ImGui::PopClipRect")
	static function popClipRect():cpp.Void;
	@:native("ImGui::PopButtonRepeat")
	static function popButtonRepeat():cpp.Void;
	@:native("ImGui::PopAllowKeyboardFocus")
	static function popAllowKeyboardFocus():cpp.Void;
	@:native("ImGui::PlotLines")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.utils.VarConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _stride:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.utils.VarConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:ImVec2):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.utils.VarConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int):cpp.Void { })
	static function plotLines(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.utils.VarConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:ImVec2, _stride:Int):cpp.Void;
	@:native("ImGui::PlotHistogram")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.utils.VarConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _stride:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.utils.VarConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:ImVec2):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.utils.VarConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int):cpp.Void { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int):cpp.Void { })
	static function plotHistogram(_label:imgui.utils.VarConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.utils.VarConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:ImVec2, _stride:Int):cpp.Void;
	@:native("ImGui::PlotEx")
	static function plotEx(_plot_type:ImGuiPlotType, _label:imgui.utils.VarConstCharStar, _values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.utils.VarConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _frame_size:ImVec2):Int;
	@:native("ImGui::OpenPopupEx")
	@:overload(function(_id:ImGuiID):cpp.Void { })
	static function openPopupEx(_id:ImGuiID, _popup_flags:ImGuiPopupFlags):cpp.Void;
	@:native("ImGui::OpenPopupContextItem")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function openPopupContextItem(_str_id:imgui.utils.VarConstCharStar, _popup_flags:ImGuiPopupFlags):Bool;
	@:native("ImGui::OpenPopup")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar):cpp.Void { })
	static function openPopup(_str_id:imgui.utils.VarConstCharStar, _popup_flags:ImGuiPopupFlags):cpp.Void;
	@:native("ImGui::NextColumn")
	static function nextColumn():cpp.Void;
	@:native("ImGui::NewLine")
	static function newLine():cpp.Void;
	@:native("ImGui::NewFrame")
	static function newFrame():cpp.Void;
	@:native("ImGui::NavMoveRequestTryWrapping")
	static function navMoveRequestTryWrapping(_window:cpp.Star<ImGuiWindow>, _move_flags:ImGuiNavMoveFlags):cpp.Void;
	@:native("ImGui::NavMoveRequestForward")
	static function navMoveRequestForward(_move_dir:ImGuiDir, _clip_dir:ImGuiDir, _bb_rel:ImRect, _move_flags:ImGuiNavMoveFlags):cpp.Void;
	@:native("ImGui::NavMoveRequestCancel")
	static function navMoveRequestCancel():cpp.Void;
	@:native("ImGui::NavMoveRequestButNoResultYet")
	static function navMoveRequestButNoResultYet():Bool;
	@:native("ImGui::NavInitWindow")
	static function navInitWindow(_window:cpp.Star<ImGuiWindow>, _force_reinit:Bool):cpp.Void;
	@:native("ImGui::MenuItem")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _shortcut:imgui.utils.VarConstCharStar, _selected:Bool):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _shortcut:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _shortcut:imgui.utils.VarConstCharStar, _p_selected:imgui.BoolPointer, _enabled:Bool):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _shortcut:imgui.utils.VarConstCharStar, _p_selected:imgui.BoolPointer):Bool { })
	static function menuItem(_label:imgui.utils.VarConstCharStar, _shortcut:imgui.utils.VarConstCharStar, _selected:Bool, _enabled:Bool):Bool;
	@:native("ImGui::MemFree")
	static function memFree(_ptr:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::MemAlloc")
	static function memAlloc(_size:cpp.SizeT):imgui.VoidPointer;
	@:native("ImGui::MarkItemEdited")
	static function markItemEdited(_id:ImGuiID):cpp.Void;
	@:native("ImGui::MarkIniSettingsDirty")
	@:overload(function(_window:cpp.Star<ImGuiWindow>):cpp.Void { })
	static function markIniSettingsDirty():cpp.Void;
	@:native("ImGui::LogToTTY")
	@:overload(function():cpp.Void { })
	static function logToTTY(_auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogToFile")
	@:overload(function(_filename:imgui.utils.VarConstCharStar):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function logToFile(_auto_open_depth:Int, _filename:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::LogToClipboard")
	@:overload(function():cpp.Void { })
	static function logToClipboard(_auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogToBuffer")
	@:overload(function():cpp.Void { })
	static function logToBuffer(_auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogText")
	static function logText(_fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::LogRenderedText")
	@:overload(function(_ref_pos:cpp.Star<ImVec2>, _text:imgui.utils.VarConstCharStar):cpp.Void { })
	static function logRenderedText(_ref_pos:cpp.Star<ImVec2>, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::LogFinish")
	static function logFinish():cpp.Void;
	@:native("ImGui::LogButtons")
	static function logButtons():cpp.Void;
	@:native("ImGui::LogBegin")
	static function logBegin(_type:ImGuiLogType, _auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LoadIniSettingsFromMemory")
	@:overload(function(_ini_data:imgui.utils.VarConstCharStar):cpp.Void { })
	static function loadIniSettingsFromMemory(_ini_data:imgui.utils.VarConstCharStar, _ini_size:cpp.SizeT):cpp.Void;
	@:native("ImGui::LoadIniSettingsFromDisk")
	static function loadIniSettingsFromDisk(_ini_filename:imgui.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::ListBoxHeader")
	@:overload(function(_label:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _items_count:Int, _height_in_items:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _items_count:Int):Bool { })
	static function listBoxHeader(_label:imgui.utils.VarConstCharStar, _size:ImVec2):Bool;
	@:native("ImGui::ListBoxFooter")
	static function listBoxFooter():cpp.Void;
	@:native("ImGui::ListBox")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items:cpp.RawPointer<imgui.utils.VarConstCharStar>, _items_count:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int, cpp.Star<cpp.RawConstPointer<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int, _height_in_items:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int, cpp.Star<cpp.RawConstPointer<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int):Bool { })
	static function listBox(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items:cpp.RawPointer<imgui.utils.VarConstCharStar>, _items_count:Int, _height_in_items:Int):Bool;
	@:native("ImGui::LabelTextV")
	static function labelTextV(_label:imgui.utils.VarConstCharStar, _fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::LabelText")
	static function labelText(_label:imgui.utils.VarConstCharStar, _fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::KeepAliveID")
	static function keepAliveID(_id:ImGuiID):cpp.Void;
	@:native("ImGui::ItemSize")
	@:overload(function(_size:ImVec2):cpp.Void { })
	@:overload(function(_bb:ImRect, _text_baseline_y:cpp.Float32):cpp.Void { })
	@:overload(function(_bb:ImRect):cpp.Void { })
	static function itemSize(_size:ImVec2, _text_baseline_y:cpp.Float32):cpp.Void;
	@:native("ImGui::ItemHoverable")
	static function itemHoverable(_bb:ImRect, _id:ImGuiID):Bool;
	@:native("ImGui::ItemAdd")
	@:overload(function(_bb:ImRect, _id:ImGuiID):Bool { })
	static function itemAdd(_bb:ImRect, _id:ImGuiID, _nav_bb:cpp.Star<ImRect>):Bool;
	@:native("ImGui::IsWindowNavFocusable")
	static function isWindowNavFocusable(_window:cpp.Star<ImGuiWindow>):Bool;
	@:native("ImGui::IsWindowHovered")
	@:overload(function():Bool { })
	static function isWindowHovered(_flags:ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsWindowFocused")
	@:overload(function():Bool { })
	static function isWindowFocused(_flags:ImGuiFocusedFlags):Bool;
	@:native("ImGui::IsWindowCollapsed")
	static function isWindowCollapsed():Bool;
	@:native("ImGui::IsWindowChildOf")
	static function isWindowChildOf(_window:cpp.Star<ImGuiWindow>, _potential_parent:cpp.Star<ImGuiWindow>):Bool;
	@:native("ImGui::IsWindowAppearing")
	static function isWindowAppearing():Bool;
	@:native("ImGui::IsRectVisible")
	@:overload(function(_rect_min:ImVec2, _rect_max:ImVec2):Bool { })
	static function isRectVisible(_size:ImVec2):Bool;
	@:native("ImGui::IsPopupOpen")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_id:ImGuiID, _popup_flags:ImGuiPopupFlags):Bool { })
	static function isPopupOpen(_str_id:imgui.utils.VarConstCharStar, _flags:ImGuiPopupFlags):Bool;
	@:native("ImGui::IsNavInputTest")
	static function isNavInputTest(_n:ImGuiNavInput, _rm:ImGuiInputReadMode):Bool;
	@:native("ImGui::IsNavInputDown")
	static function isNavInputDown(_n:ImGuiNavInput):Bool;
	@:native("ImGui::IsMouseReleased")
	static function isMouseReleased(_button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsMousePosValid")
	@:overload(function():Bool { })
	static function isMousePosValid(_mouse_pos:cpp.Star<ImVec2>):Bool;
	@:native("ImGui::IsMouseHoveringRect")
	@:overload(function(_r_min:ImVec2, _r_max:ImVec2):Bool { })
	static function isMouseHoveringRect(_r_min:ImVec2, _r_max:ImVec2, _clip:Bool):Bool;
	@:native("ImGui::IsMouseDragging")
	@:overload(function(_button:ImGuiMouseButton):Bool { })
	static function isMouseDragging(_button:ImGuiMouseButton, _lock_threshold:cpp.Float32):Bool;
	@:native("ImGui::IsMouseDragPastThreshold")
	@:overload(function(_button:ImGuiMouseButton):Bool { })
	static function isMouseDragPastThreshold(_button:ImGuiMouseButton, _lock_threshold:cpp.Float32):Bool;
	@:native("ImGui::IsMouseDown")
	static function isMouseDown(_button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsMouseDoubleClicked")
	static function isMouseDoubleClicked(_button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsMouseClicked")
	@:overload(function(_button:ImGuiMouseButton):Bool { })
	static function isMouseClicked(_button:ImGuiMouseButton, _repeat:Bool):Bool;
	@:native("ImGui::IsKeyReleased")
	static function isKeyReleased(_user_key_index:Int):Bool;
	@:native("ImGui::IsKeyPressedMap")
	@:overload(function(_key:ImGuiKey):Bool { })
	static function isKeyPressedMap(_key:ImGuiKey, _repeat:Bool):Bool;
	@:native("ImGui::IsKeyPressed")
	@:overload(function(_user_key_index:Int):Bool { })
	static function isKeyPressed(_user_key_index:Int, _repeat:Bool):Bool;
	@:native("ImGui::IsKeyDown")
	static function isKeyDown(_user_key_index:Int):Bool;
	@:native("ImGui::IsItemVisible")
	static function isItemVisible():Bool;
	@:native("ImGui::IsItemToggledSelection")
	static function isItemToggledSelection():Bool;
	@:native("ImGui::IsItemToggledOpen")
	static function isItemToggledOpen():Bool;
	@:native("ImGui::IsItemHovered")
	@:overload(function():Bool { })
	static function isItemHovered(_flags:ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsItemFocused")
	static function isItemFocused():Bool;
	@:native("ImGui::IsItemEdited")
	static function isItemEdited():Bool;
	@:native("ImGui::IsItemDeactivatedAfterEdit")
	static function isItemDeactivatedAfterEdit():Bool;
	@:native("ImGui::IsItemDeactivated")
	static function isItemDeactivated():Bool;
	@:native("ImGui::IsItemClicked")
	@:overload(function():Bool { })
	static function isItemClicked(_mouse_button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsItemActive")
	static function isItemActive():Bool;
	@:native("ImGui::IsItemActivated")
	static function isItemActivated():Bool;
	@:native("ImGui::IsDragDropPayloadBeingAccepted")
	static function isDragDropPayloadBeingAccepted():Bool;
	@:native("ImGui::IsClippedEx")
	static function isClippedEx(_bb:ImRect, _id:ImGuiID, _clip_even_when_logged:Bool):Bool;
	@:native("ImGui::IsAnyMouseDown")
	static function isAnyMouseDown():Bool;
	@:native("ImGui::IsAnyItemHovered")
	static function isAnyItemHovered():Bool;
	@:native("ImGui::IsAnyItemFocused")
	static function isAnyItemFocused():Bool;
	@:native("ImGui::IsAnyItemActive")
	static function isAnyItemActive():Bool;
	@:native("ImGui::IsActiveIdUsingNavInput")
	static function isActiveIdUsingNavInput(_input:ImGuiNavInput):Bool;
	@:native("ImGui::IsActiveIdUsingNavDir")
	static function isActiveIdUsingNavDir(_dir:ImGuiDir):Bool;
	@:native("ImGui::IsActiveIdUsingKey")
	static function isActiveIdUsingKey(_key:ImGuiKey):Bool;
	@:native("ImGui::InvisibleButton")
	static function invisibleButton(_str_id:imgui.utils.VarConstCharStar, _size:ImVec2):Bool;
	@:native("ImGui::InputTextWithHint")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _hint:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _flags:ImGuiInputTextFlags, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _hint:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _hint:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT):Bool { })
	static function inputTextWithHint(_label:imgui.utils.VarConstCharStar, _hint:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _flags:ImGuiInputTextFlags, _callback:ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputTextMultiline")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _size:ImVec2, _flags:ImGuiInputTextFlags, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _size:ImVec2, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT):Bool { })
	static function inputTextMultiline(_label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _size:ImVec2, _flags:ImGuiInputTextFlags, _callback:ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputTextEx")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _hint:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:Int, _size_arg:ImVec2, _flags:ImGuiInputTextFlags, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _hint:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:Int, _size_arg:ImVec2, _flags:ImGuiInputTextFlags):Bool { })
	static function inputTextEx(_label:imgui.utils.VarConstCharStar, _hint:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:Int, _size_arg:ImVec2, _flags:ImGuiInputTextFlags, _callback:ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputText")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _flags:ImGuiInputTextFlags, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT):Bool { })
	static function inputText(_label:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _flags:ImGuiInputTextFlags, _callback:ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputScalarN")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_step_fast:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int):Bool { })
	static function inputScalarN(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputScalar")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer):Bool { })
	static function inputScalar(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt4")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer):Bool { })
	static function inputInt4(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt3")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer):Bool { })
	static function inputInt3(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt2")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer):Bool { })
	static function inputInt2(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _step:Int, _step_fast:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _step_fast:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer):Bool { })
	static function inputInt(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _step:Int, _step_fast:Int, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat4")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _format:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function inputFloat4(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _format:imgui.utils.VarConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat3")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _format:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function inputFloat3(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _format:imgui.utils.VarConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat2")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _format:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function inputFloat2(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _format:imgui.utils.VarConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _step:cpp.Float32, _step_fast:cpp.Float32, _format:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _step:cpp.Float32, _step_fast:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _step_fast:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function inputFloat(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _step:cpp.Float32, _step_fast:cpp.Float32, _format:imgui.utils.VarConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputDouble")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:cpp.Star<Float>, _step:Float, _step_fast:Float, _format:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:cpp.Star<Float>, _step:Float, _step_fast:Float):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:cpp.Star<Float>, _step_fast:Float):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:cpp.Star<Float>):Bool { })
	static function inputDouble(_label:imgui.utils.VarConstCharStar, _v:cpp.Star<Float>, _step:Float, _step_fast:Float, _format:imgui.utils.VarConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::Initialize")
	static function initialize(_context:cpp.Star<ImGuiContext>):cpp.Void;
	@:native("ImGui::Indent")
	@:overload(function():cpp.Void { })
	static function indent(_indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::ImageButtonEx")
	static function imageButtonEx(_id:ImGuiID, _texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _padding:ImVec2, _bg_col:ImVec4, _tint_col:ImVec4):Bool;
	@:native("ImGui::ImageButton")
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _frame_padding:Int, _tint_col:ImVec4):Bool { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _tint_col:ImVec4):Bool { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2):Bool { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv1:ImVec2):Bool { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2):Bool { })
	static function imageButton(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _frame_padding:Int, _bg_col:ImVec4, _tint_col:ImVec4):Bool;
	@:native("ImGui::Image")
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _tint_col:ImVec4):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv1:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2):cpp.Void { })
	static function image(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _tint_col:ImVec4, _border_col:ImVec4):cpp.Void;
	@:native("ImGui::ImUpperPowerOfTwo")
	static function imUpperPowerOfTwo(_v:Int):Int;
	@:native("ImGui::ImTriangleContainsPoint")
	static function imTriangleContainsPoint(_a:ImVec2, _b:ImVec2, _c:ImVec2, _p:ImVec2):Bool;
	@:native("ImGui::ImTriangleClosestPoint")
	static function imTriangleClosestPoint(_pOut:cpp.Star<ImVec2>, _a:ImVec2, _b:ImVec2, _c:ImVec2, _p:ImVec2):cpp.Void;
	@:native("ImGui::ImTriangleBarycentricCoords")
	static function imTriangleBarycentricCoords(_a:ImVec2, _b:ImVec2, _c:ImVec2, _p:ImVec2, _out_u:imgui.FloatPointer, _out_v:imgui.FloatPointer, _out_w:imgui.FloatPointer):cpp.Void;
	@:native("ImGui::ImTriangleArea")
	static function imTriangleArea(_a:ImVec2, _b:ImVec2, _c:ImVec2):cpp.Float32;
	@:native("ImGui::ImTextStrToUtf8")
	static function imTextStrToUtf8(_buf:cpp.Star<cpp.Int8>, _buf_size:Int, _in_text:cpp.Star<ImWchar>, _in_text_end:cpp.Star<ImWchar>):Int;
	@:native("ImGui::ImTextStrFromUtf8")
	@:overload(function(_buf:cpp.Star<ImWchar>, _buf_size:Int, _in_text:imgui.utils.VarConstCharStar, _in_text_end:imgui.utils.VarConstCharStar):Int { })
	static function imTextStrFromUtf8(_buf:cpp.Star<ImWchar>, _buf_size:Int, _in_text:imgui.utils.VarConstCharStar, _in_text_end:imgui.utils.VarConstCharStar, _in_remaining:cpp.Star<cpp.RawConstPointer<cpp.Int8>>):Int;
	@:native("ImGui::ImTextCountUtf8BytesFromStr")
	static function imTextCountUtf8BytesFromStr(_in_text:cpp.Star<ImWchar>, _in_text_end:cpp.Star<ImWchar>):Int;
	@:native("ImGui::ImTextCountUtf8BytesFromChar")
	static function imTextCountUtf8BytesFromChar(_in_text:imgui.utils.VarConstCharStar, _in_text_end:imgui.utils.VarConstCharStar):Int;
	@:native("ImGui::ImTextCountCharsFromUtf8")
	static function imTextCountCharsFromUtf8(_in_text:imgui.utils.VarConstCharStar, _in_text_end:imgui.utils.VarConstCharStar):Int;
	@:native("ImGui::ImTextCharFromUtf8")
	static function imTextCharFromUtf8(_out_char:cpp.Star<UInt>, _in_text:imgui.utils.VarConstCharStar, _in_text_end:imgui.utils.VarConstCharStar):Int;
	@:native("ImGui::ImStrnicmp")
	static function imStrnicmp(_str1:imgui.utils.VarConstCharStar, _str2:imgui.utils.VarConstCharStar, _count:cpp.SizeT):Int;
	@:native("ImGui::ImStrncpy")
	static function imStrncpy(_dst:cpp.Star<cpp.Int8>, _src:imgui.utils.VarConstCharStar, _count:cpp.SizeT):cpp.Void;
	@:native("ImGui::ImStrlenW")
	static function imStrlenW(_str:cpp.Star<ImWchar>):Int;
	@:native("ImGui::ImStristr")
	static function imStristr(_haystack:imgui.utils.VarConstCharStar, _haystack_end:imgui.utils.VarConstCharStar, _needle:imgui.utils.VarConstCharStar, _needle_end:imgui.utils.VarConstCharStar):imgui.utils.VarConstCharStar;
	@:native("ImGui::ImStricmp")
	static function imStricmp(_str1:imgui.utils.VarConstCharStar, _str2:imgui.utils.VarConstCharStar):Int;
	@:native("ImGui::ImStreolRange")
	static function imStreolRange(_str:imgui.utils.VarConstCharStar, _str_end:imgui.utils.VarConstCharStar):imgui.utils.VarConstCharStar;
	@:native("ImGui::ImStrdupcpy")
	static function imStrdupcpy(_dst:cpp.Star<cpp.Int8>, _p_dst_size:cpp.Star<cpp.SizeT>, _str:imgui.utils.VarConstCharStar):cpp.Star<cpp.Int8>;
	@:native("ImGui::ImStrdup")
	static function imStrdup(_str:imgui.utils.VarConstCharStar):cpp.Star<cpp.Int8>;
	@:native("ImGui::ImStrchrRange")
	static function imStrchrRange(_str_begin:imgui.utils.VarConstCharStar, _str_end:imgui.utils.VarConstCharStar, _c:cpp.Int8):imgui.utils.VarConstCharStar;
	@:native("ImGui::ImStrbolW")
	static function imStrbolW(_buf_mid_line:cpp.Star<ImWchar>, _buf_begin:cpp.Star<ImWchar>):cpp.Star<ImWchar>;
	@:native("ImGui::ImStrTrimBlanks")
	static function imStrTrimBlanks(_str:cpp.Star<cpp.Int8>):cpp.Void;
	@:native("ImGui::ImStrSkipBlank")
	static function imStrSkipBlank(_str:imgui.utils.VarConstCharStar):imgui.utils.VarConstCharStar;
	@:native("ImGui::ImSaturate")
	static function imSaturate(_f:cpp.Float32):cpp.Float32;
	@:native("ImGui::ImRotate")
	static function imRotate(_pOut:cpp.Star<ImVec2>, _v:ImVec2, _cos_a:cpp.Float32, _sin_a:cpp.Float32):cpp.Void;
	@:native("ImGui::ImPow")
	@:overload(function(_x:Float, _y:Float):Float { })
	static function imPow(_x:cpp.Float32, _y:cpp.Float32):cpp.Float32;
	@:native("ImGui::ImParseFormatTrimDecorations")
	static function imParseFormatTrimDecorations(_format:imgui.utils.VarConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT):imgui.utils.VarConstCharStar;
	@:native("ImGui::ImParseFormatPrecision")
	static function imParseFormatPrecision(_format:imgui.utils.VarConstCharStar, _default_value:Int):Int;
	@:native("ImGui::ImParseFormatFindStart")
	static function imParseFormatFindStart(_format:imgui.utils.VarConstCharStar):imgui.utils.VarConstCharStar;
	@:native("ImGui::ImParseFormatFindEnd")
	static function imParseFormatFindEnd(_format:imgui.utils.VarConstCharStar):imgui.utils.VarConstCharStar;
	@:native("ImGui::ImMul")
	static function imMul(_pOut:cpp.Star<ImVec2>, _lhs:ImVec2, _rhs:ImVec2):cpp.Void;
	@:native("ImGui::ImModPositive")
	static function imModPositive(_a:Int, _b:Int):Int;
	@:native("ImGui::ImMin")
	static function imMin(_pOut:cpp.Star<ImVec2>, _lhs:ImVec2, _rhs:ImVec2):cpp.Void;
	@:native("ImGui::ImMax")
	static function imMax(_pOut:cpp.Star<ImVec2>, _lhs:ImVec2, _rhs:ImVec2):cpp.Void;
	@:native("ImGui::ImLinearSweep")
	static function imLinearSweep(_current:cpp.Float32, _target:cpp.Float32, _speed:cpp.Float32):cpp.Float32;
	@:native("ImGui::ImLineClosestPoint")
	static function imLineClosestPoint(_pOut:cpp.Star<ImVec2>, _a:ImVec2, _b:ImVec2, _p:ImVec2):cpp.Void;
	@:native("ImGui::ImLerp")
	@:overload(function(_pOut:cpp.Star<ImVec2>, _a:ImVec2, _b:ImVec2, _t:ImVec2):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec4>, _a:ImVec4, _b:ImVec4, _t:cpp.Float32):cpp.Void { })
	static function imLerp(_pOut:cpp.Star<ImVec2>, _a:ImVec2, _b:ImVec2, _t:cpp.Float32):cpp.Void;
	@:native("ImGui::ImLengthSqr")
	@:overload(function(_lhs:ImVec4):cpp.Float32 { })
	static function imLengthSqr(_lhs:ImVec2):cpp.Float32;
	@:native("ImGui::ImIsPowerOfTwo")
	static function imIsPowerOfTwo(_v:Int):Bool;
	@:native("ImGui::ImInvLength")
	static function imInvLength(_lhs:ImVec2, _fail_value:cpp.Float32):cpp.Float32;
	@:native("ImGui::ImHashStr")
	@:overload(function(_data:imgui.utils.VarConstCharStar, _seed:ImU32):ImU32 { })
	@:overload(function(_data:imgui.utils.VarConstCharStar):ImU32 { })
	static function imHashStr(_data:imgui.utils.VarConstCharStar, _data_size:cpp.SizeT, _seed:ImU32):ImU32;
	@:native("ImGui::ImHashData")
	@:overload(function(_data:imgui.VoidPointer, _data_size:cpp.SizeT):ImU32 { })
	static function imHashData(_data:imgui.VoidPointer, _data_size:cpp.SizeT, _seed:ImU32):ImU32;
	@:native("ImGui::ImGetDirQuadrantFromDelta")
	static function imGetDirQuadrantFromDelta(_dx:cpp.Float32, _dy:cpp.Float32):ImGuiDir;
	@:native("ImGui::ImFormatStringV")
	static function imFormatStringV(_buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):Int;
	@:native("ImGui::ImFormatString")
	static function imFormatString(_buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):Int;
	@:native("ImGui::ImFontAtlasBuildWithStbTruetype")
	static function imFontAtlasBuildWithStbTruetype(_atlas:cpp.Star<ImFontAtlas>):Bool;
	@:native("ImGui::ImFontAtlasBuildSetupFont")
	static function imFontAtlasBuildSetupFont(_atlas:cpp.Star<ImFontAtlas>, _font:cpp.Star<ImFont>, _font_config:cpp.Star<ImFontConfig>, _ascent:cpp.Float32, _descent:cpp.Float32):cpp.Void;
	@:native("ImGui::ImFontAtlasBuildPackCustomRects")
	static function imFontAtlasBuildPackCustomRects(_atlas:cpp.Star<ImFontAtlas>, _stbrp_context_opaque:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::ImFontAtlasBuildMultiplyRectAlpha8")
	static function imFontAtlasBuildMultiplyRectAlpha8(_table:imgui.CharPointer, _pixels:imgui.CharPointer, _x:Int, _y:Int, _w:Int, _h:Int, _stride:Int):cpp.Void;
	@:native("ImGui::ImFontAtlasBuildMultiplyCalcLookupTable")
	static function imFontAtlasBuildMultiplyCalcLookupTable(_out_table:imgui.CharPointer, _in_multiply_factor:cpp.Float32):cpp.Void;
	@:native("ImGui::ImFontAtlasBuildInit")
	static function imFontAtlasBuildInit(_atlas:cpp.Star<ImFontAtlas>):cpp.Void;
	@:native("ImGui::ImFontAtlasBuildFinish")
	static function imFontAtlasBuildFinish(_atlas:cpp.Star<ImFontAtlas>):cpp.Void;
	@:native("ImGui::ImFloor")
	@:overload(function(_pOut:cpp.Star<ImVec2>, _v:ImVec2):cpp.Void { })
	static function imFloor(_f:cpp.Float32):cpp.Float32;
	@:native("ImGui::ImFileWrite")
	static function imFileWrite(_data:imgui.VoidPointer, _size:ImU64, _count:ImU64, _file:ImFileHandle):ImU64;
	@:native("ImGui::ImFileRead")
	static function imFileRead(_data:imgui.VoidPointer, _size:ImU64, _count:ImU64, _file:ImFileHandle):ImU64;
	@:native("ImGui::ImFileOpen")
	static function imFileOpen(_filename:imgui.utils.VarConstCharStar, _mode:imgui.utils.VarConstCharStar):ImFileHandle;
	@:native("ImGui::ImFileLoadToMemory")
	@:overload(function(_filename:imgui.utils.VarConstCharStar, _mode:imgui.utils.VarConstCharStar, _padding_bytes:Int):imgui.VoidPointer { })
	@:overload(function(_filename:imgui.utils.VarConstCharStar, _mode:imgui.utils.VarConstCharStar):imgui.VoidPointer { })
	static function imFileLoadToMemory(_filename:imgui.utils.VarConstCharStar, _mode:imgui.utils.VarConstCharStar, _out_file_size:cpp.Star<cpp.SizeT>, _padding_bytes:Int):imgui.VoidPointer;
	@:native("ImGui::ImFileGetSize")
	static function imFileGetSize(_file:ImFileHandle):ImU64;
	@:native("ImGui::ImFileClose")
	static function imFileClose(_file:ImFileHandle):Bool;
	@:native("ImGui::ImDot")
	static function imDot(_a:ImVec2, _b:ImVec2):cpp.Float32;
	@:native("ImGui::ImClamp")
	static function imClamp(_pOut:cpp.Star<ImVec2>, _v:ImVec2, _mn:ImVec2, _mx:ImVec2):cpp.Void;
	@:native("ImGui::ImCharIsBlankW")
	static function imCharIsBlankW(_c:UInt):Bool;
	@:native("ImGui::ImCharIsBlankA")
	static function imCharIsBlankA(_c:cpp.Int8):Bool;
	@:native("ImGui::ImBitArrayTestBit")
	static function imBitArrayTestBit(_arr:cpp.Star<ImU32>, _n:Int):Bool;
	@:native("ImGui::ImBitArraySetBitRange")
	static function imBitArraySetBitRange(_arr:cpp.Star<ImU32>, _n:Int, _n2:Int):cpp.Void;
	@:native("ImGui::ImBitArraySetBit")
	static function imBitArraySetBit(_arr:cpp.Star<ImU32>, _n:Int):cpp.Void;
	@:native("ImGui::ImBitArrayClearBit")
	static function imBitArrayClearBit(_arr:cpp.Star<ImU32>, _n:Int):cpp.Void;
	@:native("ImGui::ImBezierClosestPointCasteljau")
	static function imBezierClosestPointCasteljau(_pOut:cpp.Star<ImVec2>, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _p:ImVec2, _tess_tol:cpp.Float32):cpp.Void;
	@:native("ImGui::ImBezierClosestPoint")
	static function imBezierClosestPoint(_pOut:cpp.Star<ImVec2>, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _p:ImVec2, _num_segments:Int):cpp.Void;
	@:native("ImGui::ImBezierCalc")
	static function imBezierCalc(_pOut:cpp.Star<ImVec2>, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _t:cpp.Float32):cpp.Void;
	@:native("ImGui::ImAlphaBlendColors")
	static function imAlphaBlendColors(_col_a:ImU32, _col_b:ImU32):ImU32;
	@:native("ImGui::GetWindowWidth")
	static function getWindowWidth():cpp.Float32;
	@:native("ImGui::GetWindowSize")
	static function getWindowSize(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetWindowScrollbarRect")
	static function getWindowScrollbarRect(_pOut:cpp.Star<ImRect>, _window:cpp.Star<ImGuiWindow>, _axis:ImGuiAxis):cpp.Void;
	@:native("ImGui::GetWindowScrollbarID")
	static function getWindowScrollbarID(_window:cpp.Star<ImGuiWindow>, _axis:ImGuiAxis):ImGuiID;
	@:native("ImGui::GetWindowResizeID")
	static function getWindowResizeID(_window:cpp.Star<ImGuiWindow>, _n:Int):ImGuiID;
	@:native("ImGui::GetWindowPos")
	static function getWindowPos(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetWindowHeight")
	static function getWindowHeight():cpp.Float32;
	@:native("ImGui::GetWindowDrawList")
	static function getWindowDrawList():cpp.Star<ImDrawList>;
	@:native("ImGui::GetWindowContentRegionWidth")
	static function getWindowContentRegionWidth():cpp.Float32;
	@:native("ImGui::GetWindowContentRegionMin")
	static function getWindowContentRegionMin(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetWindowContentRegionMax")
	static function getWindowContentRegionMax(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetWindowAllowedExtentRect")
	static function getWindowAllowedExtentRect(_pOut:cpp.Star<ImRect>, _window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::GetVersion")
	static function getVersion():imgui.utils.VarConstCharStar;
	@:native("ImGui::GetTreeNodeToLabelSpacing")
	static function getTreeNodeToLabelSpacing():cpp.Float32;
	@:native("ImGui::GetTopMostPopupModal")
	static function getTopMostPopupModal():cpp.Star<ImGuiWindow>;
	@:native("ImGui::GetTime")
	static function getTime():Float;
	@:native("ImGui::GetTextLineHeightWithSpacing")
	static function getTextLineHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetTextLineHeight")
	static function getTextLineHeight():cpp.Float32;
	@:native("ImGui::GetStyleColorVec4")
	static function getStyleColorVec4(_idx:ImGuiCol):cpp.Reference<ImVec4>;
	@:native("ImGui::GetStyleColorName")
	static function getStyleColorName(_idx:ImGuiCol):imgui.utils.VarConstCharStar;
	@:native("ImGui::GetStyle")
	static function getStyle():cpp.Reference<ImGuiStyle>;
	@:native("ImGui::GetStateStorage")
	static function getStateStorage():cpp.Star<ImGuiStorage>;
	@:native("ImGui::GetScrollY")
	static function getScrollY():cpp.Float32;
	@:native("ImGui::GetScrollX")
	static function getScrollX():cpp.Float32;
	@:native("ImGui::GetScrollMaxY")
	static function getScrollMaxY():cpp.Float32;
	@:native("ImGui::GetScrollMaxX")
	static function getScrollMaxX():cpp.Float32;
	@:native("ImGui::GetNavInputAmount2d")
	@:overload(function(_pOut:cpp.Star<ImVec2>, _dir_sources:ImGuiNavDirSourceFlags, _mode:ImGuiInputReadMode, _slow_factor:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _dir_sources:ImGuiNavDirSourceFlags, _mode:ImGuiInputReadMode):cpp.Void { })
	static function getNavInputAmount2d(_pOut:cpp.Star<ImVec2>, _dir_sources:ImGuiNavDirSourceFlags, _mode:ImGuiInputReadMode, _slow_factor:cpp.Float32, _fast_factor:cpp.Float32):cpp.Void;
	@:native("ImGui::GetNavInputAmount")
	static function getNavInputAmount(_n:ImGuiNavInput, _mode:ImGuiInputReadMode):cpp.Float32;
	@:native("ImGui::GetMousePosOnOpeningCurrentPopup")
	static function getMousePosOnOpeningCurrentPopup(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetMousePos")
	static function getMousePos(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetMouseDragDelta")
	@:overload(function(_pOut:cpp.Star<ImVec2>, _lock_threshold:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	static function getMouseDragDelta(_pOut:cpp.Star<ImVec2>, _button:ImGuiMouseButton, _lock_threshold:cpp.Float32):cpp.Void;
	@:native("ImGui::GetMouseCursor")
	static function getMouseCursor():ImGuiMouseCursor;
	@:native("ImGui::GetMergedKeyModFlags")
	static function getMergedKeyModFlags():ImGuiKeyModFlags;
	@:native("ImGui::GetKeyPressedAmount")
	static function getKeyPressedAmount(_key_index:Int, _repeat_delay:cpp.Float32, _rate:cpp.Float32):Int;
	@:native("ImGui::GetKeyIndex")
	static function getKeyIndex(_imgui_key:ImGuiKey):Int;
	@:native("ImGui::GetItemStatusFlags")
	static function getItemStatusFlags():ImGuiItemStatusFlags;
	@:native("ImGui::GetItemRectSize")
	static function getItemRectSize(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetItemRectMin")
	static function getItemRectMin(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetItemRectMax")
	static function getItemRectMax(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetItemID")
	static function getItemID():ImGuiID;
	@:native("ImGui::GetInputTextState")
	static function getInputTextState(_id:ImGuiID):cpp.Star<ImGuiInputTextState>;
	@:native("ImGui::GetIO")
	static function getIO():cpp.Reference<ImGuiIO>;
	@:native("ImGui::GetID")
	@:overload(function(_str_id_begin:imgui.utils.VarConstCharStar, _str_id_end:imgui.utils.VarConstCharStar):ImGuiID { })
	@:overload(function(_ptr_id:imgui.VoidPointer):ImGuiID { })
	static function getID(_str_id:imgui.utils.VarConstCharStar):ImGuiID;
	@:native("ImGui::GetHoveredID")
	static function getHoveredID():ImGuiID;
	@:native("ImGui::GetFrameHeightWithSpacing")
	static function getFrameHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetFrameHeight")
	static function getFrameHeight():cpp.Float32;
	@:native("ImGui::GetFrameCount")
	static function getFrameCount():Int;
	@:native("ImGui::GetForegroundDrawList")
	@:overload(function(_window:cpp.Star<ImGuiWindow>):cpp.Star<ImDrawList> { })
	static function getForegroundDrawList():cpp.Star<ImDrawList>;
	@:native("ImGui::GetFontTexUvWhitePixel")
	static function getFontTexUvWhitePixel(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetFontSize")
	static function getFontSize():cpp.Float32;
	@:native("ImGui::GetFont")
	static function getFont():cpp.Star<ImFont>;
	@:native("ImGui::GetFocusScopeID")
	static function getFocusScopeID():ImGuiID;
	@:native("ImGui::GetFocusID")
	static function getFocusID():ImGuiID;
	@:native("ImGui::GetDrawListSharedData")
	static function getDrawListSharedData():cpp.Star<ImDrawListSharedData>;
	@:native("ImGui::GetDrawData")
	static function getDrawData():cpp.Star<ImDrawData>;
	@:native("ImGui::GetDragDropPayload")
	static function getDragDropPayload():cpp.Star<ImGuiPayload>;
	@:native("ImGui::GetDefaultFont")
	static function getDefaultFont():cpp.Star<ImFont>;
	@:native("ImGui::GetCursorStartPos")
	static function getCursorStartPos(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetCursorScreenPos")
	static function getCursorScreenPos(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetCursorPosY")
	static function getCursorPosY():cpp.Float32;
	@:native("ImGui::GetCursorPosX")
	static function getCursorPosX():cpp.Float32;
	@:native("ImGui::GetCursorPos")
	static function getCursorPos(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetCurrentWindowRead")
	static function getCurrentWindowRead():cpp.Star<ImGuiWindow>;
	@:native("ImGui::GetCurrentWindow")
	static function getCurrentWindow():cpp.Star<ImGuiWindow>;
	@:native("ImGui::GetCurrentContext")
	static function getCurrentContext():cpp.Star<ImGuiContext>;
	@:native("ImGui::GetContentRegionMaxAbs")
	static function getContentRegionMaxAbs(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetContentRegionMax")
	static function getContentRegionMax(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetContentRegionAvail")
	static function getContentRegionAvail(_pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetColumnsID")
	static function getColumnsID(_str_id:imgui.utils.VarConstCharStar, _count:Int):ImGuiID;
	@:native("ImGui::GetColumnsCount")
	static function getColumnsCount():Int;
	@:native("ImGui::GetColumnWidth")
	@:overload(function():cpp.Float32 { })
	static function getColumnWidth(_column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnOffsetFromNorm")
	static function getColumnOffsetFromNorm(_columns:cpp.Star<ImGuiColumns>, _offset_norm:cpp.Float32):cpp.Float32;
	@:native("ImGui::GetColumnOffset")
	@:overload(function():cpp.Float32 { })
	static function getColumnOffset(_column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnNormFromOffset")
	static function getColumnNormFromOffset(_columns:cpp.Star<ImGuiColumns>, _offset:cpp.Float32):cpp.Float32;
	@:native("ImGui::GetColumnIndex")
	static function getColumnIndex():Int;
	@:native("ImGui::GetColorU32")
	@:overload(function(_idx:ImGuiCol):ImU32 { })
	@:overload(function(_col:ImVec4):ImU32 { })
	@:overload(function(_col:ImU32):ImU32 { })
	static function getColorU32(_idx:ImGuiCol, _alpha_mul:cpp.Float32):ImU32;
	@:native("ImGui::GetClipboardText")
	static function getClipboardText():imgui.utils.VarConstCharStar;
	@:native("ImGui::GetBackgroundDrawList")
	static function getBackgroundDrawList():cpp.Star<ImDrawList>;
	@:native("ImGui::GetActiveID")
	static function getActiveID():ImGuiID;
	@:native("ImGui::GcCompactTransientWindowBuffers")
	static function gcCompactTransientWindowBuffers(_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::GcAwakeTransientWindowBuffers")
	static function gcAwakeTransientWindowBuffers(_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::FocusableItemUnregister")
	static function focusableItemUnregister(_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::FocusableItemRegister")
	static function focusableItemRegister(_window:cpp.Star<ImGuiWindow>, _id:ImGuiID):Bool;
	@:native("ImGui::FocusWindow")
	static function focusWindow(_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::FocusTopMostWindowUnderOne")
	static function focusTopMostWindowUnderOne(_under_this_window:cpp.Star<ImGuiWindow>, _ignore_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::FindWindowSettings")
	static function findWindowSettings(_id:ImGuiID):cpp.Star<ImGuiWindowSettings>;
	@:native("ImGui::FindWindowByName")
	static function findWindowByName(_name:imgui.utils.VarConstCharStar):cpp.Star<ImGuiWindow>;
	@:native("ImGui::FindWindowByID")
	static function findWindowByID(_id:ImGuiID):cpp.Star<ImGuiWindow>;
	@:native("ImGui::FindSettingsHandler")
	static function findSettingsHandler(_type_name:imgui.utils.VarConstCharStar):cpp.Star<ImGuiSettingsHandler>;
	@:native("ImGui::FindRenderedTextEnd")
	@:overload(function(_text:imgui.utils.VarConstCharStar):imgui.utils.VarConstCharStar { })
	static function findRenderedTextEnd(_text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar):imgui.utils.VarConstCharStar;
	@:native("ImGui::FindOrCreateWindowSettings")
	static function findOrCreateWindowSettings(_name:imgui.utils.VarConstCharStar):cpp.Star<ImGuiWindowSettings>;
	@:native("ImGui::FindOrCreateColumns")
	static function findOrCreateColumns(_window:cpp.Star<ImGuiWindow>, _id:ImGuiID):cpp.Star<ImGuiColumns>;
	@:native("ImGui::FindBestWindowPosForPopupEx")
	@:overload(function(_pOut:cpp.Star<ImVec2>, _ref_pos:ImVec2, _size:ImVec2, _last_dir:cpp.Star<ImGuiDir>, _r_outer:ImRect, _r_avoid:ImRect):cpp.Void { })
	static function findBestWindowPosForPopupEx(_pOut:cpp.Star<ImVec2>, _ref_pos:ImVec2, _size:ImVec2, _last_dir:cpp.Star<ImGuiDir>, _r_outer:ImRect, _r_avoid:ImRect, _policy:ImGuiPopupPositionPolicy):cpp.Void;
	@:native("ImGui::FindBestWindowPosForPopup")
	static function findBestWindowPosForPopup(_pOut:cpp.Star<ImVec2>, _window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::EndTooltip")
	static function endTooltip():cpp.Void;
	@:native("ImGui::EndTabItem")
	static function endTabItem():cpp.Void;
	@:native("ImGui::EndTabBar")
	static function endTabBar():cpp.Void;
	@:native("ImGui::EndPopup")
	static function endPopup():cpp.Void;
	@:native("ImGui::EndMenuBar")
	static function endMenuBar():cpp.Void;
	@:native("ImGui::EndMenu")
	static function endMenu():cpp.Void;
	@:native("ImGui::EndMainMenuBar")
	static function endMainMenuBar():cpp.Void;
	@:native("ImGui::EndGroup")
	static function endGroup():cpp.Void;
	@:native("ImGui::EndFrame")
	static function endFrame():cpp.Void;
	@:native("ImGui::EndDragDropTarget")
	static function endDragDropTarget():cpp.Void;
	@:native("ImGui::EndDragDropSource")
	static function endDragDropSource():cpp.Void;
	@:native("ImGui::EndCombo")
	static function endCombo():cpp.Void;
	@:native("ImGui::EndColumns")
	static function endColumns():cpp.Void;
	@:native("ImGui::EndChildFrame")
	static function endChildFrame():cpp.Void;
	@:native("ImGui::EndChild")
	static function endChild():cpp.Void;
	@:native("ImGui::End")
	static function end():cpp.Void;
	@:native("ImGui::Dummy")
	static function dummy(_size:ImVec2):cpp.Void;
	@:native("ImGui::DragScalarN")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32):Bool { })
	static function dragScalarN(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragScalar")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32):Bool { })
	static function dragScalar(_label:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragIntRange2")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format_max:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer):Bool { })
	static function dragIntRange2(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar, _format_max:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::DragInt4")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer):Bool { })
	static function dragInt4(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::DragInt3")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer):Bool { })
	static function dragInt3(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::DragInt2")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer):Bool { })
	static function dragInt2(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::DragInt")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer):Bool { })
	static function dragInt(_label:imgui.utils.VarConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::DragFloatRange2")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format_max:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer):Bool { })
	static function dragFloatRange2(_label:imgui.utils.VarConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _format_max:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat4")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function dragFloat4(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat3")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function dragFloat3(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat2")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function dragFloat2(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function dragFloat(_label:imgui.utils.VarConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragBehavior")
	static function dragBehavior(_id:ImGuiID, _data_type:ImGuiDataType, _p_v:imgui.VoidPointer, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar, _power:cpp.Float32, _flags:ImGuiDragFlags):Bool;
	@:native("ImGui::DestroyContext")
	@:overload(function():cpp.Void { })
	static function destroyContext(_ctx:cpp.Star<ImGuiContext>):cpp.Void;
	@:native("ImGui::DebugStartItemPicker")
	static function debugStartItemPicker():cpp.Void;
	@:native("ImGui::DebugDrawItemRect")
	@:overload(function():cpp.Void { })
	static function debugDrawItemRect(_col:ImU32):cpp.Void;
	@:native("ImGui::DebugCheckVersionAndDataLayout")
	static function debugCheckVersionAndDataLayout(_version_str:imgui.utils.VarConstCharStar, _sz_io:cpp.SizeT, _sz_style:cpp.SizeT, _sz_vec2:cpp.SizeT, _sz_vec4:cpp.SizeT, _sz_drawvert:cpp.SizeT, _sz_drawidx:cpp.SizeT):Bool;
	@:native("ImGui::DataTypeGetInfo")
	static function dataTypeGetInfo(_data_type:ImGuiDataType):cpp.Star<ImGuiDataTypeInfo>;
	@:native("ImGui::DataTypeFormatString")
	static function dataTypeFormatString(_buf:cpp.Star<cpp.Int8>, _buf_size:Int, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar):Int;
	@:native("ImGui::DataTypeClamp")
	static function dataTypeClamp(_data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer):Bool;
	@:native("ImGui::DataTypeApplyOpFromText")
	static function dataTypeApplyOpFromText(_buf:imgui.utils.VarConstCharStar, _initial_value_buf:imgui.utils.VarConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _format:imgui.utils.VarConstCharStar):Bool;
	@:native("ImGui::DataTypeApplyOp")
	static function dataTypeApplyOp(_data_type:ImGuiDataType, _op:Int, _output:imgui.VoidPointer, _arg_1:imgui.VoidPointer, _arg_2:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::CreateNewWindowSettings")
	static function createNewWindowSettings(_name:imgui.utils.VarConstCharStar):cpp.Star<ImGuiWindowSettings>;
	@:native("ImGui::CreateContext")
	@:overload(function():cpp.Star<ImGuiContext> { })
	static function createContext(_shared_font_atlas:cpp.Star<ImFontAtlas>):cpp.Star<ImGuiContext>;
	@:native("ImGui::Combo")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items:cpp.RawPointer<imgui.utils.VarConstCharStar>, _items_count:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items_separated_by_zeros:imgui.utils.VarConstCharStar, _popup_max_height_in_items:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items_separated_by_zeros:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int, cpp.Star<cpp.RawConstPointer<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int, _popup_max_height_in_items:Int):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int, cpp.Star<cpp.RawConstPointer<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int):Bool { })
	static function combo(_label:imgui.utils.VarConstCharStar, _current_item:imgui.IntPointer, _items:cpp.RawPointer<imgui.utils.VarConstCharStar>, _items_count:Int, _popup_max_height_in_items:Int):Bool;
	@:native("ImGui::Columns")
	@:overload(function(_count:Int, _id:imgui.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(_id:imgui.utils.VarConstCharStar):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function columns(_count:Int, _id:imgui.utils.VarConstCharStar, _border:Bool):cpp.Void;
	@:native("ImGui::ColorTooltip")
	static function colorTooltip(_text:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer, _flags:ImGuiColorEditFlags):cpp.Void;
	@:native("ImGui::ColorPickerOptionsPopup")
	static function colorPickerOptionsPopup(_ref_col:imgui.FloatPointer, _flags:ImGuiColorEditFlags):cpp.Void;
	@:native("ImGui::ColorPicker4")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer, _ref_col:imgui.FloatPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer):Bool { })
	static function colorPicker4(_label:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer, _flags:ImGuiColorEditFlags, _ref_col:imgui.FloatPointer):Bool;
	@:native("ImGui::ColorPicker3")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer):Bool { })
	static function colorPicker3(_label:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer, _flags:ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorEditOptionsPopup")
	static function colorEditOptionsPopup(_col:imgui.FloatPointer, _flags:ImGuiColorEditFlags):cpp.Void;
	@:native("ImGui::ColorEdit4")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer):Bool { })
	static function colorEdit4(_label:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer, _flags:ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorEdit3")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer):Bool { })
	static function colorEdit3(_label:imgui.utils.VarConstCharStar, _col:imgui.FloatPointer, _flags:ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorConvertU32ToFloat4")
	static function colorConvertU32ToFloat4(_pOut:cpp.Star<ImVec4>, _in:ImU32):cpp.Void;
	@:native("ImGui::ColorConvertRGBtoHSV")
	static function colorConvertRGBtoHSV(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32, _out_h:imgui.FloatPointer, _out_s:imgui.FloatPointer, _out_v:imgui.FloatPointer):cpp.Void;
	@:native("ImGui::ColorConvertHSVtoRGB")
	static function colorConvertHSVtoRGB(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _out_r:imgui.FloatPointer, _out_g:imgui.FloatPointer, _out_b:imgui.FloatPointer):cpp.Void;
	@:native("ImGui::ColorConvertFloat4ToU32")
	static function colorConvertFloat4ToU32(_in:ImVec4):ImU32;
	@:native("ImGui::ColorButton")
	@:overload(function(_desc_id:imgui.utils.VarConstCharStar, _col:ImVec4, _size:ImVec2):Bool { })
	@:overload(function(_desc_id:imgui.utils.VarConstCharStar, _col:ImVec4):Bool { })
	static function colorButton(_desc_id:imgui.utils.VarConstCharStar, _col:ImVec4, _flags:ImGuiColorEditFlags, _size:ImVec2):Bool;
	@:native("ImGui::CollapsingHeader")
	@:overload(function(_label:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _p_open:imgui.BoolPointer, _flags:ImGuiTreeNodeFlags):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar, _p_open:imgui.BoolPointer):Bool { })
	static function collapsingHeader(_label:imgui.utils.VarConstCharStar, _flags:ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::CollapseButton")
	static function collapseButton(_id:ImGuiID, _pos:ImVec2):Bool;
	@:native("ImGui::ClosePopupsOverWindow")
	static function closePopupsOverWindow(_ref_window:cpp.Star<ImGuiWindow>, _restore_focus_to_window_under_popup:Bool):cpp.Void;
	@:native("ImGui::ClosePopupToLevel")
	static function closePopupToLevel(_remaining:Int, _restore_focus_to_window_under_popup:Bool):cpp.Void;
	@:native("ImGui::CloseCurrentPopup")
	static function closeCurrentPopup():cpp.Void;
	@:native("ImGui::CloseButton")
	static function closeButton(_id:ImGuiID, _pos:ImVec2):Bool;
	@:native("ImGui::ClearIniSettings")
	static function clearIniSettings():cpp.Void;
	@:native("ImGui::ClearDragDrop")
	static function clearDragDrop():cpp.Void;
	@:native("ImGui::ClearActiveID")
	static function clearActiveID():cpp.Void;
	@:native("ImGui::CheckboxFlags")
	static function checkboxFlags(_label:imgui.utils.VarConstCharStar, _flags:cpp.Star<UInt>, _flags_value:UInt):Bool;
	@:native("ImGui::Checkbox")
	static function checkbox(_label:imgui.utils.VarConstCharStar, _v:imgui.BoolPointer):Bool;
	@:native("ImGui::CaptureMouseFromApp")
	@:overload(function():cpp.Void { })
	static function captureMouseFromApp(_want_capture_mouse_value:Bool):cpp.Void;
	@:native("ImGui::CaptureKeyboardFromApp")
	@:overload(function():cpp.Void { })
	static function captureKeyboardFromApp(_want_capture_keyboard_value:Bool):cpp.Void;
	@:native("ImGui::CalcWrapWidthForPos")
	static function calcWrapWidthForPos(_pos:ImVec2, _wrap_pos_x:cpp.Float32):cpp.Float32;
	@:native("ImGui::CalcWindowExpectedSize")
	static function calcWindowExpectedSize(_pOut:cpp.Star<ImVec2>, _window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::CalcTypematicRepeatAmount")
	static function calcTypematicRepeatAmount(_t0:cpp.Float32, _t1:cpp.Float32, _repeat_delay:cpp.Float32, _repeat_rate:cpp.Float32):Int;
	@:native("ImGui::CalcTextSize")
	@:overload(function(_pOut:cpp.Star<ImVec2>, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _text:imgui.utils.VarConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _text:imgui.utils.VarConstCharStar):cpp.Void { })
	static function calcTextSize(_pOut:cpp.Star<ImVec2>, _text:imgui.utils.VarConstCharStar, _text_end:imgui.utils.VarConstCharStar, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):cpp.Void;
	@:native("ImGui::CalcListClipping")
	static function calcListClipping(_items_count:Int, _items_height:cpp.Float32, _out_items_display_start:imgui.IntPointer, _out_items_display_end:imgui.IntPointer):cpp.Void;
	@:native("ImGui::CalcItemWidth")
	static function calcItemWidth():cpp.Float32;
	@:native("ImGui::CalcItemSize")
	static function calcItemSize(_pOut:cpp.Star<ImVec2>, _size:ImVec2, _default_w:cpp.Float32, _default_h:cpp.Float32):cpp.Void;
	@:native("ImGui::ButtonEx")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _size_arg:ImVec2):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar):Bool { })
	static function buttonEx(_label:imgui.utils.VarConstCharStar, _size_arg:ImVec2, _flags:ImGuiButtonFlags):Bool;
	@:native("ImGui::ButtonBehavior")
	@:overload(function(_bb:ImRect, _id:ImGuiID, _out_hovered:imgui.BoolPointer, _out_held:imgui.BoolPointer):Bool { })
	static function buttonBehavior(_bb:ImRect, _id:ImGuiID, _out_hovered:imgui.BoolPointer, _out_held:imgui.BoolPointer, _flags:ImGuiButtonFlags):Bool;
	@:native("ImGui::Button")
	@:overload(function(_label:imgui.utils.VarConstCharStar):Bool { })
	static function button(_label:imgui.utils.VarConstCharStar, _size:ImVec2):Bool;
	@:native("ImGui::BulletTextV")
	static function bulletTextV(_fmt:imgui.utils.VarConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::BulletText")
	static function bulletText(_fmt:imgui.utils.VarConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::Bullet")
	static function bullet():cpp.Void;
	@:native("ImGui::BringWindowToFocusFront")
	static function bringWindowToFocusFront(_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::BringWindowToDisplayFront")
	static function bringWindowToDisplayFront(_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::BringWindowToDisplayBack")
	static function bringWindowToDisplayBack(_window:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("ImGui::BeginTooltipEx")
	static function beginTooltipEx(_extra_flags:ImGuiWindowFlags, _tooltip_flags:ImGuiTooltipFlags):cpp.Void;
	@:native("ImGui::BeginTooltip")
	static function beginTooltip():cpp.Void;
	@:native("ImGui::BeginTabItem")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _p_open:imgui.BoolPointer):Bool { })
	@:overload(function(_label:imgui.utils.VarConstCharStar):Bool { })
	static function beginTabItem(_label:imgui.utils.VarConstCharStar, _p_open:imgui.BoolPointer, _flags:ImGuiTabItemFlags):Bool;
	@:native("ImGui::BeginTabBarEx")
	static function beginTabBarEx(_tab_bar:cpp.Star<ImGuiTabBar>, _bb:ImRect, _flags:ImGuiTabBarFlags):Bool;
	@:native("ImGui::BeginTabBar")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar):Bool { })
	static function beginTabBar(_str_id:imgui.utils.VarConstCharStar, _flags:ImGuiTabBarFlags):Bool;
	@:native("ImGui::BeginPopupModal")
	@:overload(function(_name:imgui.utils.VarConstCharStar, _p_open:imgui.BoolPointer):Bool { })
	@:overload(function(_name:imgui.utils.VarConstCharStar):Bool { })
	static function beginPopupModal(_name:imgui.utils.VarConstCharStar, _p_open:imgui.BoolPointer, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginPopupEx")
	static function beginPopupEx(_id:ImGuiID, _extra_flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginPopupContextWindow")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextWindow(_str_id:imgui.utils.VarConstCharStar, _popup_flags:ImGuiPopupFlags):Bool;
	@:native("ImGui::BeginPopupContextVoid")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextVoid(_str_id:imgui.utils.VarConstCharStar, _popup_flags:ImGuiPopupFlags):Bool;
	@:native("ImGui::BeginPopupContextItem")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextItem(_str_id:imgui.utils.VarConstCharStar, _popup_flags:ImGuiPopupFlags):Bool;
	@:native("ImGui::BeginPopup")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar):Bool { })
	static function beginPopup(_str_id:imgui.utils.VarConstCharStar, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginMenuBar")
	static function beginMenuBar():Bool;
	@:native("ImGui::BeginMenu")
	@:overload(function(_label:imgui.utils.VarConstCharStar):Bool { })
	static function beginMenu(_label:imgui.utils.VarConstCharStar, _enabled:Bool):Bool;
	@:native("ImGui::BeginMainMenuBar")
	static function beginMainMenuBar():Bool;
	@:native("ImGui::BeginGroup")
	static function beginGroup():cpp.Void;
	@:native("ImGui::BeginDragDropTargetCustom")
	static function beginDragDropTargetCustom(_bb:ImRect, _id:ImGuiID):Bool;
	@:native("ImGui::BeginDragDropTarget")
	static function beginDragDropTarget():Bool;
	@:native("ImGui::BeginDragDropSource")
	@:overload(function():Bool { })
	static function beginDragDropSource(_flags:ImGuiDragDropFlags):Bool;
	@:native("ImGui::BeginCombo")
	@:overload(function(_label:imgui.utils.VarConstCharStar, _preview_value:imgui.utils.VarConstCharStar):Bool { })
	static function beginCombo(_label:imgui.utils.VarConstCharStar, _preview_value:imgui.utils.VarConstCharStar, _flags:ImGuiComboFlags):Bool;
	@:native("ImGui::BeginColumns")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar, _count:Int):cpp.Void { })
	static function beginColumns(_str_id:imgui.utils.VarConstCharStar, _count:Int, _flags:ImGuiColumnsFlags):cpp.Void;
	@:native("ImGui::BeginChildFrame")
	@:overload(function(_id:ImGuiID, _size:ImVec2):Bool { })
	static function beginChildFrame(_id:ImGuiID, _size:ImVec2, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginChildEx")
	static function beginChildEx(_name:imgui.utils.VarConstCharStar, _id:ImGuiID, _size_arg:ImVec2, _border:Bool, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginChild")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar, _size:ImVec2, _flags:ImGuiWindowFlags):Bool { })
	@:overload(function(_str_id:imgui.utils.VarConstCharStar, _size:ImVec2):Bool { })
	@:overload(function(_str_id:imgui.utils.VarConstCharStar):Bool { })
	@:overload(function(_id:ImGuiID, _size:ImVec2, _border:Bool, _flags:ImGuiWindowFlags):Bool { })
	@:overload(function(_id:ImGuiID, _size:ImVec2, _flags:ImGuiWindowFlags):Bool { })
	@:overload(function(_id:ImGuiID, _size:ImVec2):Bool { })
	@:overload(function(_id:ImGuiID):Bool { })
	static function beginChild(_str_id:imgui.utils.VarConstCharStar, _size:ImVec2, _border:Bool, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::Begin")
	@:overload(function(_name:imgui.utils.VarConstCharStar, _p_open:imgui.BoolPointer):Bool { })
	@:overload(function(_name:imgui.utils.VarConstCharStar):Bool { })
	static function begin(_name:imgui.utils.VarConstCharStar, _p_open:imgui.BoolPointer, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::ArrowButtonEx")
	@:overload(function(_str_id:imgui.utils.VarConstCharStar, _dir:ImGuiDir, _size_arg:ImVec2):Bool { })
	static function arrowButtonEx(_str_id:imgui.utils.VarConstCharStar, _dir:ImGuiDir, _size_arg:ImVec2, _flags:ImGuiButtonFlags):Bool;
	@:native("ImGui::ArrowButton")
	static function arrowButton(_str_id:imgui.utils.VarConstCharStar, _dir:ImGuiDir):Bool;
	@:native("ImGui::AlignTextToFramePadding")
	static function alignTextToFramePadding():cpp.Void;
	@:native("ImGui::ActivateItem")
	static function activateItem(_id:ImGuiID):cpp.Void;
	@:native("ImGui::AcceptDragDropPayload")
	@:overload(function(_type:imgui.utils.VarConstCharStar):cpp.Star<ImGuiPayload> { })
	static function acceptDragDropPayload(_type:imgui.utils.VarConstCharStar, _flags:ImGuiDragDropFlags):cpp.Star<ImGuiPayload>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector") extern class ImVector<T> {
	@:native("Data")
	var data : cpp.RawPointer<T>;
	@:native("swap")
	function swap(_rhs:cpp.Star<ImVector<T>>):cpp.Void;
	@:native("size_in_bytes")
	function size_in_bytes():Int;
	@:native("size")
	function size():Int;
	@:native("shrink")
	function shrink(_new_size:Int):cpp.Void;
	@:native("resize")
	@:overload(function(_new_size:Int, _v:T):cpp.Void { })
	function resize(_new_size:Int):cpp.Void;
	@:native("reserve")
	function reserve(_new_capacity:Int):cpp.Void;
	@:native("push_front")
	function push_front(_v:T):cpp.Void;
	@:native("push_back")
	function push_back(_v:T):cpp.Void;
	@:native("pop_back")
	function pop_back():cpp.Void;
	@:native("insert")
	function insert(_it:cpp.Star<T>, _v:T):cpp.Star<T>;
	@:native("index_from_ptr")
	function index_from_ptr(_it:cpp.Star<T>):Int;
	@:native("front")
	@:overload(function():cpp.Reference<T> { })
	function front():cpp.Reference<T>;
	@:native("find_erase_unsorted")
	function find_erase_unsorted(_v:T):Bool;
	@:native("find_erase")
	function find_erase(_v:T):Bool;
	@:native("find")
	@:overload(function(_v:T):cpp.Star<T> { })
	function find(_v:T):cpp.Star<T>;
	@:native("erase_unsorted")
	function erase_unsorted(_it:cpp.Star<T>):cpp.Star<T>;
	@:native("erase")
	@:overload(function(_it:cpp.Star<T>, _it_last:cpp.Star<T>):cpp.Star<T> { })
	function erase(_it:cpp.Star<T>):cpp.Star<T>;
	@:native("end")
	@:overload(function():cpp.Star<T> { })
	function end():cpp.Star<T>;
	@:native("empty")
	function empty():Bool;
	@:native("contains")
	function contains(_v:T):Bool;
	@:native("clear")
	function clear():cpp.Void;
	@:native("capacity")
	function capacity():Int;
	@:native("begin")
	@:overload(function():cpp.Star<T> { })
	function begin():cpp.Star<T>;
	@:native("back")
	@:overload(function():cpp.Reference<T> { })
	function back():cpp.Reference<T>;
	@:native("_grow_capacity")
	function _grow_capacity(_sz:Int):Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiWindow*>") extern class ImVectorImGuiWindowPointer extends ImVector<cpp.Star<ImGuiWindow>> {
	@:native("ImVector<ImGuiWindow*>")
	@:overload(function(_src:ImVectorImGuiWindowPointer):ImVectorImGuiWindowPointer { })
	static function create():ImVectorImGuiWindowPointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiItemFlags>") extern class ImVectorImGuiItemFlags extends ImVector<ImGuiItemFlags> {
	@:native("ImVector<ImGuiItemFlags>")
	@:overload(function(_src:ImVectorImGuiItemFlags):ImVectorImGuiItemFlags { })
	static function create():ImVectorImGuiItemFlags;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<float>") extern class ImVectorfloat extends ImVector<cpp.Float32> {
	@:native("ImVector<float>")
	@:overload(function(_src:ImVectorfloat):ImVectorfloat { })
	static function create():ImVectorfloat;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiGroupData>") extern class ImVectorImGuiGroupData extends ImVector<ImGuiGroupData> {
	@:native("ImVector<ImGuiGroupData>")
	@:overload(function(_src:ImVectorImGuiGroupData):ImVectorImGuiGroupData { })
	static function create():ImVectorImGuiGroupData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiID>") extern class ImVectorImGuiID extends ImVector<ImGuiID> {
	@:native("ImVector<ImGuiID>")
	@:overload(function(_src:ImVectorImGuiID):ImVectorImGuiID { })
	static function create():ImVectorImGuiID;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiColumns>") extern class ImVectorImGuiColumns extends ImVector<ImGuiColumns> {
	@:native("ImVector<ImGuiColumns>")
	@:overload(function(_src:ImVectorImGuiColumns):ImVectorImGuiColumns { })
	static function create():ImVectorImGuiColumns;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTextRange>") extern class ImVectorImGuiTextRange extends ImVector<ImGuiTextRange> {
	@:native("ImVector<ImGuiTextRange>")
	@:overload(function(_src:ImVectorImGuiTextRange):ImVectorImGuiTextRange { })
	static function create():ImVectorImGuiTextRange;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<char>") extern class ImVectorchar extends ImVector<cpp.Int8> {
	@:native("ImVector<char>")
	@:overload(function(_src:ImVectorchar):ImVectorchar { })
	static function create():ImVectorchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTabItem>") extern class ImVectorImGuiTabItem extends ImVector<ImGuiTabItem> {
	@:native("ImVector<ImGuiTabItem>")
	@:overload(function(_src:ImVectorImGuiTabItem):ImVectorImGuiTabItem { })
	static function create():ImVectorImGuiTabItem;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiStoragePair>") extern class ImVectorImGuiStoragePair extends ImVector<ImGuiStoragePair> {
	@:native("ImVector<ImGuiStoragePair>")
	@:overload(function(_src:ImVectorImGuiStoragePair):ImVectorImGuiStoragePair { })
	static function create():ImVectorImGuiStoragePair;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImWchar>") extern class ImVectorImWchar extends ImVector<ImWchar> {
	@:native("ImVector<ImWchar>")
	@:overload(function(_src:ImVectorImWchar):ImVectorImWchar { })
	static function create():ImVectorImWchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiColorMod>") extern class ImVectorImGuiColorMod extends ImVector<ImGuiColorMod> {
	@:native("ImVector<ImGuiColorMod>")
	@:overload(function(_src:ImVectorImGuiColorMod):ImVectorImGuiColorMod { })
	static function create():ImVectorImGuiColorMod;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiStyleMod>") extern class ImVectorImGuiStyleMod extends ImVector<ImGuiStyleMod> {
	@:native("ImVector<ImGuiStyleMod>")
	@:overload(function(_src:ImVectorImGuiStyleMod):ImVectorImGuiStyleMod { })
	static function create():ImVectorImGuiStyleMod;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFont*>") extern class ImVectorImFontPointer extends ImVector<cpp.Star<ImFont>> {
	@:native("ImVector<ImFont*>")
	@:overload(function(_src:ImVectorImFontPointer):ImVectorImFontPointer { })
	static function create():ImVectorImFontPointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiPopupData>") extern class ImVectorImGuiPopupData extends ImVector<ImGuiPopupData> {
	@:native("ImVector<ImGuiPopupData>")
	@:overload(function(_src:ImVectorImGuiPopupData):ImVectorImGuiPopupData { })
	static function create():ImVectorImGuiPopupData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<unsigned char>") extern class ImVectorunsignedchar extends ImVector<cpp.UInt8> {
	@:native("ImVector<unsigned char>")
	@:overload(function(_src:ImVectorunsignedchar):ImVectorunsignedchar { })
	static function create():ImVectorunsignedchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTabBar>") extern class ImVectorImGuiTabBar extends ImVector<ImGuiTabBar> {
	@:native("ImVector<ImGuiTabBar>")
	@:overload(function(_src:ImVectorImGuiTabBar):ImVectorImGuiTabBar { })
	static function create():ImVectorImGuiTabBar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiPtrOrIndex>") extern class ImVectorImGuiPtrOrIndex extends ImVector<ImGuiPtrOrIndex> {
	@:native("ImVector<ImGuiPtrOrIndex>")
	@:overload(function(_src:ImVectorImGuiPtrOrIndex):ImVectorImGuiPtrOrIndex { })
	static function create():ImVectorImGuiPtrOrIndex;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiShrinkWidthItem>") extern class ImVectorImGuiShrinkWidthItem extends ImVector<ImGuiShrinkWidthItem> {
	@:native("ImVector<ImGuiShrinkWidthItem>")
	@:overload(function(_src:ImVectorImGuiShrinkWidthItem):ImVectorImGuiShrinkWidthItem { })
	static function create():ImVectorImGuiShrinkWidthItem;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiSettingsHandler>") extern class ImVectorImGuiSettingsHandler extends ImVector<ImGuiSettingsHandler> {
	@:native("ImVector<ImGuiSettingsHandler>")
	@:overload(function(_src:ImVectorImGuiSettingsHandler):ImVectorImGuiSettingsHandler { })
	static function create():ImVectorImGuiSettingsHandler;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiWindowSettings>") extern class ImVectorImGuiWindowSettings extends ImVector<ImGuiWindowSettings> {
	@:native("ImVector<ImGuiWindowSettings>")
	@:overload(function(_src:ImVectorImGuiWindowSettings):ImVectorImGuiWindowSettings { })
	static function create():ImVectorImGuiWindowSettings;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiColumnData>") extern class ImVectorImGuiColumnData extends ImVector<ImGuiColumnData> {
	@:native("ImVector<ImGuiColumnData>")
	@:overload(function(_src:ImVectorImGuiColumnData):ImVectorImGuiColumnData { })
	static function create():ImVectorImGuiColumnData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImU32>") extern class ImVectorImU32 extends ImVector<ImU32> {
	@:native("ImVector<ImU32>")
	@:overload(function(_src:ImVectorImU32):ImVectorImU32 { })
	static function create():ImVectorImU32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontAtlasCustomRect>") extern class ImVectorImFontAtlasCustomRect extends ImVector<ImFontAtlasCustomRect> {
	@:native("ImVector<ImFontAtlasCustomRect>")
	@:overload(function(_src:ImVectorImFontAtlasCustomRect):ImVectorImFontAtlasCustomRect { })
	static function create():ImVectorImFontAtlasCustomRect;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontConfig>") extern class ImVectorImFontConfig extends ImVector<ImFontConfig> {
	@:native("ImVector<ImFontConfig>")
	@:overload(function(_src:ImVectorImFontConfig):ImVectorImFontConfig { })
	static function create():ImVectorImFontConfig;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontGlyph>") extern class ImVectorImFontGlyph extends ImVector<ImFontGlyph> {
	@:native("ImVector<ImFontGlyph>")
	@:overload(function(_src:ImVectorImFontGlyph):ImVectorImFontGlyph { })
	static function create():ImVectorImFontGlyph;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawChannel>") extern class ImVectorImDrawChannel extends ImVector<ImDrawChannel> {
	@:native("ImVector<ImDrawChannel>")
	@:overload(function(_src:ImVectorImDrawChannel):ImVectorImDrawChannel { })
	static function create():ImVectorImDrawChannel;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawCmd>") extern class ImVectorImDrawCmd extends ImVector<ImDrawCmd> {
	@:native("ImVector<ImDrawCmd>")
	@:overload(function(_src:ImVectorImDrawCmd):ImVectorImDrawCmd { })
	static function create():ImVectorImDrawCmd;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawIdx>") extern class ImVectorImDrawIdx extends ImVector<ImDrawIdx> {
	@:native("ImVector<ImDrawIdx>")
	@:overload(function(_src:ImVectorImDrawIdx):ImVectorImDrawIdx { })
	static function create():ImVectorImDrawIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawVert>") extern class ImVectorImDrawVert extends ImVector<ImDrawVert> {
	@:native("ImVector<ImDrawVert>")
	@:overload(function(_src:ImVectorImDrawVert):ImVectorImDrawVert { })
	static function create():ImVectorImDrawVert;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImVec4>") extern class ImVectorImVec4 extends ImVector<ImVec4> {
	@:native("ImVector<ImVec4>")
	@:overload(function(_src:ImVectorImVec4):ImVectorImVec4 { })
	static function create():ImVectorImVec4;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImTextureID>") extern class ImVectorImTextureID extends ImVector<ImTextureID> {
	@:native("ImVector<ImTextureID>")
	@:overload(function(_src:ImVectorImTextureID):ImVectorImTextureID { })
	static function create():ImVectorImTextureID;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImVec2>") extern class ImVectorImVec2 extends ImVector<ImVec2> {
	@:native("ImVector<ImVec2>")
	@:overload(function(_src:ImVectorImVec2):ImVectorImVec2 { })
	static function create():ImVectorImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawList*>") extern class ImVectorImDrawListPointer extends ImVector<cpp.Star<ImDrawList>> {
	@:native("ImVector<ImDrawList*>")
	@:overload(function(_src:ImVectorImDrawListPointer):ImVectorImDrawListPointer { })
	static function create():ImVectorImDrawListPointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTextRange*>") extern class ImVectorImGuiTextRangePointer extends ImVector<cpp.Star<ImGuiTextRange>> {
	@:native("ImVector<ImGuiTextRange*>")
	@:overload(function(_src:ImVectorImGuiTextRangePointer):ImVectorImGuiTextRangePointer { })
	static function create():ImVectorImGuiTextRangePointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImWchar*>") extern class ImVectorImWcharPointer extends ImVector<cpp.Star<ImWchar>> {
	@:native("ImVector<ImWchar*>")
	@:overload(function(_src:ImVectorImWcharPointer):ImVectorImWcharPointer { })
	static function create():ImVectorImWcharPointer;
}

