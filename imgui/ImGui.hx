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

typedef ImGuiSizeCallback = cpp.Callable<cpp.Star<imgui.ImGuiSizeCallbackData> -> cpp.Void>;

typedef ImGuiInputTextCallback = cpp.Callable<imgui.ImGuiInputTextCallbackData -> Int>;

typedef ImGuiID = UInt;

typedef ImDrawIdx = cpp.UInt16;

typedef ImDrawCallback = cpp.Callable<(cpp.Star<imgui.ImDrawList>, cpp.Star<imgui.ImDrawCmd>) -> cpp.Void>;

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

@:enum abstract ImGuiTabItemFlags(Int) from Int to Int {
	var None : Int = 0;
	var UnsavedDocument : Int = 1;
	var SetSelected : Int = 2;
	var NoCloseWithMiddleMouseButton : Int = 4;
	var NoPushId : Int = 8;
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

@:enum abstract ImGuiSelectableFlags(Int) from Int to Int {
	var None : Int = 0;
	var DontClosePopups : Int = 1;
	var SpanAllColumns : Int = 2;
	var AllowDoubleClick : Int = 4;
	var Disabled : Int = 8;
	var AllowItemOverlap : Int = 16;
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

@:enum abstract ImGuiBackendFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasGamepad : Int = 1;
	var HasMouseCursors : Int = 2;
	var HasSetMousePos : Int = 4;
	var RendererHasVtxOffset : Int = 8;
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
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec2") extern class ImVec2 {
	@:native("x")
	var x : cpp.Float32;
	@:native("y")
	var y : cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextRange") extern class ImGuiTextRange {
	@:native("b")
	var b : imgui.CharPointer;
	@:native("e")
	var e : imgui.CharPointer;
	@:native("ImGui::split")
	function split(_separator:cpp.Int8, _out:ImVectorImGuiTextRangePointer):cpp.Void;
	@:native("ImGui::empty")
	function empty():Bool;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextFilter") extern class ImGuiTextFilter {
	@:native("InputBuf")
	var inputBuf : cpp.RawPointer<cpp.Int8>;
	@:native("Filters")
	var filters : ImVectorImGuiTextRange;
	@:native("CountGrep")
	var countGrep : Int;
	@:native("ImGui::PassFilter")
	function passFilter(_text:imgui.CharPointer, _text_end:imgui.CharPointer):Bool;
	@:native("ImGui::IsActive")
	function isActive():Bool;
	@:native("ImGui::Draw")
	function draw(_label:imgui.CharPointer, _width:cpp.Float32):Bool;
	@:native("ImGui::Clear")
	function clear():cpp.Void;
	@:native("ImGui::Build")
	function build():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextBuffer") extern class ImGuiTextBuffer {
	@:native("Buf")
	var buf : ImVectorchar;
	@:native("ImGui::size")
	function size():Int;
	@:native("ImGui::reserve")
	function reserve(_capacity:Int):cpp.Void;
	@:native("ImGui::end")
	function end():imgui.CharPointer;
	@:native("ImGui::empty")
	function empty():Bool;
	@:native("ImGui::clear")
	function clear():cpp.Void;
	@:native("ImGui::c_str")
	function c_str():imgui.CharPointer;
	@:native("ImGui::begin")
	function begin():imgui.CharPointer;
	@:native("ImGui::appendfv")
	function appendfv(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::appendf")
	function appendf(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::append")
	function append(_str:imgui.CharPointer, _str_end:imgui.CharPointer):cpp.Void;
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
	@:native("ColorButtonPosition")
	var colorButtonPosition : imgui.ImGuiDir;
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
	@:native("CircleSegmentMaxError")
	var circleSegmentMaxError : cpp.Float32;
	@:native("Colors")
	var colors : cpp.RawPointer<imgui.ImVec4>;
	@:native("ImGui::ScaleAllSizes")
	function scaleAllSizes(_scale_factor:cpp.Float32):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStoragePair") extern class ImGuiStoragePair {
	@:native("key")
	var key : imgui.ImGuiID;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStorage") extern class ImGuiStorage {
	@:native("Data")
	var data : ImVectorImGuiStoragePair;
	@:native("ImGui::SetVoidPtr")
	function setVoidPtr(_key:imgui.ImGuiID, _val:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::SetInt")
	function setInt(_key:imgui.ImGuiID, _val:Int):cpp.Void;
	@:native("ImGui::SetFloat")
	function setFloat(_key:imgui.ImGuiID, _val:cpp.Float32):cpp.Void;
	@:native("ImGui::SetBool")
	function setBool(_key:imgui.ImGuiID, _val:Bool):cpp.Void;
	@:native("ImGui::SetAllInt")
	function setAllInt(_val:Int):cpp.Void;
	@:native("ImGui::GetVoidPtrRef")
	function getVoidPtrRef(_key:imgui.ImGuiID, _default_val:imgui.VoidPointer):cpp.Star<cpp.Star<cpp.Void>>;
	@:native("ImGui::GetVoidPtr")
	function getVoidPtr(_key:imgui.ImGuiID):imgui.VoidPointer;
	@:native("ImGui::GetIntRef")
	function getIntRef(_key:imgui.ImGuiID, _default_val:Int):cpp.Star<Int>;
	@:native("ImGui::GetInt")
	function getInt(_key:imgui.ImGuiID, _default_val:Int):Int;
	@:native("ImGui::GetFloatRef")
	function getFloatRef(_key:imgui.ImGuiID, _default_val:cpp.Float32):cpp.Star<cpp.Float32>;
	@:native("ImGui::GetFloat")
	function getFloat(_key:imgui.ImGuiID, _default_val:cpp.Float32):cpp.Float32;
	@:native("ImGui::GetBoolRef")
	function getBoolRef(_key:imgui.ImGuiID, _default_val:Bool):cpp.Star<Bool>;
	@:native("ImGui::GetBool")
	function getBool(_key:imgui.ImGuiID, _default_val:Bool):Bool;
	@:native("ImGui::Clear")
	function clear():cpp.Void;
	@:native("ImGui::BuildSortByKey")
	function buildSortByKey():cpp.Void;
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
	@:native("ImGui::IsPreview")
	function isPreview():Bool;
	@:native("ImGui::IsDelivery")
	function isDelivery():Bool;
	@:native("ImGui::IsDataType")
	function isDataType(_type:imgui.CharPointer):Bool;
	@:native("ImGui::Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiOnceUponAFrame") extern class ImGuiOnceUponAFrame {
	@:native("RefFrame")
	var refFrame : Int;
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
	@:native("ImGui::Step")
	function step():Bool;
	@:native("ImGui::End")
	function end():cpp.Void;
	@:native("ImGui::Begin")
	function begin(_items_count:Int, _items_height:cpp.Float32):cpp.Void;
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
	@:native("ImGui::InsertChars")
	function insertChars(_pos:Int, _text:imgui.CharPointer, _text_end:imgui.CharPointer):cpp.Void;
	@:native("ImGui::HasSelection")
	function hasSelection():Bool;
	@:native("ImGui::DeleteChars")
	function deleteChars(_pos:Int, _bytes_count:Int):cpp.Void;
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
	@:native("ConfigWindowsMemoryCompactTimer")
	var configWindowsMemoryCompactTimer : cpp.Float32;
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
	var inputQueueCharacters : ImVectorImWchar;
	@:native("ImGui::ClearInputCharacters")
	function clearInputCharacters():cpp.Void;
	@:native("ImGui::AddInputCharactersUTF8")
	function addInputCharactersUTF8(_str:imgui.CharPointer):cpp.Void;
	@:native("ImGui::AddInputCharacter")
	function addInputCharacter(_c:UInt):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontGlyphRangesBuilder") extern class ImFontGlyphRangesBuilder {
	@:native("UsedChars")
	var usedChars : ImVectorImU32;
	@:native("ImGui::SetBit")
	function setBit(_n:Int):cpp.Void;
	@:native("ImGui::GetBit")
	function getBit(_n:Int):Bool;
	@:native("ImGui::Clear")
	function clear():cpp.Void;
	@:native("ImGui::BuildRanges")
	function buildRanges(_out_ranges:ImVectorImWcharPointer):cpp.Void;
	@:native("ImGui::AddText")
	function addText(_text:imgui.CharPointer, _text_end:imgui.CharPointer):cpp.Void;
	@:native("ImGui::AddRanges")
	function addRanges(_ranges:cpp.Star<imgui.ImWchar>):cpp.Void;
	@:native("ImGui::AddChar")
	function addChar(_c:imgui.ImWchar):cpp.Void;
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
	@:native("EllipsisChar")
	var ellipsisChar : imgui.ImWchar;
	@:native("Name")
	var name : cpp.RawPointer<cpp.Int8>;
	@:native("DstFont")
	var dstFont : cpp.Star<imgui.ImFont>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontAtlasCustomRect") extern class ImFontAtlasCustomRect {
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
	@:native("ImGui::IsPacked")
	function isPacked():Bool;
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
	var fonts : cpp.Star<ImVectorImFontPointer>;
	@:native("CustomRects")
	var customRects : ImVectorImFontAtlasCustomRect;
	@:native("ConfigData")
	var configData : ImVectorImFontConfig;
	@:native("CustomRectIds")
	var customRectIds : cpp.RawPointer<Int>;
	@:native("ImGui::SetTexID")
	function setTexID(_id:imgui.ImTextureID):cpp.Void;
	@:native("ImGui::IsBuilt")
	function isBuilt():Bool;
	@:native("ImGui::GetTexDataAsRGBA32")
	function getTexDataAsRGBA32(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:cpp.Star<Int>, _out_height:cpp.Star<Int>, _out_bytes_per_pixel:cpp.Star<Int>):cpp.Void;
	@:native("ImGui::GetTexDataAsAlpha8")
	function getTexDataAsAlpha8(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:cpp.Star<Int>, _out_height:cpp.Star<Int>, _out_bytes_per_pixel:cpp.Star<Int>):cpp.Void;
	@:native("ImGui::GetMouseCursorTexData")
	function getMouseCursorTexData(_cursor:imgui.ImGuiMouseCursor, _out_offset:cpp.Star<imgui.ImVec2>, _out_size:cpp.Star<imgui.ImVec2>, _out_uv_border:cpp.Star<imgui.ImVec2>, _out_uv_fill:cpp.Star<imgui.ImVec2>):Bool;
	@:native("ImGui::GetGlyphRangesVietnamese")
	function getGlyphRangesVietnamese():cpp.Star<imgui.ImWchar>;
	@:native("ImGui::GetGlyphRangesThai")
	function getGlyphRangesThai():cpp.Star<imgui.ImWchar>;
	@:native("ImGui::GetGlyphRangesKorean")
	function getGlyphRangesKorean():cpp.Star<imgui.ImWchar>;
	@:native("ImGui::GetGlyphRangesJapanese")
	function getGlyphRangesJapanese():cpp.Star<imgui.ImWchar>;
	@:native("ImGui::GetGlyphRangesDefault")
	function getGlyphRangesDefault():cpp.Star<imgui.ImWchar>;
	@:native("ImGui::GetGlyphRangesCyrillic")
	function getGlyphRangesCyrillic():cpp.Star<imgui.ImWchar>;
	@:native("ImGui::GetGlyphRangesChineseSimplifiedCommon")
	function getGlyphRangesChineseSimplifiedCommon():cpp.Star<imgui.ImWchar>;
	@:native("ImGui::GetGlyphRangesChineseFull")
	function getGlyphRangesChineseFull():cpp.Star<imgui.ImWchar>;
	@:native("ImGui::GetCustomRectByIndex")
	function getCustomRectByIndex(_index:Int):cpp.Star<imgui.ImFontAtlasCustomRect>;
	@:native("ImGui::ClearTexData")
	function clearTexData():cpp.Void;
	@:native("ImGui::ClearInputData")
	function clearInputData():cpp.Void;
	@:native("ImGui::ClearFonts")
	function clearFonts():cpp.Void;
	@:native("ImGui::Clear")
	function clear():cpp.Void;
	@:native("ImGui::CalcCustomRectUV")
	function calcCustomRectUV(_rect:cpp.Star<imgui.ImFontAtlasCustomRect>, _out_uv_min:cpp.Star<imgui.ImVec2>, _out_uv_max:cpp.Star<imgui.ImVec2>):cpp.Void;
	@:native("ImGui::Build")
	function build():Bool;
	@:native("ImGui::AddFontFromMemoryTTF")
	function addFontFromMemoryTTF(_font_data:imgui.VoidPointer, _font_size:Int, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<imgui.ImFontConfig>, _glyph_ranges:cpp.Star<imgui.ImWchar>):cpp.Star<imgui.ImFont>;
	@:native("ImGui::AddFontFromMemoryCompressedTTF")
	function addFontFromMemoryCompressedTTF(_compressed_font_data:imgui.VoidPointer, _compressed_font_size:Int, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<imgui.ImFontConfig>, _glyph_ranges:cpp.Star<imgui.ImWchar>):cpp.Star<imgui.ImFont>;
	@:native("ImGui::AddFontFromMemoryCompressedBase85TTF")
	function addFontFromMemoryCompressedBase85TTF(_compressed_font_data_base85:imgui.CharPointer, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<imgui.ImFontConfig>, _glyph_ranges:cpp.Star<imgui.ImWchar>):cpp.Star<imgui.ImFont>;
	@:native("ImGui::AddFontFromFileTTF")
	function addFontFromFileTTF(_filename:imgui.CharPointer, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<imgui.ImFontConfig>, _glyph_ranges:cpp.Star<imgui.ImWchar>):cpp.Star<imgui.ImFont>;
	@:native("ImGui::AddFontDefault")
	function addFontDefault(_font_cfg:cpp.Star<imgui.ImFontConfig>):cpp.Star<imgui.ImFont>;
	@:native("ImGui::AddFont")
	function addFont(_font_cfg:cpp.Star<imgui.ImFontConfig>):cpp.Star<imgui.ImFont>;
	@:native("ImGui::AddCustomRectRegular")
	function addCustomRectRegular(_id:UInt, _width:Int, _height:Int):Int;
	@:native("ImGui::AddCustomRectFontGlyph")
	function addCustomRectFontGlyph(_font:cpp.Star<imgui.ImFont>, _id:imgui.ImWchar, _width:Int, _height:Int, _advance_x:cpp.Float32, _offset:imgui.ImVec2):Int;
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
	@:native("EllipsisChar")
	var ellipsisChar : imgui.ImWchar;
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
	@:native("ImGui::SetFallbackChar")
	function setFallbackChar(_c:imgui.ImWchar):cpp.Void;
	@:native("ImGui::RenderText")
	function renderText(_draw_list:cpp.Star<imgui.ImDrawList>, _size:cpp.Float32, _pos:imgui.ImVec2, _col:imgui.ImU32, _clip_rect:imgui.ImVec4, _text_begin:imgui.CharPointer, _text_end:imgui.CharPointer, _wrap_width:cpp.Float32, _cpu_fine_clip:Bool):cpp.Void;
	@:native("ImGui::RenderChar")
	function renderChar(_draw_list:cpp.Star<imgui.ImDrawList>, _size:cpp.Float32, _pos:imgui.ImVec2, _col:imgui.ImU32, _c:imgui.ImWchar):cpp.Void;
	@:native("ImGui::IsLoaded")
	function isLoaded():Bool;
	@:native("ImGui::GrowIndex")
	function growIndex(_new_size:Int):cpp.Void;
	@:native("ImGui::GetDebugName")
	function getDebugName():imgui.CharPointer;
	@:native("ImGui::GetCharAdvance")
	function getCharAdvance(_c:imgui.ImWchar):cpp.Float32;
	@:native("ImGui::FindGlyphNoFallback")
	function findGlyphNoFallback(_c:imgui.ImWchar):cpp.Star<imgui.ImFontGlyph>;
	@:native("ImGui::FindGlyph")
	function findGlyph(_c:imgui.ImWchar):cpp.Star<imgui.ImFontGlyph>;
	@:native("ImGui::ClearOutputData")
	function clearOutputData():cpp.Void;
	@:native("ImGui::CalcWordWrapPositionA")
	function calcWordWrapPositionA(_scale:cpp.Float32, _text:imgui.CharPointer, _text_end:imgui.CharPointer, _wrap_width:cpp.Float32):imgui.CharPointer;
	@:native("ImGui::CalcTextSizeA")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>, _self:cpp.Star<imgui.ImFont>, _size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:imgui.CharPointer, _text_end:imgui.CharPointer, _remaining:cpp.Star<cpp.Star<cpp.Int8>>):cpp.Void { })
	@:overload(function(_size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:imgui.CharPointer, _text_end:imgui.CharPointer, _remaining:cpp.Star<cpp.Star<cpp.Int8>>):imgui.ImVec2 { })
	function calcTextSizeA(_size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:imgui.CharPointer, _text_end:imgui.CharPointer, _remaining:cpp.Star<cpp.Star<cpp.Int8>>):imgui.ImVec2;
	@:native("ImGui::BuildLookupTable")
	function buildLookupTable():cpp.Void;
	@:native("ImGui::AddRemapChar")
	function addRemapChar(_dst:imgui.ImWchar, _src:imgui.ImWchar, _overwrite_dst:Bool):cpp.Void;
	@:native("ImGui::AddGlyph")
	function addGlyph(_c:imgui.ImWchar, _x0:cpp.Float32, _y0:cpp.Float32, _x1:cpp.Float32, _y1:cpp.Float32, _u0:cpp.Float32, _v0:cpp.Float32, _u1:cpp.Float32, _v1:cpp.Float32, _advance_x:cpp.Float32):cpp.Void;
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
	var _Channels : ImVectorImDrawChannel;
	@:native("ImGui::Split")
	function split(_draw_list:cpp.Star<imgui.ImDrawList>, _count:Int):cpp.Void;
	@:native("ImGui::SetCurrentChannel")
	function setCurrentChannel(_draw_list:cpp.Star<imgui.ImDrawList>, _channel_idx:Int):cpp.Void;
	@:native("ImGui::Merge")
	function merge(_draw_list:cpp.Star<imgui.ImDrawList>):cpp.Void;
	@:native("ImGui::ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
	@:native("ImGui::Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawList") extern class ImDrawList {
	@:native("CmdBuffer")
	var cmdBuffer : ImVectorImDrawCmd;
	@:native("IdxBuffer")
	var idxBuffer : ImVectorImDrawIdx;
	@:native("VtxBuffer")
	var vtxBuffer : ImVectorImDrawVert;
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
	var _ClipRectStack : ImVectorImVec4;
	@:native("_TextureIdStack")
	var _TextureIdStack : ImVectorImTextureID;
	@:native("_Path")
	var _Path : ImVectorImVec2;
	@:native("_Splitter")
	var _Splitter : imgui.ImDrawListSplitter;
	@:native("ImGui::UpdateTextureID")
	function updateTextureID():cpp.Void;
	@:native("ImGui::UpdateClipRect")
	function updateClipRect():cpp.Void;
	@:native("ImGui::PushTextureID")
	function pushTextureID(_texture_id:imgui.ImTextureID):cpp.Void;
	@:native("ImGui::PushClipRectFullScreen")
	function pushClipRectFullScreen():cpp.Void;
	@:native("ImGui::PushClipRect")
	function pushClipRect(_clip_rect_min:imgui.ImVec2, _clip_rect_max:imgui.ImVec2, _intersect_with_current_clip_rect:Bool):cpp.Void;
	@:native("ImGui::PrimWriteVtx")
	function primWriteVtx(_pos:imgui.ImVec2, _uv:imgui.ImVec2, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::PrimWriteIdx")
	function primWriteIdx(_idx:imgui.ImDrawIdx):cpp.Void;
	@:native("ImGui::PrimVtx")
	function primVtx(_pos:imgui.ImVec2, _uv:imgui.ImVec2, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::PrimUnreserve")
	function primUnreserve(_idx_count:Int, _vtx_count:Int):cpp.Void;
	@:native("ImGui::PrimReserve")
	function primReserve(_idx_count:Int, _vtx_count:Int):cpp.Void;
	@:native("ImGui::PrimRectUV")
	function primRectUV(_a:imgui.ImVec2, _b:imgui.ImVec2, _uv_a:imgui.ImVec2, _uv_b:imgui.ImVec2, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::PrimRect")
	function primRect(_a:imgui.ImVec2, _b:imgui.ImVec2, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::PrimQuadUV")
	function primQuadUV(_a:imgui.ImVec2, _b:imgui.ImVec2, _c:imgui.ImVec2, _d:imgui.ImVec2, _uv_a:imgui.ImVec2, _uv_b:imgui.ImVec2, _uv_c:imgui.ImVec2, _uv_d:imgui.ImVec2, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::PopTextureID")
	function popTextureID():cpp.Void;
	@:native("ImGui::PopClipRect")
	function popClipRect():cpp.Void;
	@:native("ImGui::PathStroke")
	function pathStroke(_col:imgui.ImU32, _closed:Bool, _thickness:cpp.Float32):cpp.Void;
	@:native("ImGui::PathRect")
	function pathRect(_rect_min:imgui.ImVec2, _rect_max:imgui.ImVec2, _rounding:cpp.Float32, _rounding_corners:imgui.ImDrawCornerFlags):cpp.Void;
	@:native("ImGui::PathLineToMergeDuplicate")
	function pathLineToMergeDuplicate(_pos:imgui.ImVec2):cpp.Void;
	@:native("ImGui::PathLineTo")
	function pathLineTo(_pos:imgui.ImVec2):cpp.Void;
	@:native("ImGui::PathFillConvex")
	function pathFillConvex(_col:imgui.ImU32):cpp.Void;
	@:native("ImGui::PathClear")
	function pathClear():cpp.Void;
	@:native("ImGui::PathBezierCurveTo")
	function pathBezierCurveTo(_p2:imgui.ImVec2, _p3:imgui.ImVec2, _p4:imgui.ImVec2, _num_segments:Int):cpp.Void;
	@:native("ImGui::PathArcToFast")
	function pathArcToFast(_center:imgui.ImVec2, _radius:cpp.Float32, _a_min_of_12:Int, _a_max_of_12:Int):cpp.Void;
	@:native("ImGui::PathArcTo")
	function pathArcTo(_center:imgui.ImVec2, _radius:cpp.Float32, _a_min:cpp.Float32, _a_max:cpp.Float32, _num_segments:Int):cpp.Void;
	@:native("ImGui::GetClipRectMin")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>, _self:cpp.Star<imgui.ImDrawList>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	function getClipRectMin():imgui.ImVec2;
	@:native("ImGui::GetClipRectMax")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>, _self:cpp.Star<imgui.ImDrawList>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	function getClipRectMax():imgui.ImVec2;
	@:native("ImGui::CloneOutput")
	function cloneOutput():cpp.Star<imgui.ImDrawList>;
	@:native("ImGui::ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
	@:native("ImGui::Clear")
	function clear():cpp.Void;
	@:native("ImGui::ChannelsSplit")
	function channelsSplit(_count:Int):cpp.Void;
	@:native("ImGui::ChannelsSetCurrent")
	function channelsSetCurrent(_n:Int):cpp.Void;
	@:native("ImGui::ChannelsMerge")
	function channelsMerge():cpp.Void;
	@:native("ImGui::AddTriangleFilled")
	function addTriangleFilled(_p1:imgui.ImVec2, _p2:imgui.ImVec2, _p3:imgui.ImVec2, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::AddTriangle")
	function addTriangle(_p1:imgui.ImVec2, _p2:imgui.ImVec2, _p3:imgui.ImVec2, _col:imgui.ImU32, _thickness:cpp.Float32):cpp.Void;
	@:native("ImGui::AddText")
	@:overload(function(_font:cpp.Star<imgui.ImFont>, _font_size:cpp.Float32, _pos:imgui.ImVec2, _col:imgui.ImU32, _text_begin:imgui.CharPointer, _text_end:imgui.CharPointer, _wrap_width:cpp.Float32, _cpu_fine_clip_rect:cpp.Star<imgui.ImVec4>):cpp.Void { })
	function addText(_pos:imgui.ImVec2, _col:imgui.ImU32, _text_begin:imgui.CharPointer, _text_end:imgui.CharPointer):cpp.Void;
	@:native("ImGui::AddRectFilledMultiColor")
	function addRectFilledMultiColor(_p_min:imgui.ImVec2, _p_max:imgui.ImVec2, _col_upr_left:imgui.ImU32, _col_upr_right:imgui.ImU32, _col_bot_right:imgui.ImU32, _col_bot_left:imgui.ImU32):cpp.Void;
	@:native("ImGui::AddRectFilled")
	function addRectFilled(_p_min:imgui.ImVec2, _p_max:imgui.ImVec2, _col:imgui.ImU32, _rounding:cpp.Float32, _rounding_corners:imgui.ImDrawCornerFlags):cpp.Void;
	@:native("ImGui::AddRect")
	function addRect(_p_min:imgui.ImVec2, _p_max:imgui.ImVec2, _col:imgui.ImU32, _rounding:cpp.Float32, _rounding_corners:imgui.ImDrawCornerFlags, _thickness:cpp.Float32):cpp.Void;
	@:native("ImGui::AddQuadFilled")
	function addQuadFilled(_p1:imgui.ImVec2, _p2:imgui.ImVec2, _p3:imgui.ImVec2, _p4:imgui.ImVec2, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::AddQuad")
	function addQuad(_p1:imgui.ImVec2, _p2:imgui.ImVec2, _p3:imgui.ImVec2, _p4:imgui.ImVec2, _col:imgui.ImU32, _thickness:cpp.Float32):cpp.Void;
	@:native("ImGui::AddPolyline")
	function addPolyline(_points:cpp.Star<imgui.ImVec2>, _num_points:Int, _col:imgui.ImU32, _closed:Bool, _thickness:cpp.Float32):cpp.Void;
	@:native("ImGui::AddNgonFilled")
	function addNgonFilled(_center:imgui.ImVec2, _radius:cpp.Float32, _col:imgui.ImU32, _num_segments:Int):cpp.Void;
	@:native("ImGui::AddNgon")
	function addNgon(_center:imgui.ImVec2, _radius:cpp.Float32, _col:imgui.ImU32, _num_segments:Int, _thickness:cpp.Float32):cpp.Void;
	@:native("ImGui::AddLine")
	function addLine(_p1:imgui.ImVec2, _p2:imgui.ImVec2, _col:imgui.ImU32, _thickness:cpp.Float32):cpp.Void;
	@:native("ImGui::AddImageRounded")
	function addImageRounded(_user_texture_id:imgui.ImTextureID, _p_min:imgui.ImVec2, _p_max:imgui.ImVec2, _uv_min:imgui.ImVec2, _uv_max:imgui.ImVec2, _col:imgui.ImU32, _rounding:cpp.Float32, _rounding_corners:imgui.ImDrawCornerFlags):cpp.Void;
	@:native("ImGui::AddImageQuad")
	function addImageQuad(_user_texture_id:imgui.ImTextureID, _p1:imgui.ImVec2, _p2:imgui.ImVec2, _p3:imgui.ImVec2, _p4:imgui.ImVec2, _uv1:imgui.ImVec2, _uv2:imgui.ImVec2, _uv3:imgui.ImVec2, _uv4:imgui.ImVec2, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::AddImage")
	function addImage(_user_texture_id:imgui.ImTextureID, _p_min:imgui.ImVec2, _p_max:imgui.ImVec2, _uv_min:imgui.ImVec2, _uv_max:imgui.ImVec2, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::AddDrawCmd")
	function addDrawCmd():cpp.Void;
	@:native("ImGui::AddConvexPolyFilled")
	function addConvexPolyFilled(_points:cpp.Star<imgui.ImVec2>, _num_points:Int, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::AddCircleFilled")
	function addCircleFilled(_center:imgui.ImVec2, _radius:cpp.Float32, _col:imgui.ImU32, _num_segments:Int):cpp.Void;
	@:native("ImGui::AddCircle")
	function addCircle(_center:imgui.ImVec2, _radius:cpp.Float32, _col:imgui.ImU32, _num_segments:Int, _thickness:cpp.Float32):cpp.Void;
	@:native("ImGui::AddCallback")
	function addCallback(_callback:imgui.ImDrawCallback, _callback_data:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::AddBezierCurve")
	function addBezierCurve(_p1:imgui.ImVec2, _p2:imgui.ImVec2, _p3:imgui.ImVec2, _p4:imgui.ImVec2, _col:imgui.ImU32, _thickness:cpp.Float32, _num_segments:Int):cpp.Void;
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
	@:native("ImGui::ScaleClipRects")
	function scaleClipRects(_fb_scale:imgui.ImVec2):cpp.Void;
	@:native("ImGui::DeIndexAllBuffers")
	function deIndexAllBuffers():cpp.Void;
	@:native("ImGui::Clear")
	function clear():cpp.Void;
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
	var _CmdBuffer : ImVectorImDrawCmd;
	@:native("_IdxBuffer")
	var _IdxBuffer : ImVectorImDrawIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImColor") extern class ImColor {
	@:native("Value")
	var value : imgui.ImVec4;
	@:native("ImGui::SetHSV")
	function setHSV(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):cpp.Void;
	@:native("ImGui::HSV")
	@:overload(function(_pOut:cpp.Star<imgui.ImColor>, _self:cpp.Star<imgui.ImColor>, _h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):cpp.Void { })
	@:overload(function(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):imgui.ImColor { })
	function hSV(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):imgui.ImColor;
}

@:keep @:structAccess @:include("imgui.h") extern class ImGui {
	@:native("ImGui::Value")
	@:overload(function(_prefix:imgui.CharPointer, _v:Int):cpp.Void { })
	@:overload(function(_prefix:imgui.CharPointer, _v:UInt):cpp.Void { })
	@:overload(function(_prefix:imgui.CharPointer, _v:cpp.Float32, _float_format:imgui.CharPointer):cpp.Void { })
	static function value(_prefix:imgui.CharPointer, _b:Bool):cpp.Void;
	@:native("ImGui::VSliderScalar")
	static function vSliderScalar(_label:imgui.CharPointer, _size:imgui.ImVec2, _data_type:imgui.ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::VSliderInt")
	static function vSliderInt(_label:imgui.CharPointer, _size:imgui.ImVec2, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::VSliderFloat")
	static function vSliderFloat(_label:imgui.CharPointer, _size:imgui.ImVec2, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::Unindent")
	static function unindent(_indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::TreePush")
	@:overload(function(_ptr_id:imgui.VoidPointer):cpp.Void { })
	static function treePush(_str_id:imgui.CharPointer):cpp.Void;
	@:native("ImGui::TreePop")
	static function treePop():cpp.Void;
	@:native("ImGui::TreeNodeV")
	@:overload(function(_ptr_id:imgui.VoidPointer, _fmt:imgui.CharPointer, _args:cpp.VarArg):Bool { })
	static function treeNodeV(_str_id:imgui.CharPointer, _fmt:imgui.CharPointer, _args:cpp.VarArg):Bool;
	@:native("ImGui::TreeNodeExV")
	@:overload(function(_ptr_id:imgui.VoidPointer, _flags:imgui.ImGuiTreeNodeFlags, _fmt:imgui.CharPointer, _args:cpp.VarArg):Bool { })
	static function treeNodeExV(_str_id:imgui.CharPointer, _flags:imgui.ImGuiTreeNodeFlags, _fmt:imgui.CharPointer, _args:cpp.VarArg):Bool;
	@:native("ImGui::TreeNodeEx")
	@:overload(function(_str_id:imgui.CharPointer, _flags:imgui.ImGuiTreeNodeFlags, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):Bool { })
	@:overload(function(_ptr_id:imgui.VoidPointer, _flags:imgui.ImGuiTreeNodeFlags, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):Bool { })
	static function treeNodeEx(_label:imgui.CharPointer, _flags:imgui.ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::TreeNode")
	@:overload(function(_str_id:imgui.CharPointer, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):Bool { })
	@:overload(function(_ptr_id:imgui.VoidPointer, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):Bool { })
	static function treeNode(_label:imgui.CharPointer):Bool;
	@:native("ImGui::TextWrappedV")
	static function textWrappedV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextWrapped")
	static function textWrapped(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextV")
	static function textV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextUnformatted")
	static function textUnformatted(_text:imgui.CharPointer, _text_end:imgui.CharPointer):cpp.Void;
	@:native("ImGui::TextDisabledV")
	static function textDisabledV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextDisabled")
	static function textDisabled(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextColoredV")
	static function textColoredV(_col:imgui.ImVec4, _fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextColored")
	static function textColored(_col:imgui.ImVec4, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::Text")
	static function text(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::StyleColorsLight")
	static function styleColorsLight(_dst:cpp.Star<imgui.ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsDark")
	static function styleColorsDark(_dst:cpp.Star<imgui.ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsClassic")
	static function styleColorsClassic(_dst:cpp.Star<imgui.ImGuiStyle>):cpp.Void;
	@:native("ImGui::Spacing")
	static function spacing():cpp.Void;
	@:native("ImGui::SmallButton")
	static function smallButton(_label:imgui.CharPointer):Bool;
	@:native("ImGui::SliderScalarN")
	static function sliderScalarN(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderScalar")
	static function sliderScalar(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderInt4")
	static function sliderInt4(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::SliderInt3")
	static function sliderInt3(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::SliderInt2")
	static function sliderInt2(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::SliderInt")
	static function sliderInt(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::SliderFloat4")
	static function sliderFloat4(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat3")
	static function sliderFloat3(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat2")
	static function sliderFloat2(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat")
	static function sliderFloat(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderAngle")
	static function sliderAngle(_label:imgui.CharPointer, _v_rad:cpp.Star<cpp.Float32>, _v_degrees_min:cpp.Float32, _v_degrees_max:cpp.Float32, _format:imgui.CharPointer):Bool;
	@:native("ImGui::ShowUserGuide")
	static function showUserGuide():cpp.Void;
	@:native("ImGui::ShowStyleSelector")
	static function showStyleSelector(_label:imgui.CharPointer):Bool;
	@:native("ImGui::ShowStyleEditor")
	static function showStyleEditor(_ref:cpp.Star<imgui.ImGuiStyle>):cpp.Void;
	@:native("ImGui::ShowMetricsWindow")
	static function showMetricsWindow(_p_open:cpp.Star<Bool>):cpp.Void;
	@:native("ImGui::ShowFontSelector")
	static function showFontSelector(_label:imgui.CharPointer):cpp.Void;
	@:native("ImGui::ShowDemoWindow")
	static function showDemoWindow(_p_open:cpp.Star<Bool>):cpp.Void;
	@:native("ImGui::ShowAboutWindow")
	static function showAboutWindow(_p_open:cpp.Star<Bool>):cpp.Void;
	@:native("ImGui::SetWindowSize")
	@:overload(function(_name:imgui.CharPointer, _size:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void { })
	static function setWindowSize(_size:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowPos")
	@:overload(function(_name:imgui.CharPointer, _pos:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void { })
	static function setWindowPos(_pos:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowFontScale")
	static function setWindowFontScale(_scale:cpp.Float32):cpp.Void;
	@:native("ImGui::SetWindowFocus")
	@:overload(function(_name:imgui.CharPointer):cpp.Void { })
	static function setWindowFocus():cpp.Void;
	@:native("ImGui::SetWindowCollapsed")
	@:overload(function(_name:imgui.CharPointer, _collapsed:Bool, _cond:imgui.ImGuiCond):cpp.Void { })
	static function setWindowCollapsed(_collapsed:Bool, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetTooltipV")
	static function setTooltipV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::SetTooltip")
	static function setTooltip(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::SetTabItemClosed")
	static function setTabItemClosed(_tab_or_docked_window_label:imgui.CharPointer):cpp.Void;
	@:native("ImGui::SetStateStorage")
	static function setStateStorage(_storage:cpp.Star<imgui.ImGuiStorage>):cpp.Void;
	@:native("ImGui::SetScrollY")
	static function setScrollY(_scroll_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollX")
	static function setScrollX(_scroll_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollHereY")
	static function setScrollHereY(_center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollHereX")
	static function setScrollHereX(_center_x_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollFromPosY")
	static function setScrollFromPosY(_local_y:cpp.Float32, _center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollFromPosX")
	static function setScrollFromPosX(_local_x:cpp.Float32, _center_x_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextWindowSizeConstraints")
	static function setNextWindowSizeConstraints(_size_min:imgui.ImVec2, _size_max:imgui.ImVec2, _custom_callback:imgui.ImGuiSizeCallback, _custom_callback_data:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::SetNextWindowSize")
	static function setNextWindowSize(_size:imgui.ImVec2, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowPos")
	static function setNextWindowPos(_pos:imgui.ImVec2, _cond:imgui.ImGuiCond, _pivot:imgui.ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowFocus")
	static function setNextWindowFocus():cpp.Void;
	@:native("ImGui::SetNextWindowContentSize")
	static function setNextWindowContentSize(_size:imgui.ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowCollapsed")
	static function setNextWindowCollapsed(_collapsed:Bool, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowBgAlpha")
	static function setNextWindowBgAlpha(_alpha:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemWidth")
	static function setNextItemWidth(_item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemOpen")
	static function setNextItemOpen(_is_open:Bool, _cond:imgui.ImGuiCond):cpp.Void;
	@:native("ImGui::SetMouseCursor")
	static function setMouseCursor(_cursor_type:imgui.ImGuiMouseCursor):cpp.Void;
	@:native("ImGui::SetKeyboardFocusHere")
	static function setKeyboardFocusHere(_offset:Int):cpp.Void;
	@:native("ImGui::SetItemDefaultFocus")
	static function setItemDefaultFocus():cpp.Void;
	@:native("ImGui::SetItemAllowOverlap")
	static function setItemAllowOverlap():cpp.Void;
	@:native("ImGui::SetDragDropPayload")
	static function setDragDropPayload(_type:imgui.CharPointer, _data:imgui.VoidPointer, _sz:cpp.SizeT, _cond:imgui.ImGuiCond):Bool;
	@:native("ImGui::SetCursorScreenPos")
	static function setCursorScreenPos(_pos:imgui.ImVec2):cpp.Void;
	@:native("ImGui::SetCursorPosY")
	static function setCursorPosY(_local_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPosX")
	static function setCursorPosX(_local_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPos")
	static function setCursorPos(_local_pos:imgui.ImVec2):cpp.Void;
	@:native("ImGui::SetCurrentContext")
	static function setCurrentContext(_ctx:cpp.Star<imgui.ImGuiContext>):cpp.Void;
	@:native("ImGui::SetColumnWidth")
	static function setColumnWidth(_column_index:Int, _width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColumnOffset")
	static function setColumnOffset(_column_index:Int, _offset_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColorEditOptions")
	static function setColorEditOptions(_flags:imgui.ImGuiColorEditFlags):cpp.Void;
	@:native("ImGui::SetClipboardText")
	static function setClipboardText(_text:imgui.CharPointer):cpp.Void;
	@:native("ImGui::SetAllocatorFunctions")
	static function setAllocatorFunctions(_alloc_func:cpp.Callable<(cpp.SizeT, imgui.VoidPointer) -> imgui.VoidPointer>, _free_func:cpp.Callable<(imgui.VoidPointer, imgui.VoidPointer) -> cpp.Void>, _user_data:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::Separator")
	static function separator():cpp.Void;
	@:native("ImGui::Selectable")
	@:overload(function(_label:imgui.CharPointer, _p_selected:cpp.Star<Bool>, _flags:imgui.ImGuiSelectableFlags, _size:imgui.ImVec2):Bool { })
	static function selectable(_label:imgui.CharPointer, _selected:Bool, _flags:imgui.ImGuiSelectableFlags, _size:imgui.ImVec2):Bool;
	@:native("ImGui::SaveIniSettingsToMemory")
	static function saveIniSettingsToMemory(_out_ini_size:cpp.Star<cpp.SizeT>):imgui.CharPointer;
	@:native("ImGui::SaveIniSettingsToDisk")
	static function saveIniSettingsToDisk(_ini_filename:imgui.CharPointer):cpp.Void;
	@:native("ImGui::SameLine")
	static function sameLine(_offset_from_start_x:cpp.Float32, _spacing:cpp.Float32):cpp.Void;
	@:native("ImGui::ResetMouseDragDelta")
	static function resetMouseDragDelta(_button:imgui.ImGuiMouseButton):cpp.Void;
	@:native("ImGui::Render")
	static function render():cpp.Void;
	@:native("ImGui::RadioButton")
	@:overload(function(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_button:Int):Bool { })
	static function radioButton(_label:imgui.CharPointer, _active:Bool):Bool;
	@:native("ImGui::PushTextWrapPos")
	static function pushTextWrapPos(_wrap_local_pos_x:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleVar")
	@:overload(function(_idx:imgui.ImGuiStyleVar, _val:imgui.ImVec2):cpp.Void { })
	static function pushStyleVar(_idx:imgui.ImGuiStyleVar, _val:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleColor")
	@:overload(function(_idx:imgui.ImGuiCol, _col:imgui.ImVec4):cpp.Void { })
	static function pushStyleColor(_idx:imgui.ImGuiCol, _col:imgui.ImU32):cpp.Void;
	@:native("ImGui::PushItemWidth")
	static function pushItemWidth(_item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::PushID")
	@:overload(function(_str_id_begin:imgui.CharPointer, _str_id_end:imgui.CharPointer):cpp.Void { })
	@:overload(function(_ptr_id:imgui.VoidPointer):cpp.Void { })
	@:overload(function(_int_id:Int):cpp.Void { })
	static function pushID(_str_id:imgui.CharPointer):cpp.Void;
	@:native("ImGui::PushFont")
	static function pushFont(_font:cpp.Star<imgui.ImFont>):cpp.Void;
	@:native("ImGui::PushClipRect")
	static function pushClipRect(_clip_rect_min:imgui.ImVec2, _clip_rect_max:imgui.ImVec2, _intersect_with_current_clip_rect:Bool):cpp.Void;
	@:native("ImGui::PushButtonRepeat")
	static function pushButtonRepeat(_repeat:Bool):cpp.Void;
	@:native("ImGui::PushAllowKeyboardFocus")
	static function pushAllowKeyboardFocus(_allow_keyboard_focus:Bool):cpp.Void;
	@:native("ImGui::ProgressBar")
	static function progressBar(_fraction:cpp.Float32, _size_arg:imgui.ImVec2, _overlay:imgui.CharPointer):cpp.Void;
	@:native("ImGui::PopTextWrapPos")
	static function popTextWrapPos():cpp.Void;
	@:native("ImGui::PopStyleVar")
	static function popStyleVar(_count:Int):cpp.Void;
	@:native("ImGui::PopStyleColor")
	static function popStyleColor(_count:Int):cpp.Void;
	@:native("ImGui::PopItemWidth")
	static function popItemWidth():cpp.Void;
	@:native("ImGui::PopID")
	static function popID():cpp.Void;
	@:native("ImGui::PopFont")
	static function popFont():cpp.Void;
	@:native("ImGui::PopClipRect")
	static function popClipRect():cpp.Void;
	@:native("ImGui::PopButtonRepeat")
	static function popButtonRepeat():cpp.Void;
	@:native("ImGui::PopAllowKeyboardFocus")
	static function popAllowKeyboardFocus():cpp.Void;
	@:native("ImGui::PlotLines")
	@:overload(function(_label:imgui.CharPointer, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.CharPointer, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:imgui.ImVec2):cpp.Void { })
	static function plotLines(_label:imgui.CharPointer, _values:cpp.Star<cpp.Float32>, _values_count:Int, _values_offset:Int, _overlay_text:imgui.CharPointer, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:imgui.ImVec2, _stride:Int):cpp.Void;
	@:native("ImGui::PlotHistogram")
	@:overload(function(_label:imgui.CharPointer, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:imgui.CharPointer, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:imgui.ImVec2):cpp.Void { })
	static function plotHistogram(_label:imgui.CharPointer, _values:cpp.Star<cpp.Float32>, _values_count:Int, _values_offset:Int, _overlay_text:imgui.CharPointer, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:imgui.ImVec2, _stride:Int):cpp.Void;
	@:native("ImGui::OpenPopupOnItemClick")
	static function openPopupOnItemClick(_str_id:imgui.CharPointer, _mouse_button:imgui.ImGuiMouseButton):Bool;
	@:native("ImGui::OpenPopup")
	static function openPopup(_str_id:imgui.CharPointer):cpp.Void;
	@:native("ImGui::NextColumn")
	static function nextColumn():cpp.Void;
	@:native("ImGui::NewLine")
	static function newLine():cpp.Void;
	@:native("ImGui::NewFrame")
	static function newFrame():cpp.Void;
	@:native("ImGui::MenuItem")
	@:overload(function(_label:imgui.CharPointer, _shortcut:imgui.CharPointer, _p_selected:cpp.Star<Bool>, _enabled:Bool):Bool { })
	static function menuItem(_label:imgui.CharPointer, _shortcut:imgui.CharPointer, _selected:Bool, _enabled:Bool):Bool;
	@:native("ImGui::MemFree")
	static function memFree(_ptr:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::MemAlloc")
	static function memAlloc(_size:cpp.SizeT):imgui.VoidPointer;
	@:native("ImGui::LogToTTY")
	static function logToTTY(_auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogToFile")
	static function logToFile(_auto_open_depth:Int, _filename:imgui.CharPointer):cpp.Void;
	@:native("ImGui::LogToClipboard")
	static function logToClipboard(_auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogText")
	static function logText(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::LogFinish")
	static function logFinish():cpp.Void;
	@:native("ImGui::LogButtons")
	static function logButtons():cpp.Void;
	@:native("ImGui::LoadIniSettingsFromMemory")
	static function loadIniSettingsFromMemory(_ini_data:imgui.CharPointer, _ini_size:cpp.SizeT):cpp.Void;
	@:native("ImGui::LoadIniSettingsFromDisk")
	static function loadIniSettingsFromDisk(_ini_filename:imgui.CharPointer):cpp.Void;
	@:native("ImGui::ListBoxHeader")
	@:overload(function(_label:imgui.CharPointer, _items_count:Int, _height_in_items:Int):Bool { })
	static function listBoxHeader(_label:imgui.CharPointer, _size:imgui.ImVec2):Bool;
	@:native("ImGui::ListBoxFooter")
	static function listBoxFooter():cpp.Void;
	@:native("ImGui::ListBox")
	@:overload(function(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items_getter:cpp.Callable<(imgui.VoidPointer, Int, cpp.Star<cpp.Star<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int, _height_in_items:Int):Bool { })
	static function listBox(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items:cpp.Star<cpp.Star<cpp.Int8>>, _items_count:Int, _height_in_items:Int):Bool;
	@:native("ImGui::LabelTextV")
	static function labelTextV(_label:imgui.CharPointer, _fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::LabelText")
	static function labelText(_label:imgui.CharPointer, _fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::IsWindowHovered")
	static function isWindowHovered(_flags:imgui.ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsWindowFocused")
	static function isWindowFocused(_flags:imgui.ImGuiFocusedFlags):Bool;
	@:native("ImGui::IsWindowCollapsed")
	static function isWindowCollapsed():Bool;
	@:native("ImGui::IsWindowAppearing")
	static function isWindowAppearing():Bool;
	@:native("ImGui::IsRectVisible")
	@:overload(function(_rect_min:imgui.ImVec2, _rect_max:imgui.ImVec2):Bool { })
	static function isRectVisible(_size:imgui.ImVec2):Bool;
	@:native("ImGui::IsPopupOpen")
	static function isPopupOpen(_str_id:imgui.CharPointer):Bool;
	@:native("ImGui::IsMouseReleased")
	static function isMouseReleased(_button:imgui.ImGuiMouseButton):Bool;
	@:native("ImGui::IsMousePosValid")
	static function isMousePosValid(_mouse_pos:cpp.Star<imgui.ImVec2>):Bool;
	@:native("ImGui::IsMouseHoveringRect")
	static function isMouseHoveringRect(_r_min:imgui.ImVec2, _r_max:imgui.ImVec2, _clip:Bool):Bool;
	@:native("ImGui::IsMouseDragging")
	static function isMouseDragging(_button:imgui.ImGuiMouseButton, _lock_threshold:cpp.Float32):Bool;
	@:native("ImGui::IsMouseDown")
	static function isMouseDown(_button:imgui.ImGuiMouseButton):Bool;
	@:native("ImGui::IsMouseDoubleClicked")
	static function isMouseDoubleClicked(_button:imgui.ImGuiMouseButton):Bool;
	@:native("ImGui::IsMouseClicked")
	static function isMouseClicked(_button:imgui.ImGuiMouseButton, _repeat:Bool):Bool;
	@:native("ImGui::IsKeyReleased")
	static function isKeyReleased(_user_key_index:Int):Bool;
	@:native("ImGui::IsKeyPressed")
	static function isKeyPressed(_user_key_index:Int, _repeat:Bool):Bool;
	@:native("ImGui::IsKeyDown")
	static function isKeyDown(_user_key_index:Int):Bool;
	@:native("ImGui::IsItemVisible")
	static function isItemVisible():Bool;
	@:native("ImGui::IsItemToggledOpen")
	static function isItemToggledOpen():Bool;
	@:native("ImGui::IsItemHovered")
	static function isItemHovered(_flags:imgui.ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsItemFocused")
	static function isItemFocused():Bool;
	@:native("ImGui::IsItemEdited")
	static function isItemEdited():Bool;
	@:native("ImGui::IsItemDeactivatedAfterEdit")
	static function isItemDeactivatedAfterEdit():Bool;
	@:native("ImGui::IsItemDeactivated")
	static function isItemDeactivated():Bool;
	@:native("ImGui::IsItemClicked")
	static function isItemClicked(_mouse_button:imgui.ImGuiMouseButton):Bool;
	@:native("ImGui::IsItemActive")
	static function isItemActive():Bool;
	@:native("ImGui::IsItemActivated")
	static function isItemActivated():Bool;
	@:native("ImGui::IsAnyMouseDown")
	static function isAnyMouseDown():Bool;
	@:native("ImGui::IsAnyItemHovered")
	static function isAnyItemHovered():Bool;
	@:native("ImGui::IsAnyItemFocused")
	static function isAnyItemFocused():Bool;
	@:native("ImGui::IsAnyItemActive")
	static function isAnyItemActive():Bool;
	@:native("ImGui::InvisibleButton")
	static function invisibleButton(_str_id:imgui.CharPointer, _size:imgui.ImVec2):Bool;
	@:native("ImGui::InputTextWithHint")
	static function inputTextWithHint(_label:imgui.CharPointer, _hint:imgui.CharPointer, _buf:imgui.CharPointer, _buf_size:cpp.SizeT, _flags:imgui.ImGuiInputTextFlags, _callback:imgui.ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputTextMultiline")
	static function inputTextMultiline(_label:imgui.CharPointer, _buf:imgui.CharPointer, _buf_size:cpp.SizeT, _size:imgui.ImVec2, _flags:imgui.ImGuiInputTextFlags, _callback:imgui.ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputText")
	static function inputText(_label:imgui.CharPointer, _buf:imgui.CharPointer, _buf_size:cpp.SizeT, _flags:imgui.ImGuiInputTextFlags, _callback:imgui.ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputScalarN")
	static function inputScalarN(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputScalar")
	static function inputScalar(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _p_data:imgui.VoidPointer, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt4")
	static function inputInt4(_label:imgui.CharPointer, _v:cpp.Star<Int>, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt3")
	static function inputInt3(_label:imgui.CharPointer, _v:cpp.Star<Int>, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt2")
	static function inputInt2(_label:imgui.CharPointer, _v:cpp.Star<Int>, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt")
	static function inputInt(_label:imgui.CharPointer, _v:cpp.Star<Int>, _step:Int, _step_fast:Int, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat4")
	static function inputFloat4(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat3")
	static function inputFloat3(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat2")
	static function inputFloat2(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat")
	static function inputFloat(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _step:cpp.Float32, _step_fast:cpp.Float32, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputDouble")
	static function inputDouble(_label:imgui.CharPointer, _v:cpp.Star<Float>, _step:Float, _step_fast:Float, _format:imgui.CharPointer, _flags:imgui.ImGuiInputTextFlags):Bool;
	@:native("ImGui::Indent")
	static function indent(_indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::ImageButton")
	static function imageButton(_user_texture_id:imgui.ImTextureID, _size:imgui.ImVec2, _uv0:imgui.ImVec2, _uv1:imgui.ImVec2, _frame_padding:Int, _bg_col:imgui.ImVec4, _tint_col:imgui.ImVec4):Bool;
	@:native("ImGui::Image")
	static function image(_user_texture_id:imgui.ImTextureID, _size:imgui.ImVec2, _uv0:imgui.ImVec2, _uv1:imgui.ImVec2, _tint_col:imgui.ImVec4, _border_col:imgui.ImVec4):cpp.Void;
	@:native("ImGui::GetWindowWidth")
	static function getWindowWidth():cpp.Float32;
	@:native("ImGui::GetWindowSize")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getWindowSize():imgui.ImVec2;
	@:native("ImGui::GetWindowPos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getWindowPos():imgui.ImVec2;
	@:native("ImGui::GetWindowHeight")
	static function getWindowHeight():cpp.Float32;
	@:native("ImGui::GetWindowDrawList")
	static function getWindowDrawList():cpp.Star<imgui.ImDrawList>;
	@:native("ImGui::GetWindowContentRegionWidth")
	static function getWindowContentRegionWidth():cpp.Float32;
	@:native("ImGui::GetWindowContentRegionMin")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getWindowContentRegionMin():imgui.ImVec2;
	@:native("ImGui::GetWindowContentRegionMax")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getWindowContentRegionMax():imgui.ImVec2;
	@:native("ImGui::GetVersion")
	static function getVersion():imgui.CharPointer;
	@:native("ImGui::GetTreeNodeToLabelSpacing")
	static function getTreeNodeToLabelSpacing():cpp.Float32;
	@:native("ImGui::GetTime")
	static function getTime():Float;
	@:native("ImGui::GetTextLineHeightWithSpacing")
	static function getTextLineHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetTextLineHeight")
	static function getTextLineHeight():cpp.Float32;
	@:native("ImGui::GetStyleColorVec4")
	static function getStyleColorVec4(_idx:imgui.ImGuiCol):cpp.Reference<imgui.ImVec4>;
	@:native("ImGui::GetStyleColorName")
	static function getStyleColorName(_idx:imgui.ImGuiCol):imgui.CharPointer;
	@:native("ImGui::GetStyle")
	static function getStyle():cpp.Reference<imgui.ImGuiStyle>;
	@:native("ImGui::GetStateStorage")
	static function getStateStorage():cpp.Star<imgui.ImGuiStorage>;
	@:native("ImGui::GetScrollY")
	static function getScrollY():cpp.Float32;
	@:native("ImGui::GetScrollX")
	static function getScrollX():cpp.Float32;
	@:native("ImGui::GetScrollMaxY")
	static function getScrollMaxY():cpp.Float32;
	@:native("ImGui::GetScrollMaxX")
	static function getScrollMaxX():cpp.Float32;
	@:native("ImGui::GetMousePosOnOpeningCurrentPopup")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getMousePosOnOpeningCurrentPopup():imgui.ImVec2;
	@:native("ImGui::GetMousePos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getMousePos():imgui.ImVec2;
	@:native("ImGui::GetMouseDragDelta")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>, _button:imgui.ImGuiMouseButton, _lock_threshold:cpp.Float32):cpp.Void { })
	@:overload(function(_button:imgui.ImGuiMouseButton, _lock_threshold:cpp.Float32):imgui.ImVec2 { })
	static function getMouseDragDelta(_button:imgui.ImGuiMouseButton, _lock_threshold:cpp.Float32):imgui.ImVec2;
	@:native("ImGui::GetMouseCursor")
	static function getMouseCursor():imgui.ImGuiMouseCursor;
	@:native("ImGui::GetKeyPressedAmount")
	static function getKeyPressedAmount(_key_index:Int, _repeat_delay:cpp.Float32, _rate:cpp.Float32):Int;
	@:native("ImGui::GetKeyIndex")
	static function getKeyIndex(_imgui_key:imgui.ImGuiKey):Int;
	@:native("ImGui::GetItemRectSize")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getItemRectSize():imgui.ImVec2;
	@:native("ImGui::GetItemRectMin")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getItemRectMin():imgui.ImVec2;
	@:native("ImGui::GetItemRectMax")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getItemRectMax():imgui.ImVec2;
	@:native("ImGui::GetIO")
	static function getIO():cpp.Reference<imgui.ImGuiIO>;
	@:native("ImGui::GetID")
	@:overload(function(_str_id_begin:imgui.CharPointer, _str_id_end:imgui.CharPointer):imgui.ImGuiID { })
	@:overload(function(_ptr_id:imgui.VoidPointer):imgui.ImGuiID { })
	static function getID(_str_id:imgui.CharPointer):imgui.ImGuiID;
	@:native("ImGui::GetFrameHeightWithSpacing")
	static function getFrameHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetFrameHeight")
	static function getFrameHeight():cpp.Float32;
	@:native("ImGui::GetFrameCount")
	static function getFrameCount():Int;
	@:native("ImGui::GetForegroundDrawList")
	static function getForegroundDrawList():cpp.Star<imgui.ImDrawList>;
	@:native("ImGui::GetFontTexUvWhitePixel")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getFontTexUvWhitePixel():imgui.ImVec2;
	@:native("ImGui::GetFontSize")
	static function getFontSize():cpp.Float32;
	@:native("ImGui::GetFont")
	static function getFont():cpp.Star<imgui.ImFont>;
	@:native("ImGui::GetDrawListSharedData")
	static function getDrawListSharedData():cpp.Star<imgui.ImDrawListSharedData>;
	@:native("ImGui::GetDrawData")
	static function getDrawData():cpp.Star<imgui.ImDrawData>;
	@:native("ImGui::GetDragDropPayload")
	static function getDragDropPayload():cpp.Star<imgui.ImGuiPayload>;
	@:native("ImGui::GetCursorStartPos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getCursorStartPos():imgui.ImVec2;
	@:native("ImGui::GetCursorScreenPos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getCursorScreenPos():imgui.ImVec2;
	@:native("ImGui::GetCursorPosY")
	static function getCursorPosY():cpp.Float32;
	@:native("ImGui::GetCursorPosX")
	static function getCursorPosX():cpp.Float32;
	@:native("ImGui::GetCursorPos")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getCursorPos():imgui.ImVec2;
	@:native("ImGui::GetCurrentContext")
	static function getCurrentContext():cpp.Star<imgui.ImGuiContext>;
	@:native("ImGui::GetContentRegionMax")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getContentRegionMax():imgui.ImVec2;
	@:native("ImGui::GetContentRegionAvail")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>):cpp.Void { })
	@:overload(function():imgui.ImVec2 { })
	static function getContentRegionAvail():imgui.ImVec2;
	@:native("ImGui::GetColumnsCount")
	static function getColumnsCount():Int;
	@:native("ImGui::GetColumnWidth")
	static function getColumnWidth(_column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnOffset")
	static function getColumnOffset(_column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnIndex")
	static function getColumnIndex():Int;
	@:native("ImGui::GetColorU32")
	@:overload(function(_col:imgui.ImVec4):imgui.ImU32 { })
	@:overload(function(_col:imgui.ImU32):imgui.ImU32 { })
	static function getColorU32(_idx:imgui.ImGuiCol, _alpha_mul:cpp.Float32):imgui.ImU32;
	@:native("ImGui::GetClipboardText")
	static function getClipboardText():imgui.CharPointer;
	@:native("ImGui::GetBackgroundDrawList")
	static function getBackgroundDrawList():cpp.Star<imgui.ImDrawList>;
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
	@:native("ImGui::EndChildFrame")
	static function endChildFrame():cpp.Void;
	@:native("ImGui::EndChild")
	static function endChild():cpp.Void;
	@:native("ImGui::End")
	static function end():cpp.Void;
	@:native("ImGui::Dummy")
	static function dummy(_size:imgui.ImVec2):cpp.Void;
	@:native("ImGui::DragScalarN")
	static function dragScalarN(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragScalar")
	static function dragScalar(_label:imgui.CharPointer, _data_type:imgui.ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragIntRange2")
	static function dragIntRange2(_label:imgui.CharPointer, _v_current_min:cpp.Star<Int>, _v_current_max:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer, _format_max:imgui.CharPointer):Bool;
	@:native("ImGui::DragInt4")
	static function dragInt4(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::DragInt3")
	static function dragInt3(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::DragInt2")
	static function dragInt2(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::DragInt")
	static function dragInt(_label:imgui.CharPointer, _v:cpp.Star<Int>, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:imgui.CharPointer):Bool;
	@:native("ImGui::DragFloatRange2")
	static function dragFloatRange2(_label:imgui.CharPointer, _v_current_min:cpp.Star<cpp.Float32>, _v_current_max:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _format_max:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat4")
	static function dragFloat4(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat3")
	static function dragFloat3(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat2")
	static function dragFloat2(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat")
	static function dragFloat(_label:imgui.CharPointer, _v:cpp.Star<cpp.Float32>, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:imgui.CharPointer, _power:cpp.Float32):Bool;
	@:native("ImGui::DestroyContext")
	static function destroyContext(_ctx:cpp.Star<imgui.ImGuiContext>):cpp.Void;
	@:native("ImGui::DebugCheckVersionAndDataLayout")
	static function debugCheckVersionAndDataLayout(_version_str:imgui.CharPointer, _sz_io:cpp.SizeT, _sz_style:cpp.SizeT, _sz_vec2:cpp.SizeT, _sz_vec4:cpp.SizeT, _sz_drawvert:cpp.SizeT, _sz_drawidx:cpp.SizeT):Bool;
	@:native("ImGui::CreateContext")
	static function createContext(_shared_font_atlas:cpp.Star<imgui.ImFontAtlas>):cpp.Star<imgui.ImGuiContext>;
	@:native("ImGui::Combo")
	@:overload(function(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items_separated_by_zeros:imgui.CharPointer, _popup_max_height_in_items:Int):Bool { })
	@:overload(function(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items_getter:cpp.Callable<(imgui.VoidPointer, Int, cpp.Star<cpp.Star<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int, _popup_max_height_in_items:Int):Bool { })
	static function combo(_label:imgui.CharPointer, _current_item:cpp.Star<Int>, _items:cpp.Star<cpp.Star<cpp.Int8>>, _items_count:Int, _popup_max_height_in_items:Int):Bool;
	@:native("ImGui::Columns")
	static function columns(_count:Int, _id:imgui.CharPointer, _border:Bool):cpp.Void;
	@:native("ImGui::ColorPicker4")
	static function colorPicker4(_label:imgui.CharPointer, _col:cpp.Star<cpp.Float32>, _flags:imgui.ImGuiColorEditFlags, _ref_col:cpp.Star<cpp.Float32>):Bool;
	@:native("ImGui::ColorPicker3")
	static function colorPicker3(_label:imgui.CharPointer, _col:cpp.Star<cpp.Float32>, _flags:imgui.ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorEdit4")
	static function colorEdit4(_label:imgui.CharPointer, _col:cpp.Star<cpp.Float32>, _flags:imgui.ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorEdit3")
	static function colorEdit3(_label:imgui.CharPointer, _col:cpp.Star<cpp.Float32>, _flags:imgui.ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorConvertU32ToFloat4")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec4>, _in:imgui.ImU32):cpp.Void { })
	@:overload(function(_in:imgui.ImU32):imgui.ImVec4 { })
	static function colorConvertU32ToFloat4(_in:imgui.ImU32):imgui.ImVec4;
	@:native("ImGui::ColorConvertRGBtoHSV")
	static function colorConvertRGBtoHSV(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32, _out_h:cpp.Reference<cpp.Float32>, _out_s:cpp.Reference<cpp.Float32>, _out_v:cpp.Reference<cpp.Float32>):cpp.Void;
	@:native("ImGui::ColorConvertHSVtoRGB")
	static function colorConvertHSVtoRGB(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _out_r:cpp.Reference<cpp.Float32>, _out_g:cpp.Reference<cpp.Float32>, _out_b:cpp.Reference<cpp.Float32>):cpp.Void;
	@:native("ImGui::ColorConvertFloat4ToU32")
	static function colorConvertFloat4ToU32(_in:imgui.ImVec4):imgui.ImU32;
	@:native("ImGui::ColorButton")
	static function colorButton(_desc_id:imgui.CharPointer, _col:imgui.ImVec4, _flags:imgui.ImGuiColorEditFlags, _size:imgui.ImVec2):Bool;
	@:native("ImGui::CollapsingHeader")
	@:overload(function(_label:imgui.CharPointer, _p_open:cpp.Star<Bool>, _flags:imgui.ImGuiTreeNodeFlags):Bool { })
	static function collapsingHeader(_label:imgui.CharPointer, _flags:imgui.ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::CloseCurrentPopup")
	static function closeCurrentPopup():cpp.Void;
	@:native("ImGui::CheckboxFlags")
	static function checkboxFlags(_label:imgui.CharPointer, _flags:cpp.Star<UInt>, _flags_value:UInt):Bool;
	@:native("ImGui::Checkbox")
	static function checkbox(_label:imgui.CharPointer, _v:cpp.Star<Bool>):Bool;
	@:native("ImGui::CaptureMouseFromApp")
	static function captureMouseFromApp(_want_capture_mouse_value:Bool):cpp.Void;
	@:native("ImGui::CaptureKeyboardFromApp")
	static function captureKeyboardFromApp(_want_capture_keyboard_value:Bool):cpp.Void;
	@:native("ImGui::CalcTextSize")
	@:overload(function(_pOut:cpp.Star<imgui.ImVec2>, _text:imgui.CharPointer, _text_end:imgui.CharPointer, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_text:imgui.CharPointer, _text_end:imgui.CharPointer, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):imgui.ImVec2 { })
	static function calcTextSize(_text:imgui.CharPointer, _text_end:imgui.CharPointer, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):imgui.ImVec2;
	@:native("ImGui::CalcListClipping")
	static function calcListClipping(_items_count:Int, _items_height:cpp.Float32, _out_items_display_start:cpp.Star<Int>, _out_items_display_end:cpp.Star<Int>):cpp.Void;
	@:native("ImGui::CalcItemWidth")
	static function calcItemWidth():cpp.Float32;
	@:native("ImGui::Button")
	static function button(_label:imgui.CharPointer, _size:imgui.ImVec2):Bool;
	@:native("ImGui::BulletTextV")
	static function bulletTextV(_fmt:imgui.CharPointer, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::BulletText")
	static function bulletText(_fmt:imgui.CharPointer, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::Bullet")
	static function bullet():cpp.Void;
	@:native("ImGui::BeginTooltip")
	static function beginTooltip():cpp.Void;
	@:native("ImGui::BeginTabItem")
	static function beginTabItem(_label:imgui.CharPointer, _p_open:cpp.Star<Bool>, _flags:imgui.ImGuiTabItemFlags):Bool;
	@:native("ImGui::BeginTabBar")
	static function beginTabBar(_str_id:imgui.CharPointer, _flags:imgui.ImGuiTabBarFlags):Bool;
	@:native("ImGui::BeginPopupModal")
	static function beginPopupModal(_name:imgui.CharPointer, _p_open:cpp.Star<Bool>, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginPopupContextWindow")
	static function beginPopupContextWindow(_str_id:imgui.CharPointer, _mouse_button:imgui.ImGuiMouseButton, _also_over_items:Bool):Bool;
	@:native("ImGui::BeginPopupContextVoid")
	static function beginPopupContextVoid(_str_id:imgui.CharPointer, _mouse_button:imgui.ImGuiMouseButton):Bool;
	@:native("ImGui::BeginPopupContextItem")
	static function beginPopupContextItem(_str_id:imgui.CharPointer, _mouse_button:imgui.ImGuiMouseButton):Bool;
	@:native("ImGui::BeginPopup")
	static function beginPopup(_str_id:imgui.CharPointer, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginMenuBar")
	static function beginMenuBar():Bool;
	@:native("ImGui::BeginMenu")
	static function beginMenu(_label:imgui.CharPointer, _enabled:Bool):Bool;
	@:native("ImGui::BeginMainMenuBar")
	static function beginMainMenuBar():Bool;
	@:native("ImGui::BeginGroup")
	static function beginGroup():cpp.Void;
	@:native("ImGui::BeginDragDropTarget")
	static function beginDragDropTarget():Bool;
	@:native("ImGui::BeginDragDropSource")
	static function beginDragDropSource(_flags:imgui.ImGuiDragDropFlags):Bool;
	@:native("ImGui::BeginCombo")
	static function beginCombo(_label:imgui.CharPointer, _preview_value:imgui.CharPointer, _flags:imgui.ImGuiComboFlags):Bool;
	@:native("ImGui::BeginChildFrame")
	static function beginChildFrame(_id:imgui.ImGuiID, _size:imgui.ImVec2, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginChild")
	@:overload(function(_id:imgui.ImGuiID, _size:imgui.ImVec2, _border:Bool, _flags:imgui.ImGuiWindowFlags):Bool { })
	static function beginChild(_str_id:imgui.CharPointer, _size:imgui.ImVec2, _border:Bool, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::Begin")
	static function begin(_name:imgui.CharPointer, _p_open:cpp.Star<Bool>, _flags:imgui.ImGuiWindowFlags):Bool;
	@:native("ImGui::ArrowButton")
	static function arrowButton(_str_id:imgui.CharPointer, _dir:imgui.ImGuiDir):Bool;
	@:native("ImGui::AlignTextToFramePadding")
	static function alignTextToFramePadding():cpp.Void;
	@:native("ImGui::AcceptDragDropPayload")
	static function acceptDragDropPayload(_type:imgui.CharPointer, _flags:imgui.ImGuiDragDropFlags):cpp.Star<imgui.ImGuiPayload>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiContext") extern class ImGuiContext {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawListSharedData") extern class ImDrawListSharedData {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector") extern class ImVector<T> {
	@:native("Data")
	var data : cpp.RawPointer<T>;
	@:native("ImGui::swap")
	function swap(_rhs:cpp.Reference<imgui.ImVector<T>>):cpp.Void;
	@:native("ImGui::size_in_bytes")
	function size_in_bytes():Int;
	@:native("ImGui::size")
	function size():Int;
	@:native("ImGui::shrink")
	function shrink(_new_size:Int):cpp.Void;
	@:native("ImGui::resize")
	@:overload(function(_new_size:Int, _v:T):cpp.Void { })
	function resize(_new_size:Int):cpp.Void;
	@:native("ImGui::reserve")
	function reserve(_new_capacity:Int):cpp.Void;
	@:native("ImGui::push_front")
	function push_front(_v:T):cpp.Void;
	@:native("ImGui::push_back")
	function push_back(_v:T):cpp.Void;
	@:native("ImGui::pop_back")
	function pop_back():cpp.Void;
	@:native("ImGui::insert")
	function insert(_it:cpp.Star<T>, _v:T):cpp.Star<T>;
	@:native("ImGui::index_from_ptr")
	function index_from_ptr(_it:cpp.Star<T>):Int;
	@:native("ImGui::front")
	@:overload(function():cpp.Reference<T> { })
	function front():cpp.Reference<T>;
	@:native("ImGui::find_erase_unsorted")
	function find_erase_unsorted(_v:T):Bool;
	@:native("ImGui::find_erase")
	function find_erase(_v:T):Bool;
	@:native("ImGui::find")
	@:overload(function(_v:T):cpp.Star<T> { })
	function find(_v:T):cpp.Star<T>;
	@:native("ImGui::erase_unsorted")
	function erase_unsorted(_it:cpp.Star<T>):cpp.Star<T>;
	@:native("ImGui::erase")
	@:overload(function(_it:cpp.Star<T>, _it_last:cpp.Star<T>):cpp.Star<T> { })
	function erase(_it:cpp.Star<T>):cpp.Star<T>;
	@:native("ImGui::end")
	@:overload(function():cpp.Star<T> { })
	function end():cpp.Star<T>;
	@:native("ImGui::empty")
	function empty():Bool;
	@:native("ImGui::contains")
	function contains(_v:T):Bool;
	@:native("ImGui::clear")
	function clear():cpp.Void;
	@:native("ImGui::capacity")
	function capacity():Int;
	@:native("ImGui::begin")
	@:overload(function():cpp.Star<T> { })
	function begin():cpp.Star<T>;
	@:native("ImGui::back")
	@:overload(function():cpp.Reference<T> { })
	function back():cpp.Reference<T>;
	@:native("ImGui::_grow_capacity")
	function _grow_capacity(_sz:Int):Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTextRange>") extern class ImVectorImGuiTextRange extends imgui.ImVector<imgui.ImGuiTextRange> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<char>") extern class ImVectorchar extends imgui.ImVector<cpp.Int8> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiStoragePair>") extern class ImVectorImGuiStoragePair extends imgui.ImVector<imgui.ImGuiStoragePair> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImWchar>") extern class ImVectorImWchar extends imgui.ImVector<imgui.ImWchar> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImU32>") extern class ImVectorImU32 extends imgui.ImVector<imgui.ImU32> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFont*>") extern class ImVectorImFontPointer extends imgui.ImVector<cpp.Star<imgui.ImFont>> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontAtlasCustomRect>") extern class ImVectorImFontAtlasCustomRect extends imgui.ImVector<imgui.ImFontAtlasCustomRect> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontConfig>") extern class ImVectorImFontConfig extends imgui.ImVector<imgui.ImFontConfig> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<float>") extern class ImVectorfloat extends imgui.ImVector<cpp.Float32> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontGlyph>") extern class ImVectorImFontGlyph extends imgui.ImVector<imgui.ImFontGlyph> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawChannel>") extern class ImVectorImDrawChannel extends imgui.ImVector<imgui.ImDrawChannel> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawCmd>") extern class ImVectorImDrawCmd extends imgui.ImVector<imgui.ImDrawCmd> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawIdx>") extern class ImVectorImDrawIdx extends imgui.ImVector<imgui.ImDrawIdx> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawVert>") extern class ImVectorImDrawVert extends imgui.ImVector<imgui.ImDrawVert> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImVec4>") extern class ImVectorImVec4 extends imgui.ImVector<imgui.ImVec4> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImTextureID>") extern class ImVectorImTextureID extends imgui.ImVector<imgui.ImTextureID> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImVec2>") extern class ImVectorImVec2 extends imgui.ImVector<imgui.ImVec2> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTextRange*>") extern class ImVectorImGuiTextRangePointer extends imgui.ImVector<cpp.Star<imgui.ImGuiTextRange>> {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImWchar*>") extern class ImVectorImWcharPointer extends imgui.ImVector<cpp.Star<imgui.ImWchar>> {

}

