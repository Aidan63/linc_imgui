package imgui;

import cpp.Star;
import cpp.RawPointer;
import cpp.Reference;
import cpp.Char;
import cpp.UInt8;
import cpp.Int8;
import cpp.UInt16;
import cpp.Int16;
import cpp.UInt64;
import cpp.Int64;
import cpp.Float32;
import cpp.ConstCharStar;
import cpp.VarArg;
import cpp.SizeT;
import cpp.Callable;

typedef ImDrawCallback = Callable<Star<ImDrawList>->Star<ImDrawCmd>->cpp.Void>;

typedef ImGuiInputTextCallback = Callable<Star<ImGuiInputTextCallbackData>->Int>;

typedef ImGuiSizeCallback = Callable<Star<ImGuiSizeCallbackData>->cpp.Void>;

typedef ImWchar = UInt16;

typedef ImU8 = UInt8;

typedef ImU64 = UInt64;

typedef ImU32 = Int;

typedef ImU16 = UInt16;

typedef ImTextureID = Star<cpp.Void>;

typedef ImS8 = Int8;

typedef ImS64 = Int64;

typedef ImS32 = Int;

typedef ImS16 = Int16;

typedef ImGuiID = Int;

typedef ImDrawIdx = UInt16;

enum abstract ImGuiWindowFlags(Int) from Int to Int
{
	var None = 0;
	var NoTitleBar = 1;
	var NoResize = 2;
	var NoMove = 4;
	var NoScrollbar = 8;
	var NoScrollWithMouse = 16;
	var NoCollapse = 32;
	var AlwaysAutoResize = 64;
	var NoBackground = 128;
	var NoSavedSettings = 256;
	var NoMouseInputs = 512;
	var MenuBar = 1024;
	var HorizontalScrollbar = 2048;
	var NoFocusOnAppearing = 4096;
	var NoBringToFrontOnFocus = 8192;
	var AlwaysVerticalScrollbar = 16384;
	var AlwaysHorizontalScrollbar = 32768;
	var AlwaysUseWindowPadding = 65536;
	var NoNavInputs = 262144;
	var NoNavFocus = 524288;
	var UnsavedDocument = 1048576;
	var NoNav = 786432;
	var NoDecoration = 43;
	var NoInputs = 786944;
	var NavFlattened = 8388608;
	var ChildWindow = 16777216;
	var Tooltip = 33554432;
	var Popup = 67108864;
	var Modal = 134217728;
	var ChildMenu = 268435456;
}

enum abstract ImGuiTreeNodeFlags(Int) from Int to Int
{
	var None = 0;
	var Selected = 1;
	var Framed = 2;
	var AllowItemOverlap = 4;
	var NoTreePushOnOpen = 8;
	var NoAutoOpenOnLog = 16;
	var DefaultOpen = 32;
	var OpenOnDoubleClick = 64;
	var OpenOnArrow = 128;
	var Leaf = 256;
	var Bullet = 512;
	var FramePadding = 1024;
	var NavLeftJumpsBackHere = 8192;
	var CollapsingHeader = 26;
}

enum abstract ImGuiTabItemFlags(Int) from Int to Int
{
	var None = 0;
	var UnsavedDocument = 1;
	var SetSelected = 2;
	var NoCloseWithMiddleMouseButton = 4;
	var NoPushId = 8;
}

enum abstract ImGuiTabBarFlags(Int) from Int to Int
{
	var None = 0;
	var Reorderable = 1;
	var AutoSelectNewTabs = 2;
	var TabListPopupButton = 4;
	var NoCloseWithMiddleMouseButton = 8;
	var NoTabListScrollingButtons = 16;
	var NoTooltip = 32;
	var FittingPolicyResizeDown = 64;
	var FittingPolicyScroll = 128;
	var FittingPolicyMask_ = 192;
	var FittingPolicyDefault_ = 64;
}

enum abstract ImGuiStyleVar(Int) from Int to Int
{
	var Alpha = 0;
	var WindowPadding = 1;
	var WindowRounding = 2;
	var WindowBorderSize = 3;
	var WindowMinSize = 4;
	var WindowTitleAlign = 5;
	var ChildRounding = 6;
	var ChildBorderSize = 7;
	var PopupRounding = 8;
	var PopupBorderSize = 9;
	var FramePadding = 10;
	var FrameRounding = 11;
	var FrameBorderSize = 12;
	var ItemSpacing = 13;
	var ItemInnerSpacing = 14;
	var IndentSpacing = 15;
	var ScrollbarSize = 16;
	var ScrollbarRounding = 17;
	var GrabMinSize = 18;
	var GrabRounding = 19;
	var TabRounding = 20;
	var ButtonTextAlign = 21;
	var SelectableTextAlign = 22;
	var COUNT = 23;
}

enum abstract ImGuiSelectableFlags(Int) from Int to Int
{
	var None = 0;
	var DontClosePopups = 1;
	var SpanAllColumns = 2;
	var AllowDoubleClick = 4;
	var Disabled = 8;
}

enum abstract ImGuiNavInput(Int) from Int to Int
{
	var Activate = 0;
	var Cancel = 1;
	var Input = 2;
	var Menu = 3;
	var DpadLeft = 4;
	var DpadRight = 5;
	var DpadUp = 6;
	var DpadDown = 7;
	var LStickLeft = 8;
	var LStickRight = 9;
	var LStickUp = 10;
	var LStickDown = 11;
	var FocusPrev = 12;
	var FocusNext = 13;
	var TweakSlow = 14;
	var TweakFast = 15;
	var KeyMenu_ = 16;
	var KeyTab_ = 17;
	var KeyLeft_ = 18;
	var KeyRight_ = 19;
	var KeyUp_ = 20;
	var KeyDown_ = 21;
	var COUNT = 22;
	var InternalStart_ = 16;
}

enum abstract ImGuiMouseCursor(Int) from Int to Int
{
	var None = -1;
	var Arrow = 0;
	var TextInput = 1;
	var ResizeAll = 2;
	var ResizeNS = 3;
	var ResizeEW = 4;
	var ResizeNESW = 5;
	var ResizeNWSE = 6;
	var Hand = 7;
	var COUNT = 8;
}

enum abstract ImGuiKey(Int) from Int to Int
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

enum abstract ImGuiInputTextFlags(Int) from Int to Int
{
	var None = 0;
	var CharsDecimal = 1;
	var CharsHexadecimal = 2;
	var CharsUppercase = 4;
	var CharsNoBlank = 8;
	var AutoSelectAll = 16;
	var EnterReturnsTrue = 32;
	var CallbackCompletion = 64;
	var CallbackHistory = 128;
	var CallbackAlways = 256;
	var CallbackCharFilter = 512;
	var AllowTabInput = 1024;
	var CtrlEnterForNewLine = 2048;
	var NoHorizontalScroll = 4096;
	var AlwaysInsertMode = 8192;
	var ReadOnly = 16384;
	var Password = 32768;
	var NoUndoRedo = 65536;
	var CharsScientific = 131072;
	var CallbackResize = 262144;
	var Multiline = 1048576;
	var NoMarkEdited = 2097152;
}

enum abstract ImGuiHoveredFlags(Int) from Int to Int
{
	var None = 0;
	var ChildWindows = 1;
	var RootWindow = 2;
	var AnyWindow = 4;
	var AllowWhenBlockedByPopup = 8;
	var AllowWhenBlockedByActiveItem = 32;
	var AllowWhenOverlapped = 64;
	var AllowWhenDisabled = 128;
	var RectOnly = 104;
	var RootAndChildWindows = 3;
}

enum abstract ImGuiFocusedFlags(Int) from Int to Int
{
	var None = 0;
	var ChildWindows = 1;
	var RootWindow = 2;
	var AnyWindow = 4;
	var RootAndChildWindows = 3;
}

enum abstract ImGuiDragDropFlags(Int) from Int to Int
{
	var None = 0;
	var SourceNoPreviewTooltip = 1;
	var SourceNoDisableHover = 2;
	var SourceNoHoldToOpenOthers = 4;
	var SourceAllowNullID = 8;
	var SourceExtern = 16;
	var SourceAutoExpirePayload = 32;
	var AcceptBeforeDelivery = 1024;
	var AcceptNoDrawDefaultRect = 2048;
	var AcceptNoPreviewTooltip = 4096;
	var AcceptPeekOnly = 3072;
}

enum abstract ImGuiDir(Int) from Int to Int
{
	var None = -1;
	var Left = 0;
	var Right = 1;
	var Up = 2;
	var Down = 3;
	var COUNT = 4;
}

enum abstract ImGuiDataType(Int) from Int to Int
{
	var S8 = 0;
	var U8 = 1;
	var S16 = 2;
	var U16 = 3;
	var S32 = 4;
	var U32 = 5;
	var S64 = 6;
	var U64 = 7;
	var Float = 8;
	var Double = 9;
	var COUNT = 10;
}

enum abstract ImGuiConfigFlags(Int) from Int to Int
{
	var None = 0;
	var NavEnableKeyboard = 1;
	var NavEnableGamepad = 2;
	var NavEnableSetMousePos = 4;
	var NavNoCaptureKeyboard = 8;
	var NoMouse = 16;
	var NoMouseCursorChange = 32;
	var IsSRGB = 1048576;
	var IsTouchScreen = 2097152;
}

enum abstract ImGuiCond(Int) from Int to Int
{
	var Always = 1;
	var Once = 2;
	var FirstUseEver = 4;
	var Appearing = 8;
}

enum abstract ImGuiComboFlags(Int) from Int to Int
{
	var None = 0;
	var PopupAlignLeft = 1;
	var HeightSmall = 2;
	var HeightRegular = 4;
	var HeightLarge = 8;
	var HeightLargest = 16;
	var NoArrowButton = 32;
	var NoPreview = 64;
	var HeightMask_ = 30;
}

enum abstract ImGuiColorEditFlags(Int) from Int to Int
{
	var None = 0;
	var NoAlpha = 2;
	var NoPicker = 4;
	var NoOptions = 8;
	var NoSmallPreview = 16;
	var NoInputs = 32;
	var NoTooltip = 64;
	var NoLabel = 128;
	var NoSidePreview = 256;
	var NoDragDrop = 512;
	var AlphaBar = 65536;
	var AlphaPreview = 131072;
	var AlphaPreviewHalf = 262144;
	var HDR = 524288;
	var DisplayRGB = 1048576;
	var DisplayHSV = 2097152;
	var DisplayHex = 4194304;
	var Uint8 = 8388608;
	var Float = 16777216;
	var PickerHueBar = 33554432;
	var PickerHueWheel = 67108864;
	var InputRGB = 134217728;
	var InputHSV = 268435456;
	var _OptionsDefault = 177209344;
	var _DisplayMask = 7340032;
	var _DataTypeMask = 25165824;
	var _PickerMask = 100663296;
	var _InputMask = 402653184;
}

enum abstract ImGuiCol(Int) from Int to Int
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
	var Tab = 33;
	var TabHovered = 34;
	var TabActive = 35;
	var TabUnfocused = 36;
	var TabUnfocusedActive = 37;
	var PlotLines = 38;
	var PlotLinesHovered = 39;
	var PlotHistogram = 40;
	var PlotHistogramHovered = 41;
	var TextSelectedBg = 42;
	var DragDropTarget = 43;
	var NavHighlight = 44;
	var NavWindowingHighlight = 45;
	var NavWindowingDimBg = 46;
	var ModalWindowDimBg = 47;
	var COUNT = 48;
}

enum abstract ImGuiBackendFlags(Int) from Int to Int
{
	var None = 0;
	var HasGamepad = 1;
	var HasMouseCursors = 2;
	var HasSetMousePos = 4;
	var RendererHasVtxOffset = 8;
}

enum abstract ImFontAtlasFlags(Int) from Int to Int
{
	var None = 0;
	var NoPowerOfTwoHeight = 1;
	var NoMouseCursors = 2;
}

enum abstract ImDrawListFlags(Int) from Int to Int
{
	var None = 0;
	var AntiAliasedLines = 1;
	var AntiAliasedFill = 2;
	var AllowVtxOffset = 4;
}

enum abstract ImDrawCornerFlags(Int) from Int to Int
{
	var TopLeft = 1;
	var TopRight = 2;
	var BotLeft = 4;
	var BotRight = 8;
	var Top = 3;
	var Bot = 12;
	var Left = 5;
	var Right = 10;
	var All = 15;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("TextRange")
extern class TextRange
{
	@:native("b")
	var b : ConstCharStar;

	@:native("e")
	var e : ConstCharStar;

	@:native("split")
	function split(_separator : Int8, _out : Star<ImVector_TextRange>) : Void;

	@:native("end")
	function end() : ConstCharStar;

	@:native("empty")
	function empty() : Bool;
	
	@:native("begin")
	function begin() : ConstCharStar;

	@:native("TextRange")
	@:overload(function() : TextRange {})
	static function create(__b : ConstCharStar, __e : ConstCharStar) : TextRange;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("Pair")
extern class Pair
{
	@:native("key")
	var key : ImGuiID;
	
	@:native("Pair")
	@:overload(function(__key : ImGuiID, __val_i : Int) : Pair {})
	@:overload(function(__key : ImGuiID, __val_f : Float32) : Pair {})
	static function create(__key : ImGuiID, __val_p : Star<cpp.Void>) : Pair;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<float>")
extern class ImVector_float extends ImVector<Float32>
{
	@:native("ImVector<float>")
	@:overload(function() : ImVector_float {})
	static function create(_src : ImVector_float) : ImVector_float;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<char>")
extern class ImVector_char extends ImVector<Char>
{
	@:native("ImVector<char>")
	@:overload(function() : ImVector_char {})
	static function create(_src : ImVector_char) : ImVector_char;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<TextRange>")
extern class ImVector_TextRange extends ImVector<TextRange>
{
	@:native("ImVector<TextRange>")
	@:overload(function() : ImVector_TextRange {})
	static function create(_src : ImVector_TextRange) : ImVector_TextRange;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<Pair>")
extern class ImVector_Pair extends ImVector<Pair>
{
	@:native("ImVector<Pair>")
	@:overload(function() : ImVector_Pair {})
	static function create(_src : ImVector_Pair) : ImVector_Pair;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImWchar>")
extern class ImVector_ImWchar extends ImVector<ImWchar>
{
	@:native("ImVector<ImWchar>")
	@:overload(function() : ImVector_ImWchar {})
	static function create(_src : ImVector_ImWchar) : ImVector_ImWchar;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImVec4>")
extern class ImVector_ImVec4 extends ImVector<ImVec4>
{
	@:native("ImVector<ImVec4>")
	@:overload(function() : ImVector_ImVec4 {})
	static function create(_src : ImVector_ImVec4) : ImVector_ImVec4;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImVec2>")
extern class ImVector_ImVec2 extends ImVector<ImVec2>
{
	@:native("ImVector_ImVec2")
	@:overload(function() : ImVector_ImVec2 {})
	static function create(_src : ImVector_ImVec2) : ImVector_ImVec2;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImU32>")
extern class ImVector_ImU32 extends ImVector<ImU32>
{
	@:native("ImVector<ImU32>")
	@:overload(function() : ImVector_ImU32 {})
	static function create(_src : ImVector_ImU32) : ImVector_ImU32;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImTextureID>")
extern class ImVector_ImTextureID extends ImVector<ImTextureID>
{
	@:native("ImVector<ImTextureID>")
	@:overload(function() : ImVector_ImTextureID {})
	static function create(_src : ImVector_ImTextureID) : ImVector_ImTextureID;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImFont*>")
extern class ImVector_ImFontPtr extends ImVector<Star<ImFont>>
{
	@:native("ImVector<ImFont*>")
	@:overload(function() : ImVector_ImFontPtr {})
	static function create(_src : ImVector_ImFontPtr) : ImVector_ImFontPtr;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImFontGlyph>")
extern class ImVector_ImFontGlyph extends ImVector<ImFontGlyph>
{
	@:native("ImVector<ImFontGlyph>")
	@:overload(function() : ImVector_ImFontGlyph {})
	static function create(_src : ImVector_ImFontGlyph) : ImVector_ImFontGlyph;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImFontConfig>")
extern class ImVector_ImFontConfig extends ImVector<ImFontConfig>
{
	@:native("ImVector<ImFontConfig>")
	@:overload(function() : ImVector_ImFontConfig {})
	static function create(_src : ImVector_ImFontConfig) : ImVector_ImFontConfig;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImDrawVert>")
extern class ImVector_ImDrawVert extends ImVector<ImDrawVert>
{
	@:native("ImVector<ImDrawVert>")
	@:overload(function() : ImVector_ImDrawVert {})
	static function create(_src : ImVector_ImDrawVert) : ImVector_ImDrawVert;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImDrawIdx>")
extern class ImVector_ImDrawIdx extends ImVector<ImDrawIdx>
{
	@:native("ImVector<ImDrawIdx>")
	@:overload(function() : ImVector_ImDrawIdx {})
	static function create(_src : ImVector_ImDrawIdx) : ImVector_ImDrawIdx;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImDrawCmd>")
extern class ImVector_ImDrawCmd extends ImVector<ImDrawCmd>
{
	@:native("ImVector<ImDrawCmd>")
	@:overload(function() : ImVector_ImDrawCmd {})
	static function create(_src : ImVector_ImDrawCmd) : ImVector_ImDrawCmd;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<ImDrawChannel>")
extern class ImVector_ImDrawChannel extends ImVector<ImDrawChannel>
{
	@:native("ImVector<ImDrawChannel>")
	@:overload(function() : ImVector_ImDrawChannel {})
	static function create(_src : ImVector_ImDrawChannel) : ImVector_ImDrawChannel;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector<CustomRect>")
extern class ImVector_CustomRect extends ImVector<CustomRect>
{
	@:native("ImVector<CustomRect>")
	@:overload(function() : ImVector_CustomRect {})
	static function create(_src : ImVector_CustomRect) : ImVector_CustomRect;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVector")
extern class ImVector<T>
{
	@:native('Data')
	var data : RawPointer<T>;

	@:native("swap")
	function swap(_rhs : ImVector<T>) : Void;

	@:native("size_in_bytes")
	function size_in_bytes() : Int;

	@:native("size")
	function size() : Int;

	@:native("resize")
	@:overload(function(_new_size : Int) : Void {})
	function resize(_new_size : Int, _v : T) : Void;

	@:native("reserve")
	function reserve(_new_capacity : Int) : Void;

	@:native("push_front")
	function push_front(_v : T) : Void;

	@:native("push_back")
	function push_back(_v : T) : Void;

	@:native("pop_back")
	function pop_back() : Void;

	@:native("insert")
	function insert(_it : Star<T>, _v : T) : Star<T>;

	@:native("index_from_ptr")
	function index_from_ptr(_it : Star<T>) : Int;

	@:native("front")
	@:overload(function() : Reference<T> {})
	function front() : Reference<T>;

	@:native("erase_unsorted")
	function erase_unsorted(_it : Star<T>) : Star<T>;

	@:native("erase")
	@:overload(function(_it : Star<T>) : Star<T> {})
	function erase(_it : Star<T>, _it_last : Star<T>) : Star<T>;

	@:native("end")
	@:overload(function() : Star<T> {})
	function end() : Star<T>;

	@:native("empty")
	function empty() : Bool;

	@:native("clear")
	function clear() : Void;

	@:native("capacity")
	function capacity() : Int;

	@:native("begin")
	@:overload(function() : Star<T> {})
	function begin() : Star<T>;

	@:native("back")
	@:overload(function() : Reference<T> {})
	function back() : Reference<T>;

	@:native("_grow_capacity")
	function _grow_capacity(_sz : Int) : Int;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVec4")
extern class ImVec4
{
	@:native("x")
	var x : Float32;

	@:native("y")
	var y : Float32;

	@:native("z")
	var z : Float32;

	@:native("w")
	var w : Float32;
	
	@:native("ImVec4")
	@:overload(function() : ImVec4 {})
	static function create(__x : Float32, __y : Float32, __z : Float32, __w : Float32) : ImVec4;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImVec2")
extern class ImVec2
{
	@:native("x")
	var x : Float32;

	@:native("y")
	var y : Float32;
	
	@:native("ImVec2")
	@:overload(function() : ImVec2 {})
	static function create(__x : Float32, __y : Float32) : ImVec2;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiTextFilter")
extern class ImGuiTextFilter
{
	@:native("InputBuf")
	var inputBuf : RawPointer<Int8>;

	@:native("Filters")
	var filters : ImVector_TextRange;

	@:native("CountGrep")
	var countGrep : Int;
	
	@:native("PassFilter")
	@:overload(function(_text : ConstCharStar) : Bool {})
	function passFilter(_text : ConstCharStar, _text_end : ConstCharStar) : Bool;

	@:native("IsActive")
	function isActive() : Bool;

	@:native("ImGuiTextFilter")
	@:overload(function() : ImGuiTextFilter {})
	static function create(_default_filter : ConstCharStar) : ImGuiTextFilter;

	@:native("Draw")
	@:overload(function(_label : ConstCharStar) : Bool {})
	@:overload(function() : Bool {})
	function draw(_label : ConstCharStar, _width : Float32) : Bool;

	@:native("Clear")
	function clear() : Void;

	@:native("Build")
	function build() : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiTextBuffer")
extern class ImGuiTextBuffer
{
	@:native("Buf")
	var buf : ImVector_char;

	@:native("size")
	function size() : Int;

	@:native("reserve")
	function reserve(_capacity : Int) : Void;

	@:native("end")
	function end() : ConstCharStar;

	@:native("empty")
	function empty() : Bool;
	
	@:native("clear")
	function clear() : Void;

	@:native("c_str")
	function c_str() : ConstCharStar;

	@:native("begin")
	function begin() : ConstCharStar;

	@:native("appendfv")
	function appendfv(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("appendf")
	function appendf(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("append")
	@:overload(function(_str : ConstCharStar) : Void {})
	function append(_str : ConstCharStar, _str_end : ConstCharStar) : Void;

	@:native("ImGuiTextBuffer")
	static function create() : ImGuiTextBuffer;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiStyle")
extern class ImGuiStyle
{
	@:native("Alpha")
	var alpha : Float32;

	@:native("WindowPadding")
	var windowPadding : ImVec2;

	@:native("WindowRounding")
	var windowRounding : Float32;

	@:native("WindowBorderSize")
	var windowBorderSize : Float32;

	@:native("WindowMinSize")
	var windowMinSize : ImVec2;

	@:native("WindowTitleAlign")
	var windowTitleAlign : ImVec2;

	@:native("WindowMenuButtonPosition")
	var windowMenuButtonPosition : ImGuiDir;

	@:native("ChildRounding")
	var childRounding : Float32;

	@:native("ChildBorderSize")
	var childBorderSize : Float32;

	@:native("PopupRounding")
	var popupRounding : Float32;

	@:native("PopupBorderSize")
	var popupBorderSize : Float32;

	@:native("FramePadding")
	var framePadding : ImVec2;

	@:native("FrameRounding")
	var frameRounding : Float32;

	@:native("FrameBorderSize")
	var frameBorderSize : Float32;

	@:native("ItemSpacing")
	var itemSpacing : ImVec2;

	@:native("ItemInnerSpacing")
	var itemInnerSpacing : ImVec2;

	@:native("TouchExtraPadding")
	var touchExtraPadding : ImVec2;

	@:native("IndentSpacing")
	var indentSpacing : Float32;

	@:native("ColumnsMinSpacing")
	var columnsMinSpacing : Float32;

	@:native("ScrollbarSize")
	var scrollbarSize : Float32;

	@:native("ScrollbarRounding")
	var scrollbarRounding : Float32;

	@:native("GrabMinSize")
	var grabMinSize : Float32;

	@:native("GrabRounding")
	var grabRounding : Float32;

	@:native("TabRounding")
	var tabRounding : Float32;

	@:native("TabBorderSize")
	var tabBorderSize : Float32;

	@:native("ButtonTextAlign")
	var buttonTextAlign : ImVec2;

	@:native("SelectableTextAlign")
	var selectableTextAlign : ImVec2;

	@:native("DisplayWindowPadding")
	var displayWindowPadding : ImVec2;

	@:native("DisplaySafeAreaPadding")
	var displaySafeAreaPadding : ImVec2;

	@:native("MouseCursorScale")
	var mouseCursorScale : Float32;

	@:native("AntiAliasedLines")
	var antiAliasedLines : Bool;

	@:native("AntiAliasedFill")
	var antiAliasedFill : Bool;

	@:native("CurveTessellationTol")
	var curveTessellationTol : Float32;

	@:native("Colors")
	var colors : RawPointer<ImVec4>;
	
	@:native("ScaleAllSizes")
	function scaleAllSizes(_scale_factor : Float32) : Void;

	@:native("ImGuiStyle")
	static function create() : ImGuiStyle;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiStorage")
extern class ImGuiStorage
{
	@:native("Data")
	var data : ImVector_Pair;

	@:native("SetVoidPtr")
	function setVoidPtr(_key : ImGuiID, _val : Star<cpp.Void>) : Void;

	@:native("SetInt")
	function setInt(_key : ImGuiID, _val : Int) : Void;

	@:native("SetFloat")
	function setFloat(_key : ImGuiID, _val : Float32) : Void;

	@:native("SetBool")
	function setBool(_key : ImGuiID, _val : Bool) : Void;

	@:native("SetAllInt")
	function setAllInt(_val : Int) : Void;

	@:native("GetVoidPtrRef")
	@:overload(function(_key : ImGuiID) : Star<Void> {})
	function getVoidPtrRef(_key : ImGuiID, _default_val : Star<cpp.Void>) : Star<Void>;

	@:native("GetVoidPtr")
	function getVoidPtr(_key : ImGuiID) : Star<Void>;

	@:native("GetIntRef")
	@:overload(function(_key : ImGuiID) : Star<Int> {})
	function getIntRef(_key : ImGuiID, _default_val : Int) : Star<Int>;

	@:native("GetInt")
	@:overload(function(_key : ImGuiID) : Int {})
	function getInt(_key : ImGuiID, _default_val : Int) : Int;

	@:native("GetFloatRef")
	@:overload(function(_key : ImGuiID) : Star<Float32> {})
	function getFloatRef(_key : ImGuiID, _default_val : Float32) : Star<Float32>;

	@:native("GetFloat")
	@:overload(function(_key : ImGuiID) : Float32 {})
	function getFloat(_key : ImGuiID, _default_val : Float32) : Float32;

	@:native("GetBoolRef")
	@:overload(function(_key : ImGuiID) : Star<Bool> {})
	function getBoolRef(_key : ImGuiID, _default_val : Bool) : Star<Bool>;

	@:native("GetBool")
	@:overload(function(_key : ImGuiID) : Bool {})
	function getBool(_key : ImGuiID, _default_val : Bool) : Bool;

	@:native("Clear")
	function clear() : Void;

	@:native("BuildSortByKey")
	function buildSortByKey() : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiSizeCallbackData")
extern class ImGuiSizeCallbackData
{
	@:native("UserData")
	var userData : Star<cpp.Void>;

	@:native("Pos")
	var pos : ImVec2;

	@:native("CurrentSize")
	var currentSize : ImVec2;

	@:native("DesiredSize")
	var desiredSize : ImVec2;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiPayload")
extern class ImGuiPayload
{
	@:native("Data")
	var data : Star<cpp.Void>;

	@:native("DataSize")
	var dataSize : Int;

	@:native("SourceId")
	var sourceId : ImGuiID;

	@:native("SourceParentId")
	var sourceParentId : ImGuiID;

	@:native("DataFrameCount")
	var dataFrameCount : Int;

	@:native("DataType")
	var dataType : RawPointer<Int8>;

	@:native("Preview")
	var preview : Bool;

	@:native("Delivery")
	var delivery : Bool;
	
	@:native("IsPreview")
	function isPreview() : Bool;

	@:native("IsDelivery")
	function isDelivery() : Bool;

	@:native("IsDataType")
	function isDataType(_type : ConstCharStar) : Bool;

	@:native("ImGuiPayload")
	static function create() : ImGuiPayload;

	@:native("Clear")
	function clear() : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiOnceUponAFrame")
extern class ImGuiOnceUponAFrame
{
	@:native("RefFrame")
	var refFrame : Int;
	
	@:native("ImGuiOnceUponAFrame")
	static function create() : ImGuiOnceUponAFrame;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiListClipper")
extern class ImGuiListClipper
{
	@:native("StartPosY")
	var startPosY : Float32;

	@:native("ItemsHeight")
	var itemsHeight : Float32;

	@:native("ItemsCount")
	var itemsCount : Int;

	@:native("StepNo")
	var stepNo : Int;

	@:native("DisplayStart")
	var displayStart : Int;

	@:native("DisplayEnd")
	var displayEnd : Int;
	
	@:native("Step")
	function step() : Bool;

	@:native("ImGuiListClipper")
	@:overload(function(_items_count : Int) : ImGuiListClipper {})
	@:overload(function() : ImGuiListClipper {})
	static function create(_items_count : Int, _items_height : Float32) : ImGuiListClipper;

	@:native("End")
	function end() : Void;

	@:native("Begin")
	@:overload(function(_items_count : Int) : Void {})
	function begin(_items_count : Int, _items_height : Float32) : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiInputTextCallbackData")
extern class ImGuiInputTextCallbackData
{
	@:native("EventFlag")
	var eventFlag : ImGuiInputTextFlags;

	@:native("Flags")
	var flags : ImGuiInputTextFlags;

	@:native("UserData")
	var userData : Star<cpp.Void>;

	@:native("EventChar")
	var eventChar : ImWchar;

	@:native("EventKey")
	var eventKey : ImGuiKey;

	@:native("Buf")
	var buf : Star<Int8>;

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
	@:overload(function(_pos : Int, _text : ConstCharStar) : Void {})
	function insertChars(_pos : Int, _text : ConstCharStar, _text_end : ConstCharStar) : Void;

	@:native("ImGuiInputTextCallbackData")
	static function create() : ImGuiInputTextCallbackData;

	@:native("HasSelection")
	function hasSelection() : Bool;

	@:native("DeleteChars")
	function deleteChars(_pos : Int, _bytes_count : Int) : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiIO")
extern class ImGuiIO
{
	@:native("ConfigFlags")
	var configFlags : ImGuiConfigFlags;

	@:native("BackendFlags")
	var backendFlags : ImGuiBackendFlags;

	@:native("DisplaySize")
	var displaySize : ImVec2;

	@:native("DeltaTime")
	var deltaTime : Float32;

	@:native("IniSavingRate")
	var iniSavingRate : Float32;

	@:native("IniFilename")
	var iniFilename : ConstCharStar;

	@:native("LogFilename")
	var logFilename : ConstCharStar;

	@:native("MouseDoubleClickTime")
	var mouseDoubleClickTime : Float32;

	@:native("MouseDoubleClickMaxDist")
	var mouseDoubleClickMaxDist : Float32;

	@:native("MouseDragThreshold")
	var mouseDragThreshold : Float32;

	@:native("KeyMap")
	var keyMap : RawPointer<Int>;

	@:native("KeyRepeatDelay")
	var keyRepeatDelay : Float32;

	@:native("KeyRepeatRate")
	var keyRepeatRate : Float32;

	@:native("UserData")
	var userData : Star<cpp.Void>;

	@:native("Fonts")
	var fonts : Star<ImFontAtlas>;

	@:native("FontGlobalScale")
	var fontGlobalScale : Float32;

	@:native("FontAllowUserScaling")
	var fontAllowUserScaling : Bool;

	@:native("FontDefault")
	var fontDefault : Star<ImFont>;

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

	@:native("BackendPlatformName")
	var backendPlatformName : ConstCharStar;

	@:native("BackendRendererName")
	var backendRendererName : ConstCharStar;

	@:native("BackendPlatformUserData")
	var backendPlatformUserData : Star<cpp.Void>;

	@:native("BackendRendererUserData")
	var backendRendererUserData : Star<cpp.Void>;

	@:native("BackendLanguageUserData")
	var backendLanguageUserData : Star<cpp.Void>;

	@:native("ClipboardUserData")
	var clipboardUserData : Star<cpp.Void>;

	@:native("ImeWindowHandle")
	var imeWindowHandle : Star<cpp.Void>;

	@:native("RenderDrawListsFnUnused")
	var renderDrawListsFnUnused : Star<cpp.Void>;

	@:native("MousePos")
	var mousePos : ImVec2;

	@:native("MouseDown")
	var mouseDown : RawPointer<Bool>;

	@:native("MouseWheel")
	var mouseWheel : Float32;

	@:native("MouseWheelH")
	var mouseWheelH : Float32;

	@:native("KeyCtrl")
	var keyCtrl : Bool;

	@:native("KeyShift")
	var keyShift : Bool;

	@:native("KeyAlt")
	var keyAlt : Bool;

	@:native("KeySuper")
	var keySuper : Bool;

	@:native("KeysDown")
	var keysDown : RawPointer<Bool>;

	@:native("NavInputs")
	var navInputs : RawPointer<Float32>;

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
	var framerate : Float32;

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

	@:native("MousePosPrev")
	var mousePosPrev : ImVec2;

	@:native("MouseClickedPos")
	var mouseClickedPos : RawPointer<ImVec2>;

	@:native("MouseClickedTime")
	var mouseClickedTime : RawPointer<Float>;

	@:native("MouseClicked")
	var mouseClicked : RawPointer<Bool>;

	@:native("MouseDoubleClicked")
	var mouseDoubleClicked : RawPointer<Bool>;

	@:native("MouseReleased")
	var mouseReleased : RawPointer<Bool>;

	@:native("MouseDownOwned")
	var mouseDownOwned : RawPointer<Bool>;

	@:native("MouseDownWasDoubleClick")
	var mouseDownWasDoubleClick : RawPointer<Bool>;

	@:native("MouseDownDuration")
	var mouseDownDuration : RawPointer<Float32>;

	@:native("MouseDownDurationPrev")
	var mouseDownDurationPrev : RawPointer<Float32>;

	@:native("MouseDragMaxDistanceAbs")
	var mouseDragMaxDistanceAbs : RawPointer<ImVec2>;

	@:native("MouseDragMaxDistanceSqr")
	var mouseDragMaxDistanceSqr : RawPointer<Float32>;

	@:native("KeysDownDuration")
	var keysDownDuration : RawPointer<Float32>;

	@:native("KeysDownDurationPrev")
	var keysDownDurationPrev : RawPointer<Float32>;

	@:native("NavInputsDownDuration")
	var navInputsDownDuration : RawPointer<Float32>;

	@:native("NavInputsDownDurationPrev")
	var navInputsDownDurationPrev : RawPointer<Float32>;

	@:native("InputQueueCharacters")
	var inputQueueCharacters : ImVector_ImWchar;

	@:native('SetClipboardTextFn')
	var setClipboardTextFn : Callable<Star<cpp.Void>->ConstCharStar->Void>;

	@:native('GetClipboardTextFn')
	var getClipboardTextFn : Callable<Star<cpp.Void>->ConstCharStar>;
	
	@:native("ImGuiIO")
	static function create() : ImGuiIO;

	@:native("ClearInputCharacters")
	function clearInputCharacters() : Void;

	@:native("AddInputCharactersUTF8")
	function addInputCharactersUTF8(_str : ConstCharStar) : Void;

	@:native("AddInputCharacter")
	function addInputCharacter(_c : Int) : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImGuiContext")
extern class ImGuiContext
{
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImFontGlyphRangesBuilder")
extern class ImFontGlyphRangesBuilder
{
	@:native("UsedChars")
	var usedChars : ImVector_ImU32;
	
	@:native("SetBit")
	function setBit(_n : Int) : Void;

	@:native("ImFontGlyphRangesBuilder")
	static function create() : ImFontGlyphRangesBuilder;

	@:native("GetBit")
	function getBit(_n : Int) : Bool;

	@:native("Clear")
	function clear() : Void;

	@:native("BuildRanges")
	function buildRanges(_out_ranges : Star<ImVector_ImWchar>) : Void;

	@:native("AddText")
	@:overload(function(_text : ConstCharStar) : Void {})
	function addText(_text : ConstCharStar, _text_end : ConstCharStar) : Void;

	@:native("AddRanges")
	function addRanges(_ranges : Star<ImWchar>) : Void;

	@:native("AddChar")
	function addChar(_c : ImWchar) : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImFontGlyph")
extern class ImFontGlyph
{
	@:native("Codepoint")
	var codepoint : ImWchar;

	@:native("AdvanceX")
	var advanceX : Float32;

	@:native("X0")
	var x0 : Float32;

	@:native("Y0")
	var y0 : Float32;

	@:native("X1")
	var x1 : Float32;

	@:native("Y1")
	var y1 : Float32;

	@:native("U0")
	var u0 : Float32;

	@:native("V0")
	var v0 : Float32;

	@:native("U1")
	var u1 : Float32;

	@:native("V1")
	var v1 : Float32;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImFontConfig")
extern class ImFontConfig
{
	@:native("FontData")
	var fontData : Star<cpp.Void>;

	@:native("FontDataSize")
	var fontDataSize : Int;

	@:native("FontDataOwnedByAtlas")
	var fontDataOwnedByAtlas : Bool;

	@:native("FontNo")
	var fontNo : Int;

	@:native("SizePixels")
	var sizePixels : Float32;

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
	var glyphRanges : Star<ImWchar>;

	@:native("GlyphMinAdvanceX")
	var glyphMinAdvanceX : Float32;

	@:native("GlyphMaxAdvanceX")
	var glyphMaxAdvanceX : Float32;

	@:native("MergeMode")
	var mergeMode : Bool;

	@:native("RasterizerFlags")
	var rasterizerFlags : Int;

	@:native("RasterizerMultiply")
	var rasterizerMultiply : Float32;

	@:native("Name")
	var name : RawPointer<Int8>;

	@:native("DstFont")
	var dstFont : Star<ImFont>;
	
	@:native("ImFontConfig")
	static function create() : ImFontConfig;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImFontAtlas")
extern class ImFontAtlas
{
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
	var texPixelsAlpha8 : Star<UInt8>;

	@:native("TexPixelsRGBA32")
	var texPixelsRGBA32 : Star<Int>;

	@:native("TexWidth")
	var texWidth : Int;

	@:native("TexHeight")
	var texHeight : Int;

	@:native("TexUvScale")
	var texUvScale : ImVec2;

	@:native("TexUvWhitePixel")
	var texUvWhitePixel : ImVec2;

	@:native("Fonts")
	var fonts : ImVector_ImFontPtr;

	@:native("CustomRects")
	var customRects : ImVector_CustomRect;

	@:native("ConfigData")
	var configData : ImVector_ImFontConfig;

	@:native("CustomRectIds")
	var customRectIds : RawPointer<Int>;
	
	@:native("SetTexID")
	function setTexID(_id : ImTextureID) : Void;

	@:native("IsBuilt")
	function isBuilt() : Bool;

	@:native("ImFontAtlas")
	static function create() : ImFontAtlas;

	@:native("GetTexDataAsRGBA32")
	@:overload(function(_out_pixels : Star<UInt8>, _out_width : Star<Int>, _out_height : Star<Int>) : Void {})
	function getTexDataAsRGBA32(_out_pixels : Star<UInt8>, _out_width : Star<Int>, _out_height : Star<Int>, _out_bytes_per_pixel : Star<Int>) : Void;

	@:native("GetTexDataAsAlpha8")
	@:overload(function(_out_pixels : Star<UInt8>, _out_width : Star<Int>, _out_height : Star<Int>) : Void {})
	function getTexDataAsAlpha8(_out_pixels : Star<UInt8>, _out_width : Star<Int>, _out_height : Star<Int>, _out_bytes_per_pixel : Star<Int>) : Void;

	@:native("GetMouseCursorTexData")
	function getMouseCursorTexData(_cursor : ImGuiMouseCursor, _out_offset : Star<ImVec2>, _out_size : Star<ImVec2>, _out_uv_border : Star<ImVec2>, _out_uv_fill : Star<ImVec2>) : Bool;

	@:native("GetGlyphRangesVietnamese")
	function getGlyphRangesVietnamese() : Star<ImWchar>;

	@:native("GetGlyphRangesThai")
	function getGlyphRangesThai() : Star<ImWchar>;

	@:native("GetGlyphRangesKorean")
	function getGlyphRangesKorean() : Star<ImWchar>;

	@:native("GetGlyphRangesJapanese")
	function getGlyphRangesJapanese() : Star<ImWchar>;

	@:native("GetGlyphRangesDefault")
	function getGlyphRangesDefault() : Star<ImWchar>;

	@:native("GetGlyphRangesCyrillic")
	function getGlyphRangesCyrillic() : Star<ImWchar>;

	@:native("GetGlyphRangesChineseSimplifiedCommon")
	function getGlyphRangesChineseSimplifiedCommon() : Star<ImWchar>;

	@:native("GetGlyphRangesChineseFull")
	function getGlyphRangesChineseFull() : Star<ImWchar>;

	@:native("GetCustomRectByIndex")
	function getCustomRectByIndex(_index : Int) : Star<CustomRect>;

	@:native("ClearTexData")
	function clearTexData() : Void;

	@:native("ClearInputData")
	function clearInputData() : Void;

	@:native("ClearFonts")
	function clearFonts() : Void;

	@:native("Clear")
	function clear() : Void;

	@:native("CalcCustomRectUV")
	function calcCustomRectUV(_rect : Star<CustomRect>, _out_uv_min : Star<ImVec2>, _out_uv_max : Star<ImVec2>) : Void;

	@:native("Build")
	function build() : Bool;

	@:native("AddFontFromMemoryTTF")
	@:overload(function(_font_data : Star<cpp.Void>, _font_size : Int, _size_pixels : Float32, _font_cfg : Star<ImFontConfig>) : Star<ImFont> {})
	@:overload(function(_font_data : Star<cpp.Void>, _font_size : Int, _size_pixels : Float32) : Star<ImFont> {})
	function addFontFromMemoryTTF(_font_data : Star<cpp.Void>, _font_size : Int, _size_pixels : Float32, _font_cfg : Star<ImFontConfig>, _glyph_ranges : Star<ImWchar>) : Star<ImFont>;

	@:native("AddFontFromMemoryCompressedTTF")
	@:overload(function(_compressed_font_data : Star<cpp.Void>, _compressed_font_size : Int, _size_pixels : Float32, _font_cfg : Star<ImFontConfig>) : Star<ImFont> {})
	@:overload(function(_compressed_font_data : Star<cpp.Void>, _compressed_font_size : Int, _size_pixels : Float32) : Star<ImFont> {})
	function addFontFromMemoryCompressedTTF(_compressed_font_data : Star<cpp.Void>, _compressed_font_size : Int, _size_pixels : Float32, _font_cfg : Star<ImFontConfig>, _glyph_ranges : Star<ImWchar>) : Star<ImFont>;

	@:native("AddFontFromMemoryCompressedBase85TTF")
	@:overload(function(_compressed_font_data_base85 : ConstCharStar, _size_pixels : Float32, _font_cfg : Star<ImFontConfig>) : Star<ImFont> {})
	@:overload(function(_compressed_font_data_base85 : ConstCharStar, _size_pixels : Float32) : Star<ImFont> {})
	function addFontFromMemoryCompressedBase85TTF(_compressed_font_data_base85 : ConstCharStar, _size_pixels : Float32, _font_cfg : Star<ImFontConfig>, _glyph_ranges : Star<ImWchar>) : Star<ImFont>;

	@:native("AddFontFromFileTTF")
	@:overload(function(_filename : ConstCharStar, _size_pixels : Float32, _font_cfg : Star<ImFontConfig>) : Star<ImFont> {})
	@:overload(function(_filename : ConstCharStar, _size_pixels : Float32) : Star<ImFont> {})
	function addFontFromFileTTF(_filename : ConstCharStar, _size_pixels : Float32, _font_cfg : Star<ImFontConfig>, _glyph_ranges : Star<ImWchar>) : Star<ImFont>;

	@:native("AddFontDefault")
	@:overload(function() : Star<ImFont> {})
	function addFontDefault(_font_cfg : Star<ImFontConfig>) : Star<ImFont>;

	@:native("AddFont")
	function addFont(_font_cfg : Star<ImFontConfig>) : Star<ImFont>;

	@:native("AddCustomRectRegular")
	function addCustomRectRegular(_id : Int, _width : Int, _height : Int) : Int;

	@:native("AddCustomRectFontGlyph")
	@:overload(function(_font : Star<ImFont>, _id : ImWchar, _width : Int, _height : Int, _advance_x : Float32) : Int {})
	function addCustomRectFontGlyph(_font : Star<ImFont>, _id : ImWchar, _width : Int, _height : Int, _advance_x : Float32, _offset : ImVec2) : Int;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImFont")
extern class ImFont
{
	@:native("IndexAdvanceX")
	var indexAdvanceX : ImVector_float;

	@:native("FallbackAdvanceX")
	var fallbackAdvanceX : Float32;

	@:native("FontSize")
	var fontSize : Float32;

	@:native("IndexLookup")
	var indexLookup : ImVector_ImWchar;

	@:native("Glyphs")
	var glyphs : ImVector_ImFontGlyph;

	@:native("FallbackGlyph")
	var fallbackGlyph : Star<ImFontGlyph>;

	@:native("DisplayOffset")
	var displayOffset : ImVec2;

	@:native("ContainerAtlas")
	var containerAtlas : Star<ImFontAtlas>;

	@:native("ConfigData")
	var configData : Star<ImFontConfig>;

	@:native("ConfigDataCount")
	var configDataCount : Int16;

	@:native("FallbackChar")
	var fallbackChar : ImWchar;

	@:native("Scale")
	var scale : Float32;

	@:native("Ascent")
	var ascent : Float32;

	@:native("Descent")
	var descent : Float32;

	@:native("MetricsTotalSurface")
	var metricsTotalSurface : Int;

	@:native("DirtyLookupTables")
	var dirtyLookupTables : Bool;
	
	@:native("SetFallbackChar")
	function setFallbackChar(_c : ImWchar) : Void;

	@:native("RenderText")
	@:overload(function(_draw_list : Star<ImDrawList>, _size : Float32, _pos : ImVec2, _col : ImU32, _clip_rect : ImVec4, _text_begin : ConstCharStar, _text_end : ConstCharStar, _wrap_width : Float32) : Void {})
	@:overload(function(_draw_list : Star<ImDrawList>, _size : Float32, _pos : ImVec2, _col : ImU32, _clip_rect : ImVec4, _text_begin : ConstCharStar, _text_end : ConstCharStar) : Void {})
	function renderText(_draw_list : Star<ImDrawList>, _size : Float32, _pos : ImVec2, _col : ImU32, _clip_rect : ImVec4, _text_begin : ConstCharStar, _text_end : ConstCharStar, _wrap_width : Float32, _cpu_fine_clip : Bool) : Void;

	@:native("RenderChar")
	function renderChar(_draw_list : Star<ImDrawList>, _size : Float32, _pos : ImVec2, _col : ImU32, _c : ImWchar) : Void;

	@:native("IsLoaded")
	function isLoaded() : Bool;

	@:native("ImFont")
	static function create() : ImFont;

	@:native("GrowIndex")
	function growIndex(_new_size : Int) : Void;

	@:native("GetDebugName")
	function getDebugName() : ConstCharStar;

	@:native("GetCharAdvance")
	function getCharAdvance(_c : ImWchar) : Float32;

	@:native("FindGlyphNoFallback")
	function findGlyphNoFallback(_c : ImWchar) : Star<ImFontGlyph>;

	@:native("FindGlyph")
	function findGlyph(_c : ImWchar) : Star<ImFontGlyph>;

	@:native("ClearOutputData")
	function clearOutputData() : Void;

	@:native("CalcWordWrapPositionA")
	function calcWordWrapPositionA(_scale : Float32, _text : ConstCharStar, _text_end : ConstCharStar, _wrap_width : Float32) : ConstCharStar;

	@:native("CalcTextSizeA")
	@:overload(function(_size : Float32, _max_width : Float32, _wrap_width : Float32, _text_begin : ConstCharStar, _text_end : ConstCharStar) : ImVec2 {})
	@:overload(function(_size : Float32, _max_width : Float32, _wrap_width : Float32, _text_begin : ConstCharStar) : ImVec2 {})
	@:overload(function(_size : Float32, _max_width : Float32, _wrap_width : Float32, _text_begin : ConstCharStar, _text_end : ConstCharStar, _remaining : Star<Int8>) : ImVec2 {})
	@:overload(function(_size : Float32, _max_width : Float32, _wrap_width : Float32, _text_begin : ConstCharStar, _text_end : ConstCharStar) : Void {})
	@:overload(function(_size : Float32, _max_width : Float32, _wrap_width : Float32, _text_begin : ConstCharStar) : Void {})
	@:overload(function(_size : Float32, _max_width : Float32, _wrap_width : Float32, _text_begin : ConstCharStar, _text_end : ConstCharStar, _remaining : Star<Int8>) : Void {})
	@:overload(function(_size : Float32, _max_width : Float32, _wrap_width : Float32, _text_begin : ConstCharStar, _text_end : ConstCharStar) : ImVec2 {})
	@:overload(function(_size : Float32, _max_width : Float32, _wrap_width : Float32, _text_begin : ConstCharStar) : ImVec2 {})
	function calcTextSizeA(_size : Float32, _max_width : Float32, _wrap_width : Float32, _text_begin : ConstCharStar, _text_end : ConstCharStar, _remaining : Star<Int8>) : ImVec2;

	@:native("BuildLookupTable")
	function buildLookupTable() : Void;

	@:native("AddRemapChar")
	@:overload(function(_dst : ImWchar, _src : ImWchar) : Void {})
	function addRemapChar(_dst : ImWchar, _src : ImWchar, _overwrite_dst : Bool) : Void;

	@:native("AddGlyph")
	function addGlyph(_c : ImWchar, _x0 : Float32, _y0 : Float32, _x1 : Float32, _y1 : Float32, _u0 : Float32, _v0 : Float32, _u1 : Float32, _v1 : Float32, _advance_x : Float32) : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImDrawVert")
extern class ImDrawVert
{
	@:native("pos")
	var pos : ImVec2;

	@:native("uv")
	var uv : ImVec2;

	@:native("col")
	var col : ImU32;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImDrawListSplitter")
extern class ImDrawListSplitter
{
	@:native("_Current")
	var _Current : Int;

	@:native("_Count")
	var _Count : Int;

	@:native("_Channels")
	var _Channels : ImVector_ImDrawChannel;
	
	@:native("Split")
	function split(_draw_list : Star<ImDrawList>, _count : Int) : Void;

	@:native("SetCurrentChannel")
	function setCurrentChannel(_draw_list : Star<ImDrawList>, _channel_idx : Int) : Void;

	@:native("Merge")
	function merge(_draw_list : Star<ImDrawList>) : Void;

	@:native("ImDrawListSplitter")
	static function create() : ImDrawListSplitter;

	@:native("ClearFreeMemory")
	function clearFreeMemory() : Void;

	@:native("Clear")
	function clear() : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImDrawListSharedData")
extern class ImDrawListSharedData
{
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImDrawList")
extern class ImDrawList
{
	@:native("CmdBuffer")
	var cmdBuffer : ImVector_ImDrawCmd;

	@:native("IdxBuffer")
	var idxBuffer : ImVector_ImDrawIdx;

	@:native("VtxBuffer")
	var vtxBuffer : ImVector_ImDrawVert;

	@:native("Flags")
	var flags : ImDrawListFlags;

	@:native("_Data")
	var _Data : Star<ImDrawListSharedData>;

	@:native("_OwnerName")
	var _OwnerName : ConstCharStar;

	@:native("_VtxCurrentOffset")
	var _VtxCurrentOffset : Int;

	@:native("_VtxCurrentIdx")
	var _VtxCurrentIdx : Int;

	@:native("_VtxWritePtr")
	var _VtxWritePtr : Star<ImDrawVert>;

	@:native("_IdxWritePtr")
	var _IdxWritePtr : Star<ImDrawIdx>;

	@:native("_ClipRectStack")
	var _ClipRectStack : ImVector_ImVec4;

	@:native("_TextureIdStack")
	var _TextureIdStack : ImVector_ImTextureID;

	@:native("_Path")
	var _Path : ImVector_ImVec2;

	@:native("_Splitter")
	var _Splitter : ImDrawListSplitter;
	
	@:native("UpdateTextureID")
	function updateTextureID() : Void;

	@:native("UpdateClipRect")
	function updateClipRect() : Void;

	@:native("PushTextureID")
	function pushTextureID(_texture_id : ImTextureID) : Void;

	@:native("PushClipRectFullScreen")
	function pushClipRectFullScreen() : Void;

	@:native("PushClipRect")
	@:overload(function(_clip_rect_min : ImVec2, _clip_rect_max : ImVec2) : Void {})
	function pushClipRect(_clip_rect_min : ImVec2, _clip_rect_max : ImVec2, _intersect_with_current_clip_rect : Bool) : Void;

	@:native("PrimWriteVtx")
	function primWriteVtx(_pos : ImVec2, _uv : ImVec2, _col : ImU32) : Void;

	@:native("PrimWriteIdx")
	function primWriteIdx(_idx : ImDrawIdx) : Void;

	@:native("PrimVtx")
	function primVtx(_pos : ImVec2, _uv : ImVec2, _col : ImU32) : Void;

	@:native("PrimReserve")
	function primReserve(_idx_count : Int, _vtx_count : Int) : Void;

	@:native("PrimRectUV")
	function primRectUV(_a : ImVec2, _b : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2, _col : ImU32) : Void;

	@:native("PrimRect")
	function primRect(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void;

	@:native("PrimQuadUV")
	function primQuadUV(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2, _uv_c : ImVec2, _uv_d : ImVec2, _col : ImU32) : Void;

	@:native("PopTextureID")
	function popTextureID() : Void;

	@:native("PopClipRect")
	function popClipRect() : Void;

	@:native("PathStroke")
	@:overload(function(_col : ImU32, _closed : Bool) : Void {})
	function pathStroke(_col : ImU32, _closed : Bool, _thickness : Float32) : Void;

	@:native("PathRect")
	@:overload(function(_rect_min : ImVec2, _rect_max : ImVec2, _rounding : Float32) : Void {})
	@:overload(function(_rect_min : ImVec2, _rect_max : ImVec2) : Void {})
	function pathRect(_rect_min : ImVec2, _rect_max : ImVec2, _rounding : Float32, _rounding_corners_flags : Int) : Void;

	@:native("PathLineToMergeDuplicate")
	function pathLineToMergeDuplicate(_pos : ImVec2) : Void;

	@:native("PathLineTo")
	function pathLineTo(_pos : ImVec2) : Void;

	@:native("PathFillConvex")
	function pathFillConvex(_col : ImU32) : Void;

	@:native("PathClear")
	function pathClear() : Void;

	@:native("PathBezierCurveTo")
	@:overload(function(_p1 : ImVec2, _p2 : ImVec2, _p3 : ImVec2) : Void {})
	function pathBezierCurveTo(_p1 : ImVec2, _p2 : ImVec2, _p3 : ImVec2, _num_segments : Int) : Void;

	@:native("PathArcToFast")
	function pathArcToFast(_centre : ImVec2, _radius : Float32, _a_min_of_12 : Int, _a_max_of_12 : Int) : Void;

	@:native("PathArcTo")
	@:overload(function(_centre : ImVec2, _radius : Float32, _a_min : Float32, _a_max : Float32) : Void {})
	function pathArcTo(_centre : ImVec2, _radius : Float32, _a_min : Float32, _a_max : Float32, _num_segments : Int) : Void;

	@:native("ImDrawList")
	static function create(_shared_data : Star<ImDrawListSharedData>) : ImDrawList;

	@:native("GetClipRectMin")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	function getClipRectMin() : ImVec2;

	@:native("GetClipRectMax")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	function getClipRectMax() : ImVec2;

	@:native("CloneOutput")
	function cloneOutput() : Star<ImDrawList>;

	@:native("ClearFreeMemory")
	function clearFreeMemory() : Void;

	@:native("Clear")
	function clear() : Void;

	@:native("ChannelsSplit")
	function channelsSplit(_count : Int) : Void;

	@:native("ChannelsSetCurrent")
	function channelsSetCurrent(_n : Int) : Void;

	@:native("ChannelsMerge")
	function channelsMerge() : Void;

	@:native("AddTriangleFilled")
	function addTriangleFilled(_a : ImVec2, _b : ImVec2, _c : ImVec2, _col : ImU32) : Void;

	@:native("AddTriangle")
	@:overload(function(_a : ImVec2, _b : ImVec2, _c : ImVec2, _col : ImU32) : Void {})
	function addTriangle(_a : ImVec2, _b : ImVec2, _c : ImVec2, _col : ImU32, _thickness : Float32) : Void;

	@:native("AddText")
	@:overload(function(_pos : ImVec2, _col : ImU32, _text_begin : ConstCharStar) : Void {})
	@:overload(function(_pos : ImVec2, _col : ImU32, _text_begin : ConstCharStar, _text_end : ConstCharStar) : Void {})
	@:overload(function(_font : Star<ImFont>, _font_size : Float32, _pos : ImVec2, _col : ImU32, _text_begin : ConstCharStar, _text_end : ConstCharStar, _wrap_width : Float32) : Void {})
	@:overload(function(_font : Star<ImFont>, _font_size : Float32, _pos : ImVec2, _col : ImU32, _text_begin : ConstCharStar, _text_end : ConstCharStar) : Void {})
	@:overload(function(_font : Star<ImFont>, _font_size : Float32, _pos : ImVec2, _col : ImU32, _text_begin : ConstCharStar) : Void {})
	function addText(_font : Star<ImFont>, _font_size : Float32, _pos : ImVec2, _col : ImU32, _text_begin : ConstCharStar, _text_end : ConstCharStar, _wrap_width : Float32, _cpu_fine_clip_rect : Star<ImVec4>) : Void;

	@:native("AddRectFilledMultiColor")
	function addRectFilledMultiColor(_a : ImVec2, _b : ImVec2, _col_upr_left : ImU32, _col_upr_right : ImU32, _col_bot_right : ImU32, _col_bot_left : ImU32) : Void;

	@:native("AddRectFilled")
	@:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32) : Void {})
	@:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void {})
	function addRectFilled(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32, _rounding_corners_flags : Int) : Void;

	@:native("AddRect")
	@:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32, _rounding_corners_flags : Int) : Void {})
	@:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32) : Void {})
	@:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void {})
	function addRect(_a : ImVec2, _b : ImVec2, _col : ImU32, _rounding : Float32, _rounding_corners_flags : Int, _thickness : Float32) : Void;

	@:native("AddQuadFilled")
	function addQuadFilled(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _col : ImU32) : Void;

	@:native("AddQuad")
	@:overload(function(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _col : ImU32) : Void {})
	function addQuad(_a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _col : ImU32, _thickness : Float32) : Void;

	@:native("AddPolyline")
	function addPolyline(_points : Star<ImVec2>, _num_points : Int, _col : ImU32, _closed : Bool, _thickness : Float32) : Void;

	@:native("AddLine")
	@:overload(function(_a : ImVec2, _b : ImVec2, _col : ImU32) : Void {})
	function addLine(_a : ImVec2, _b : ImVec2, _col : ImU32, _thickness : Float32) : Void;

	@:native("AddImageRounded")
	@:overload(function(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2, _col : ImU32, _rounding : Float32) : Void {})
	function addImageRounded(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2, _col : ImU32, _rounding : Float32, _rounding_corners : Int) : Void;

	@:native("AddImageQuad")
	@:overload(function(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2, _uv_c : ImVec2, _uv_d : ImVec2) : Void {})
	@:overload(function(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2, _uv_c : ImVec2) : Void {})
	@:overload(function(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2) : Void {})
	@:overload(function(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uv_a : ImVec2) : Void {})
	@:overload(function(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2) : Void {})
	function addImageQuad(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _c : ImVec2, _d : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2, _uv_c : ImVec2, _uv_d : ImVec2, _col : ImU32) : Void;

	@:native("AddImage")
	@:overload(function(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2) : Void {})
	@:overload(function(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _uv_a : ImVec2) : Void {})
	@:overload(function(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2) : Void {})
	function addImage(_user_texture_id : ImTextureID, _a : ImVec2, _b : ImVec2, _uv_a : ImVec2, _uv_b : ImVec2, _col : ImU32) : Void;

	@:native("AddDrawCmd")
	function addDrawCmd() : Void;

	@:native("AddConvexPolyFilled")
	function addConvexPolyFilled(_points : Star<ImVec2>, _num_points : Int, _col : ImU32) : Void;

	@:native("AddCircleFilled")
	@:overload(function(_centre : ImVec2, _radius : Float32, _col : ImU32) : Void {})
	function addCircleFilled(_centre : ImVec2, _radius : Float32, _col : ImU32, _num_segments : Int) : Void;

	@:native("AddCircle")
	@:overload(function(_centre : ImVec2, _radius : Float32, _col : ImU32, _num_segments : Int) : Void {})
	@:overload(function(_centre : ImVec2, _radius : Float32, _col : ImU32) : Void {})
	function addCircle(_centre : ImVec2, _radius : Float32, _col : ImU32, _num_segments : Int, _thickness : Float32) : Void;

	@:native("AddCallback")
	function addCallback(_callback : ImDrawCallback, _callback_data : Star<cpp.Void>) : Void;

	@:native("AddBezierCurve")
	@:overload(function(_pos0 : ImVec2, _cp0 : ImVec2, _cp1 : ImVec2, _pos1 : ImVec2, _col : ImU32, _thickness : Float32) : Void {})
	function addBezierCurve(_pos0 : ImVec2, _cp0 : ImVec2, _cp1 : ImVec2, _pos1 : ImVec2, _col : ImU32, _thickness : Float32, _num_segments : Int) : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImDrawData")
extern class ImDrawData
{
	@:native("Valid")
	var valid : Bool;

	@:native("CmdLists")
	var cmdLists : RawPointer<Star<ImDrawList>>;

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
	function scaleClipRects(_fb_scale : ImVec2) : Void;

	@:native("ImDrawData")
	static function create() : ImDrawData;

	@:native("DeIndexAllBuffers")
	function deIndexAllBuffers() : Void;

	@:native("Clear")
	function clear() : Void;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImDrawCmd")
extern class ImDrawCmd
{
	@:native("ElemCount")
	var elemCount : Int;

	@:native("ClipRect")
	var clipRect : ImVec4;

	@:native("TextureId")
	var textureId : ImTextureID;

	@:native("VtxOffset")
	var vtxOffset : Int;

	@:native("IdxOffset")
	var idxOffset : Int;

	@:native("UserCallback")
	var userCallback : ImDrawCallback;

	@:native("UserCallbackData")
	var userCallbackData : Star<cpp.Void>;
	
	@:native("ImDrawCmd")
	static function create() : ImDrawCmd;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImDrawChannel")
extern class ImDrawChannel
{
	@:native("_CmdBuffer")
	var _CmdBuffer : ImVector_ImDrawCmd;

	@:native("_IdxBuffer")
	var _IdxBuffer : ImVector_ImDrawIdx;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("ImColor")
extern class ImColor
{
	@:native("Value")
	var value : ImVec4;
	
	@:native("SetHSV")
	@:overload(function(_h : Float32, _s : Float32, _v : Float32) : Void {})
	function setHSV(_h : Float32, _s : Float32, _v : Float32, _a : Float32) : Void;

	@:native("ImColor")
	@:overload(function() : ImColor {})
	@:overload(function(_r : Int, _g : Int, _b : Int) : ImColor {})
	@:overload(function(_r : Int, _g : Int, _b : Int, _a : Int) : ImColor {})
	@:overload(function(_rgba : ImU32) : ImColor {})
	@:overload(function(_r : Float32, _g : Float32, _b : Float32) : ImColor {})
	@:overload(function(_r : Float32, _g : Float32, _b : Float32, _a : Float32) : ImColor {})
	static function create(_col : ImVec4) : ImColor;

	@:native("HSV")
	@:overload(function(_h : Float32, _s : Float32, _v : Float32) : ImColor {})
	@:overload(function(_h : Float32, _s : Float32, _v : Float32, _a : Float32) : ImColor {})
	@:overload(function(_h : Float32, _s : Float32, _v : Float32) : Void {})
	@:overload(function(_h : Float32, _s : Float32, _v : Float32, _a : Float32) : Void {})
	@:overload(function(_h : Float32, _s : Float32, _v : Float32) : ImColor {})
	function hSV(_h : Float32, _s : Float32, _v : Float32, _a : Float32) : ImColor;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
@:native("CustomRect")
extern class CustomRect
{
	@:native("ID")
	var iD : Int;

	@:native("Width")
	var width : UInt16;

	@:native("Height")
	var height : UInt16;

	@:native("X")
	var x : UInt16;

	@:native("Y")
	var y : UInt16;

	@:native("GlyphAdvanceX")
	var glyphAdvanceX : Float32;

	@:native("GlyphOffset")
	var glyphOffset : ImVec2;

	@:native("Font")
	var font : Star<ImFont>;
	
	@:native("IsPacked")
	function isPacked() : Bool;

	@:native("CustomRect")
	static function create() : CustomRect;
}

@:keep
@:unreflective
@:structAccess
@:include("imgui.h")
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml("imgui"))
#end
extern class NativeImGui
{
	@:native("ImGui::Value")
	@:overload(function(_prefix : ConstCharStar, _b : Bool) : Void {})
	@:overload(function(_prefix : ConstCharStar, _v : Int) : Void {})
	@:overload(function(_prefix : ConstCharStar, _v : Int) : Void {})
	@:overload(function(_prefix : ConstCharStar, _v : Float32) : Void {})
	static function value(_prefix : ConstCharStar, _v : Float32, _float_format : ConstCharStar) : Void;

	@:native("ImGui::VSliderScalar")
	@:overload(function(_label : ConstCharStar, _size : ImVec2, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _size : ImVec2, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>) : Bool {})
	static function vSliderScalar(_label : ConstCharStar, _size : ImVec2, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::VSliderInt")
	@:overload(function(_label : ConstCharStar, _size : ImVec2, _v : Star<Int>, _v_min : Int, _v_max : Int) : Bool {})
	static function vSliderInt(_label : ConstCharStar, _size : ImVec2, _v : Star<Int>, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool;

	@:native("ImGui::VSliderFloat")
	@:overload(function(_label : ConstCharStar, _size : ImVec2, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _size : ImVec2, _v : Star<Float32>, _v_min : Float32, _v_max : Float32) : Bool {})
	static function vSliderFloat(_label : ConstCharStar, _size : ImVec2, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::Unindent")
	@:overload(function() : Void {})
	static function unindent(_indent_w : Float32) : Void;

	@:native("ImGui::TreePush")
	@:overload(function(_str_id : ConstCharStar) : Void {})
	@:overload(function() : Void {})
	static function treePush(_ptr_id : Star<cpp.Void>) : Void;

	@:native("ImGui::TreePop")
	static function treePop() : Void;

	@:native("ImGui::TreeNodeV")
	@:overload(function(_str_id : ConstCharStar, _fmt : ConstCharStar, _args : VarArg) : Bool {})
	static function treeNodeV(_ptr_id : Star<cpp.Void>, _fmt : ConstCharStar, _args : VarArg) : Bool;

	@:native("ImGui::TreeNodeExV")
	@:overload(function(_str_id : ConstCharStar, _flags : ImGuiTreeNodeFlags, _fmt : ConstCharStar, _args : VarArg) : Bool {})
	static function treeNodeExV(_ptr_id : Star<cpp.Void>, _flags : ImGuiTreeNodeFlags, _fmt : ConstCharStar, _args : VarArg) : Bool;

	@:native("ImGui::TreeNodeEx")
	@:overload(function(_label : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _flags : ImGuiTreeNodeFlags) : Bool {})
	@:overload(function(_str_id : ConstCharStar, _flags : ImGuiTreeNodeFlags, _fmt : ConstCharStar, _args : VarArg) : Bool {})
	static function treeNodeEx(_ptr_id : Star<cpp.Void>, _flags : ImGuiTreeNodeFlags, _fmt : ConstCharStar, _args : VarArg) : Bool;

	@:native("ImGui::TreeNode")
	@:overload(function(_label : ConstCharStar) : Bool {})
	@:overload(function(_str_id : ConstCharStar, _fmt : ConstCharStar, _args : VarArg) : Bool {})
	static function treeNode(_ptr_id : Star<cpp.Void>, _fmt : ConstCharStar, _args : VarArg) : Bool;

	@:native("ImGui::TreeAdvanceToLabelPos")
	static function treeAdvanceToLabelPos() : Void;

	@:native("ImGui::TextWrappedV")
	static function textWrappedV(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::TextWrapped")
	static function textWrapped(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::TextV")
	static function textV(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::TextUnformatted")
	@:overload(function(_text : ConstCharStar) : Void {})
	static function textUnformatted(_text : ConstCharStar, _text_end : ConstCharStar) : Void;

	@:native("ImGui::TextDisabledV")
	static function textDisabledV(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::TextDisabled")
	static function textDisabled(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::TextColoredV")
	static function textColoredV(_col : ImVec4, _fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::TextColored")
	static function textColored(_col : ImVec4, _fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::Text")
	@:overload(function(_fmt : ConstCharStar) : Void {})
	static function text(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::StyleColorsLight")
	@:overload(function() : Void {})
	static function styleColorsLight(_dst : Star<ImGuiStyle>) : Void;

	@:native("ImGui::StyleColorsDark")
	@:overload(function() : Void {})
	static function styleColorsDark(_dst : Star<ImGuiStyle>) : Void;

	@:native("ImGui::StyleColorsClassic")
	@:overload(function() : Void {})
	static function styleColorsClassic(_dst : Star<ImGuiStyle>) : Void;

	@:native("ImGui::Spacing")
	static function spacing() : Void;

	@:native("ImGui::SmallButton")
	static function smallButton(_label : ConstCharStar) : Bool;

	@:native("ImGui::SliderScalarN")
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>) : Bool {})
	static function sliderScalarN(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::SliderScalar")
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>) : Bool {})
	static function sliderScalar(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::SliderInt4")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_min : Int, _v_max : Int) : Bool {})
	static function sliderInt4(_label : ConstCharStar, _v : Star<Int>, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool;

	@:native("ImGui::SliderInt3")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_min : Int, _v_max : Int) : Bool {})
	static function sliderInt3(_label : ConstCharStar, _v : Star<Int>, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool;

	@:native("ImGui::SliderInt2")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_min : Int, _v_max : Int) : Bool {})
	static function sliderInt2(_label : ConstCharStar, _v : Star<Int>, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool;

	@:native("ImGui::SliderInt")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_min : Int, _v_max : Int) : Bool {})
	static function sliderInt(_label : ConstCharStar, _v : Star<Int>, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool;

	@:native("ImGui::SliderFloat4")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32) : Bool {})
	static function sliderFloat4(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::SliderFloat3")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32) : Bool {})
	static function sliderFloat3(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::SliderFloat2")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32) : Bool {})
	static function sliderFloat2(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::SliderFloat")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32) : Bool {})
	static function sliderFloat(_label : ConstCharStar, _v : Star<Float32>, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::SliderAngle")
	@:overload(function(_label : ConstCharStar, _v_rad : Star<Float32>, _v_degrees_min : Float32, _v_degrees_max : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_rad : Star<Float32>, _v_degrees_min : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_rad : Star<Float32>) : Bool {})
	static function sliderAngle(_label : ConstCharStar, _v_rad : Star<Float32>, _v_degrees_min : Float32, _v_degrees_max : Float32, _format : ConstCharStar) : Bool;

	@:native("ImGui::ShowUserGuide")
	static function showUserGuide() : Void;

	@:native("ImGui::ShowStyleSelector")
	static function showStyleSelector(_label : ConstCharStar) : Bool;

	@:native("ImGui::ShowStyleEditor")
	@:overload(function() : Void {})
	static function showStyleEditor(_ref : Star<ImGuiStyle>) : Void;

	@:native("ImGui::ShowMetricsWindow")
	@:overload(function() : Void {})
	static function showMetricsWindow(_p_open : Star<Bool>) : Void;

	@:native("ImGui::ShowFontSelector")
	static function showFontSelector(_label : ConstCharStar) : Void;

	@:native("ImGui::ShowDemoWindow")
	@:overload(function() : Void {})
	static function showDemoWindow(_p_open : Star<Bool>) : Void;

	@:native("ImGui::ShowAboutWindow")
	@:overload(function() : Void {})
	static function showAboutWindow(_p_open : Star<Bool>) : Void;

	@:native("ImGui::SetWindowSize")
	@:overload(function(_size : ImVec2) : Void {})
	@:overload(function(_size : ImVec2, _cond : ImGuiCond) : Void {})
	@:overload(function(_name : ConstCharStar, _size : ImVec2) : Void {})
	static function setWindowSize(_name : ConstCharStar, _size : ImVec2, _cond : ImGuiCond) : Void;

	@:native("ImGui::SetWindowPos")
	@:overload(function(_pos : ImVec2) : Void {})
	@:overload(function(_pos : ImVec2, _cond : ImGuiCond) : Void {})
	@:overload(function(_name : ConstCharStar, _pos : ImVec2) : Void {})
	static function setWindowPos(_name : ConstCharStar, _pos : ImVec2, _cond : ImGuiCond) : Void;

	@:native("ImGui::SetWindowFontScale")
	static function setWindowFontScale(_scale : Float32) : Void;

	@:native("ImGui::SetWindowFocus")
	@:overload(function() : Void {})
	static function setWindowFocus(_name : ConstCharStar) : Void;

	@:native("ImGui::SetWindowCollapsed")
	@:overload(function(_collapsed : Bool) : Void {})
	@:overload(function(_collapsed : Bool, _cond : ImGuiCond) : Void {})
	@:overload(function(_name : ConstCharStar, _collapsed : Bool) : Void {})
	static function setWindowCollapsed(_name : ConstCharStar, _collapsed : Bool, _cond : ImGuiCond) : Void;

	@:native("ImGui::SetTooltipV")
	static function setTooltipV(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::SetTooltip")
	static function setTooltip(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::SetTabItemClosed")
	static function setTabItemClosed(_tab_or_docked_window_label : ConstCharStar) : Void;

	@:native("ImGui::SetStateStorage")
	static function setStateStorage(_storage : Star<ImGuiStorage>) : Void;

	@:native("ImGui::SetScrollY")
	static function setScrollY(_scroll_y : Float32) : Void;

	@:native("ImGui::SetScrollX")
	static function setScrollX(_scroll_x : Float32) : Void;

	@:native("ImGui::SetScrollHereY")
	@:overload(function() : Void {})
	static function setScrollHereY(_center_y_ratio : Float32) : Void;

	@:native("ImGui::SetScrollFromPosY")
	@:overload(function(_local_y : Float32) : Void {})
	static function setScrollFromPosY(_local_y : Float32, _center_y_ratio : Float32) : Void;

	@:native("ImGui::SetNextWindowSizeConstraints")
	@:overload(function(_size_min : ImVec2, _size_max : ImVec2, _custom_callback : ImGuiSizeCallback) : Void {})
	@:overload(function(_size_min : ImVec2, _size_max : ImVec2) : Void {})
	static function setNextWindowSizeConstraints(_size_min : ImVec2, _size_max : ImVec2, _custom_callback : ImGuiSizeCallback, _custom_callback_data : Star<cpp.Void>) : Void;

	@:native("ImGui::SetNextWindowSize")
	@:overload(function(_size : ImVec2) : Void {})
	static function setNextWindowSize(_size : ImVec2, _cond : ImGuiCond) : Void;

	@:native("ImGui::SetNextWindowPos")
	@:overload(function(_pos : ImVec2, _cond : ImGuiCond) : Void {})
	@:overload(function(_pos : ImVec2) : Void {})
	static function setNextWindowPos(_pos : ImVec2, _cond : ImGuiCond, _pivot : ImVec2) : Void;

	@:native("ImGui::SetNextWindowFocus")
	static function setNextWindowFocus() : Void;

	@:native("ImGui::SetNextWindowContentSize")
	static function setNextWindowContentSize(_size : ImVec2) : Void;

	@:native("ImGui::SetNextWindowCollapsed")
	@:overload(function(_collapsed : Bool) : Void {})
	static function setNextWindowCollapsed(_collapsed : Bool, _cond : ImGuiCond) : Void;

	@:native("ImGui::SetNextWindowBgAlpha")
	static function setNextWindowBgAlpha(_alpha : Float32) : Void;

	@:native("ImGui::SetNextItemWidth")
	static function setNextItemWidth(_item_width : Float32) : Void;

	@:native("ImGui::SetNextItemOpen")
	@:overload(function(_is_open : Bool) : Void {})
	static function setNextItemOpen(_is_open : Bool, _cond : ImGuiCond) : Void;

	@:native("ImGui::SetMouseCursor")
	static function setMouseCursor(_type : ImGuiMouseCursor) : Void;

	@:native("ImGui::SetKeyboardFocusHere")
	@:overload(function() : Void {})
	static function setKeyboardFocusHere(_offset : Int) : Void;

	@:native("ImGui::SetItemDefaultFocus")
	static function setItemDefaultFocus() : Void;

	@:native("ImGui::SetItemAllowOverlap")
	static function setItemAllowOverlap() : Void;

	@:native("ImGui::SetDragDropPayload")
	@:overload(function(_type : ConstCharStar, _data : Star<cpp.Void>, _sz : SizeT) : Bool {})
	static function setDragDropPayload(_type : ConstCharStar, _data : Star<cpp.Void>, _sz : SizeT, _cond : ImGuiCond) : Bool;

	@:native("ImGui::SetCursorScreenPos")
	static function setCursorScreenPos(_pos : ImVec2) : Void;

	@:native("ImGui::SetCursorPosY")
	static function setCursorPosY(_local_y : Float32) : Void;

	@:native("ImGui::SetCursorPosX")
	static function setCursorPosX(_local_x : Float32) : Void;

	@:native("ImGui::SetCursorPos")
	static function setCursorPos(_local_pos : ImVec2) : Void;

	@:native("ImGui::SetCurrentContext")
	static function setCurrentContext(_ctx : Star<ImGuiContext>) : Void;

	@:native("ImGui::SetColumnWidth")
	static function setColumnWidth(_column_index : Int, _width : Float32) : Void;

	@:native("ImGui::SetColumnOffset")
	static function setColumnOffset(_column_index : Int, _offset_x : Float32) : Void;

	@:native("ImGui::SetColorEditOptions")
	static function setColorEditOptions(_flags : ImGuiColorEditFlags) : Void;

	@:native("ImGui::SetClipboardText")
	static function setClipboardText(_text : ConstCharStar) : Void;

	@:native("ImGui::SetAllocatorFunctions")
	@:overload(function(_alloc_func : Dynamic, _free_func : Dynamic) : Void {})
	static function setAllocatorFunctions(_alloc_func : Dynamic, _free_func : Dynamic, _user_data : Star<cpp.Void>) : Void;

	@:native("ImGui::Separator")
	static function separator() : Void;

	@:native("ImGui::Selectable")
	@:overload(function(_label : ConstCharStar, _selected : Bool, _flags : ImGuiSelectableFlags) : Bool {})
	@:overload(function(_label : ConstCharStar, _selected : Bool) : Bool {})
	@:overload(function(_label : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _selected : Bool, _flags : ImGuiSelectableFlags, _size : ImVec2) : Bool {})
	@:overload(function(_label : ConstCharStar, _p_selected : Star<Bool>, _flags : ImGuiSelectableFlags) : Bool {})
	@:overload(function(_label : ConstCharStar, _p_selected : Star<Bool>) : Bool {})
	static function selectable(_label : ConstCharStar, _p_selected : Star<Bool>, _flags : ImGuiSelectableFlags, _size : ImVec2) : Bool;

	@:native("ImGui::SaveIniSettingsToMemory")
	@:overload(function() : ConstCharStar {})
	static function saveIniSettingsToMemory(_out_ini_size : Star<SizeT>) : ConstCharStar;

	@:native("ImGui::SaveIniSettingsToDisk")
	static function saveIniSettingsToDisk(_ini_filename : ConstCharStar) : Void;

	@:native("ImGui::SameLine")
	@:overload(function(_offset_from_start_x : Float32) : Void {})
	@:overload(function() : Void {})
	static function sameLine(_offset_from_start_x : Float32, _spacing : Float32) : Void;

	@:native("ImGui::ResetMouseDragDelta")
	@:overload(function() : Void {})
	static function resetMouseDragDelta(_button : Int) : Void;

	@:native("ImGui::Render")
	static function render() : Void;

	@:native("ImGui::RadioButton")
	@:overload(function(_label : ConstCharStar, _active : Bool) : Bool {})
	static function radioButton(_label : ConstCharStar, _v : Star<Int>, _v_button : Int) : Bool;

	@:native("ImGui::PushTextWrapPos")
	@:overload(function() : Void {})
	static function pushTextWrapPos(_wrap_local_pos_x : Float32) : Void;

	@:native("ImGui::PushStyleVar")
	@:overload(function(_idx : ImGuiStyleVar, _val : Float32) : Void {})
	static function pushStyleVar(_idx : ImGuiStyleVar, _val : ImVec2) : Void;

	@:native("ImGui::PushStyleColor")
	@:overload(function(_idx : ImGuiCol, _col : ImU32) : Void {})
	static function pushStyleColor(_idx : ImGuiCol, _col : ImVec4) : Void;

	@:native("ImGui::PushItemWidth")
	static function pushItemWidth(_item_width : Float32) : Void;

	@:native("ImGui::PushID")
	@:overload(function(_str_id : ConstCharStar) : Void {})
	@:overload(function(_str_id_begin : ConstCharStar, _str_id_end : ConstCharStar) : Void {})
	@:overload(function(_ptr_id : Star<cpp.Void>) : Void {})
	static function pushID(_int_id : Int) : Void;

	@:native("ImGui::PushFont")
	static function pushFont(_font : Star<ImFont>) : Void;

	@:native("ImGui::PushClipRect")
	static function pushClipRect(_clip_rect_min : ImVec2, _clip_rect_max : ImVec2, _intersect_with_current_clip_rect : Bool) : Void;

	@:native("ImGui::PushButtonRepeat")
	static function pushButtonRepeat(_repeat : Bool) : Void;

	@:native("ImGui::PushAllowKeyboardFocus")
	static function pushAllowKeyboardFocus(_allow_keyboard_focus : Bool) : Void;

	@:native("ImGui::ProgressBar")
	@:overload(function(_fraction : Float32, _size_arg : ImVec2) : Void {})
	@:overload(function(_fraction : Float32) : Void {})
	static function progressBar(_fraction : Float32, _size_arg : ImVec2, _overlay : ConstCharStar) : Void;

	@:native("ImGui::PopTextWrapPos")
	static function popTextWrapPos() : Void;

	@:native("ImGui::PopStyleVar")
	@:overload(function() : Void {})
	static function popStyleVar(_count : Int) : Void;

	@:native("ImGui::PopStyleColor")
	@:overload(function() : Void {})
	static function popStyleColor(_count : Int) : Void;

	@:native("ImGui::PopItemWidth")
	static function popItemWidth() : Void;

	@:native("ImGui::PopID")
	static function popID() : Void;

	@:native("ImGui::PopFont")
	static function popFont() : Void;

	@:native("ImGui::PopClipRect")
	static function popClipRect() : Void;

	@:native("ImGui::PopButtonRepeat")
	static function popButtonRepeat() : Void;

	@:native("ImGui::PopAllowKeyboardFocus")
	static function popAllowKeyboardFocus() : Void;

	@:native("ImGui::PlotLines")
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32, _graph_size : ImVec2) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32, _graph_size : ImVec2, _stride : Int) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int) : Void {})
	static function plotLines(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32, _graph_size : ImVec2) : Void;

	@:native("ImGui::PlotHistogram")
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32, _graph_size : ImVec2) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int) : Void {})
	@:overload(function(_label : ConstCharStar, _values : Star<Float32>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32, _graph_size : ImVec2, _stride : Int) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int) : Void {})
	@:overload(function(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int) : Void {})
	static function plotHistogram(_label : ConstCharStar, _values_getter : Dynamic, _data : Star<cpp.Void>, _values_count : Int, _values_offset : Int, _overlay_text : ConstCharStar, _scale_min : Float32, _scale_max : Float32, _graph_size : ImVec2) : Void;

	@:native("ImGui::OpenPopupOnItemClick")
	@:overload(function(_str_id : ConstCharStar) : Bool {})
	@:overload(function() : Bool {})
	static function openPopupOnItemClick(_str_id : ConstCharStar, _mouse_button : Int) : Bool;

	@:native("ImGui::OpenPopup")
	static function openPopup(_str_id : ConstCharStar) : Void;

	@:native("ImGui::NextColumn")
	static function nextColumn() : Void;

	@:native("ImGui::NewLine")
	static function newLine() : Void;

	@:native("ImGui::NewFrame")
	static function newFrame() : Void;

	@:native("ImGui::MenuItem")
	@:overload(function(_label : ConstCharStar, _shortcut : ConstCharStar, _selected : Bool) : Bool {})
	@:overload(function(_label : ConstCharStar, _shortcut : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _shortcut : ConstCharStar, _selected : Bool, _enabled : Bool) : Bool {})
	@:overload(function(_label : ConstCharStar, _shortcut : ConstCharStar, _p_selected : Star<Bool>) : Bool {})
	static function menuItem(_label : ConstCharStar, _shortcut : ConstCharStar, _p_selected : Star<Bool>, _enabled : Bool) : Bool;

	@:native("ImGui::MemFree")
	static function memFree(_ptr : Star<cpp.Void>) : Void;

	@:native("ImGui::MemAlloc")
	static function memAlloc(_size : SizeT) : Star<Void>;

	@:native("ImGui::LogToTTY")
	@:overload(function() : Void {})
	static function logToTTY(_auto_open_depth : Int) : Void;

	@:native("ImGui::LogToFile")
	@:overload(function(_auto_open_depth : Int) : Void {})
	@:overload(function() : Void {})
	static function logToFile(_auto_open_depth : Int, _filename : ConstCharStar) : Void;

	@:native("ImGui::LogToClipboard")
	@:overload(function() : Void {})
	static function logToClipboard(_auto_open_depth : Int) : Void;

	@:native("ImGui::LogText")
	static function logText(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::LogFinish")
	static function logFinish() : Void;

	@:native("ImGui::LogButtons")
	static function logButtons() : Void;

	@:native("ImGui::LoadIniSettingsFromMemory")
	@:overload(function(_ini_data : ConstCharStar) : Void {})
	static function loadIniSettingsFromMemory(_ini_data : ConstCharStar, _ini_size : SizeT) : Void;

	@:native("ImGui::LoadIniSettingsFromDisk")
	static function loadIniSettingsFromDisk(_ini_filename : ConstCharStar) : Void;

	@:native("ImGui::ListBoxHeader")
	@:overload(function(_label : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _size : ImVec2) : Bool {})
	@:overload(function(_label : ConstCharStar, _items_count : Int) : Bool {})
	static function listBoxHeader(_label : ConstCharStar, _items_count : Int, _height_in_items : Int) : Bool;

	@:native("ImGui::ListBoxFooter")
	static function listBoxFooter() : Void;

	@:native("ImGui::ListBox")
	@:overload(function(_label : ConstCharStar, _current_item : Star<Int>, _items : Star<Int8>, _items_count : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _current_item : Star<Int>, _items : Star<Int8>, _items_count : Int, _height_in_items : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _current_item : Star<Int>, _items_getter : Dynamic, _data : Star<cpp.Void>, _items_count : Int) : Bool {})
	static function listBox(_label : ConstCharStar, _current_item : Star<Int>, _items_getter : Dynamic, _data : Star<cpp.Void>, _items_count : Int, _height_in_items : Int) : Bool;

	@:native("ImGui::LabelTextV")
	static function labelTextV(_label : ConstCharStar, _fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::LabelText")
	static function labelText(_label : ConstCharStar, _fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::IsWindowHovered")
	@:overload(function() : Bool {})
	static function isWindowHovered(_flags : ImGuiHoveredFlags) : Bool;

	@:native("ImGui::IsWindowFocused")
	@:overload(function() : Bool {})
	static function isWindowFocused(_flags : ImGuiFocusedFlags) : Bool;

	@:native("ImGui::IsWindowCollapsed")
	static function isWindowCollapsed() : Bool;

	@:native("ImGui::IsWindowAppearing")
	static function isWindowAppearing() : Bool;

	@:native("ImGui::IsRectVisible")
	@:overload(function(_size : ImVec2) : Bool {})
	static function isRectVisible(_rect_min : ImVec2, _rect_max : ImVec2) : Bool;

	@:native("ImGui::IsPopupOpen")
	static function isPopupOpen(_str_id : ConstCharStar) : Bool;

	@:native("ImGui::IsMouseReleased")
	static function isMouseReleased(_button : Int) : Bool;

	@:native("ImGui::IsMousePosValid")
	@:overload(function() : Bool {})
	static function isMousePosValid(_mouse_pos : Star<ImVec2>) : Bool;

	@:native("ImGui::IsMouseHoveringRect")
	@:overload(function(_r_min : ImVec2, _r_max : ImVec2) : Bool {})
	static function isMouseHoveringRect(_r_min : ImVec2, _r_max : ImVec2, _clip : Bool) : Bool;

	@:native("ImGui::IsMouseDragging")
	@:overload(function(_button : Int) : Bool {})
	@:overload(function() : Bool {})
	static function isMouseDragging(_button : Int, _lock_threshold : Float32) : Bool;

	@:native("ImGui::IsMouseDown")
	static function isMouseDown(_button : Int) : Bool;

	@:native("ImGui::IsMouseDoubleClicked")
	static function isMouseDoubleClicked(_button : Int) : Bool;

	@:native("ImGui::IsMouseClicked")
	@:overload(function(_button : Int) : Bool {})
	static function isMouseClicked(_button : Int, _repeat : Bool) : Bool;

	@:native("ImGui::IsKeyReleased")
	static function isKeyReleased(_user_key_index : Int) : Bool;

	@:native("ImGui::IsKeyPressed")
	@:overload(function(_user_key_index : Int) : Bool {})
	static function isKeyPressed(_user_key_index : Int, _repeat : Bool) : Bool;

	@:native("ImGui::IsKeyDown")
	static function isKeyDown(_user_key_index : Int) : Bool;

	@:native("ImGui::IsItemVisible")
	static function isItemVisible() : Bool;

	@:native("ImGui::IsItemHovered")
	@:overload(function() : Bool {})
	static function isItemHovered(_flags : ImGuiHoveredFlags) : Bool;

	@:native("ImGui::IsItemFocused")
	static function isItemFocused() : Bool;

	@:native("ImGui::IsItemEdited")
	static function isItemEdited() : Bool;

	@:native("ImGui::IsItemDeactivatedAfterEdit")
	static function isItemDeactivatedAfterEdit() : Bool;

	@:native("ImGui::IsItemDeactivated")
	static function isItemDeactivated() : Bool;

	@:native("ImGui::IsItemClicked")
	@:overload(function() : Bool {})
	static function isItemClicked(_mouse_button : Int) : Bool;

	@:native("ImGui::IsItemActive")
	static function isItemActive() : Bool;

	@:native("ImGui::IsItemActivated")
	static function isItemActivated() : Bool;

	@:native("ImGui::IsAnyMouseDown")
	static function isAnyMouseDown() : Bool;

	@:native("ImGui::IsAnyItemHovered")
	static function isAnyItemHovered() : Bool;

	@:native("ImGui::IsAnyItemFocused")
	static function isAnyItemFocused() : Bool;

	@:native("ImGui::IsAnyItemActive")
	static function isAnyItemActive() : Bool;

	@:native("ImGui::InvisibleButton")
	static function invisibleButton(_str_id : ConstCharStar, _size : ImVec2) : Bool;

	@:native("ImGui::InputTextWithHint")
	@:overload(function(_label : ConstCharStar, _hint : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _flags : ImGuiInputTextFlags, _callback : ImGuiInputTextCallback) : Bool {})
	@:overload(function(_label : ConstCharStar, _hint : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _flags : ImGuiInputTextFlags) : Bool {})
	@:overload(function(_label : ConstCharStar, _hint : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT) : Bool {})
	static function inputTextWithHint(_label : ConstCharStar, _hint : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _flags : ImGuiInputTextFlags, _callback : ImGuiInputTextCallback, _user_data : Star<cpp.Void>) : Bool;

	@:native("ImGui::InputTextMultiline")
	@:overload(function(_label : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _size : ImVec2, _flags : ImGuiInputTextFlags, _callback : ImGuiInputTextCallback) : Bool {})
	@:overload(function(_label : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _size : ImVec2, _flags : ImGuiInputTextFlags) : Bool {})
	@:overload(function(_label : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _size : ImVec2) : Bool {})
	@:overload(function(_label : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT) : Bool {})
	static function inputTextMultiline(_label : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _size : ImVec2, _flags : ImGuiInputTextFlags, _callback : ImGuiInputTextCallback, _user_data : Star<cpp.Void>) : Bool;

	@:native("ImGui::InputText")
	@:overload(function(_label : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _flags : ImGuiInputTextFlags, _callback : ImGuiInputTextCallback) : Bool {})
	@:overload(function(_label : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _flags : ImGuiInputTextFlags) : Bool {})
	@:overload(function(_label : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT) : Bool {})
	static function inputText(_label : ConstCharStar, _buf : Star<Int8>, _buf_size : SizeT, _flags : ImGuiInputTextFlags, _callback : ImGuiInputTextCallback, _user_data : Star<cpp.Void>) : Bool;

	@:native("ImGui::InputScalarN")
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _step : Star<cpp.Void>, _step_fast : Star<cpp.Void>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _step : Star<cpp.Void>, _step_fast : Star<cpp.Void>) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _step : Star<cpp.Void>) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int) : Bool {})
	static function inputScalarN(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _step : Star<cpp.Void>, _step_fast : Star<cpp.Void>, _format : ConstCharStar, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputScalar")
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _step : Star<cpp.Void>, _step_fast : Star<cpp.Void>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _step : Star<cpp.Void>, _step_fast : Star<cpp.Void>) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _step : Star<cpp.Void>) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>) : Bool {})
	static function inputScalar(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _step : Star<cpp.Void>, _step_fast : Star<cpp.Void>, _format : ConstCharStar, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputInt4")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>) : Bool {})
	static function inputInt4(_label : ConstCharStar, _v : Star<Int>, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputInt3")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>) : Bool {})
	static function inputInt3(_label : ConstCharStar, _v : Star<Int>, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputInt2")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>) : Bool {})
	static function inputInt2(_label : ConstCharStar, _v : Star<Int>, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputInt")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _step : Int, _step_fast : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _step : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>) : Bool {})
	static function inputInt(_label : ConstCharStar, _v : Star<Int>, _step : Int, _step_fast : Int, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputFloat4")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>) : Bool {})
	static function inputFloat4(_label : ConstCharStar, _v : Star<Float32>, _format : ConstCharStar, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputFloat3")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>) : Bool {})
	static function inputFloat3(_label : ConstCharStar, _v : Star<Float32>, _format : ConstCharStar, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputFloat2")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>) : Bool {})
	static function inputFloat2(_label : ConstCharStar, _v : Star<Float32>, _format : ConstCharStar, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputFloat")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _step : Float32, _step_fast : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _step : Float32, _step_fast : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _step : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>) : Bool {})
	static function inputFloat(_label : ConstCharStar, _v : Star<Float32>, _step : Float32, _step_fast : Float32, _format : ConstCharStar, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::InputDouble")
	@:overload(function(_label : ConstCharStar, _v : Star<Float>, _step : Float, _step_fast : Float, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float>, _step : Float, _step_fast : Float) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float>, _step : Float) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float>) : Bool {})
	static function inputDouble(_label : ConstCharStar, _v : Star<Float>, _step : Float, _step_fast : Float, _format : ConstCharStar, _flags : ImGuiInputTextFlags) : Bool;

	@:native("ImGui::Indent")
	@:overload(function() : Void {})
	static function indent(_indent_w : Float32) : Void;

	@:native("ImGui::ImageButton")
	@:overload(function(_user_texture_id : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _frame_padding : Int, _bg_col : ImVec4) : Bool {})
	@:overload(function(_user_texture_id : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _frame_padding : Int) : Bool {})
	@:overload(function(_user_texture_id : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2) : Bool {})
	@:overload(function(_user_texture_id : ImTextureID, _size : ImVec2, _uv0 : ImVec2) : Bool {})
	@:overload(function(_user_texture_id : ImTextureID, _size : ImVec2) : Bool {})
	static function imageButton(_user_texture_id : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _frame_padding : Int, _bg_col : ImVec4, _tint_col : ImVec4) : Bool;

	@:native("ImGui::Image")
	@:overload(function(_user_texture_id : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _tint_col : ImVec4) : Void {})
	@:overload(function(_user_texture_id : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2) : Void {})
	@:overload(function(_user_texture_id : ImTextureID, _size : ImVec2, _uv0 : ImVec2) : Void {})
	@:overload(function(_user_texture_id : ImTextureID, _size : ImVec2) : Void {})
	static function image(_user_texture_id : ImTextureID, _size : ImVec2, _uv0 : ImVec2, _uv1 : ImVec2, _tint_col : ImVec4, _border_col : ImVec4) : Void;

	@:native("ImGui::GetWindowWidth")
	static function getWindowWidth() : Float32;

	@:native("ImGui::GetWindowSize")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getWindowSize() : ImVec2;

	@:native("ImGui::GetWindowPos")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getWindowPos() : ImVec2;

	@:native("ImGui::GetWindowHeight")
	static function getWindowHeight() : Float32;

	@:native("ImGui::GetWindowDrawList")
	static function getWindowDrawList() : Star<ImDrawList>;

	@:native("ImGui::GetWindowContentRegionWidth")
	static function getWindowContentRegionWidth() : Float32;

	@:native("ImGui::GetWindowContentRegionMin")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getWindowContentRegionMin() : ImVec2;

	@:native("ImGui::GetWindowContentRegionMax")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getWindowContentRegionMax() : ImVec2;

	@:native("ImGui::GetVersion")
	static function getVersion() : ConstCharStar;

	@:native("ImGui::GetTreeNodeToLabelSpacing")
	static function getTreeNodeToLabelSpacing() : Float32;

	@:native("ImGui::GetTime")
	static function getTime() : Float;

	@:native("ImGui::GetTextLineHeightWithSpacing")
	static function getTextLineHeightWithSpacing() : Float32;

	@:native("ImGui::GetTextLineHeight")
	static function getTextLineHeight() : Float32;

	@:native("ImGui::GetStyleColorVec4")
	static function getStyleColorVec4(_idx : ImGuiCol) : Reference<ImVec4>;

	@:native("ImGui::GetStyleColorName")
	static function getStyleColorName(_idx : ImGuiCol) : ConstCharStar;

	@:native("ImGui::GetStyle")
	static function getStyle() : Reference<ImGuiStyle>;

	@:native("ImGui::GetStateStorage")
	static function getStateStorage() : Star<ImGuiStorage>;

	@:native("ImGui::GetScrollY")
	static function getScrollY() : Float32;

	@:native("ImGui::GetScrollX")
	static function getScrollX() : Float32;

	@:native("ImGui::GetScrollMaxY")
	static function getScrollMaxY() : Float32;

	@:native("ImGui::GetScrollMaxX")
	static function getScrollMaxX() : Float32;

	@:native("ImGui::GetMousePosOnOpeningCurrentPopup")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getMousePosOnOpeningCurrentPopup() : ImVec2;

	@:native("ImGui::GetMousePos")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getMousePos() : ImVec2;

	@:native("ImGui::GetMouseDragDelta")
	@:overload(function(_button : Int) : ImVec2 {})
	@:overload(function() : ImVec2 {})
	@:overload(function(_button : Int, _lock_threshold : Float32) : ImVec2 {})
	@:overload(function(_button : Int) : Void {})
	@:overload(function() : Void {})
	@:overload(function(_button : Int, _lock_threshold : Float32) : Void {})
	@:overload(function(_button : Int) : ImVec2 {})
	@:overload(function() : ImVec2 {})
	static function getMouseDragDelta(_button : Int, _lock_threshold : Float32) : ImVec2;

	@:native("ImGui::GetMouseCursor")
	static function getMouseCursor() : ImGuiMouseCursor;

	@:native("ImGui::GetKeyPressedAmount")
	static function getKeyPressedAmount(_key_index : Int, _repeat_delay : Float32, _rate : Float32) : Int;

	@:native("ImGui::GetKeyIndex")
	static function getKeyIndex(_imgui_key : ImGuiKey) : Int;

	@:native("ImGui::GetItemRectSize")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getItemRectSize() : ImVec2;

	@:native("ImGui::GetItemRectMin")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getItemRectMin() : ImVec2;

	@:native("ImGui::GetItemRectMax")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getItemRectMax() : ImVec2;

	@:native("ImGui::GetIO")
	static function getIO() : Reference<ImGuiIO>;

	@:native("ImGui::GetID")
	@:overload(function(_str_id : ConstCharStar) : ImGuiID {})
	@:overload(function(_str_id_begin : ConstCharStar, _str_id_end : ConstCharStar) : ImGuiID {})
	static function getID(_ptr_id : Star<cpp.Void>) : ImGuiID;

	@:native("ImGui::GetFrameHeightWithSpacing")
	static function getFrameHeightWithSpacing() : Float32;

	@:native("ImGui::GetFrameHeight")
	static function getFrameHeight() : Float32;

	@:native("ImGui::GetFrameCount")
	static function getFrameCount() : Int;

	@:native("ImGui::GetForegroundDrawList")
	static function getForegroundDrawList() : Star<ImDrawList>;

	@:native("ImGui::GetFontTexUvWhitePixel")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getFontTexUvWhitePixel() : ImVec2;

	@:native("ImGui::GetFontSize")
	static function getFontSize() : Float32;

	@:native("ImGui::GetFont")
	static function getFont() : Star<ImFont>;

	@:native("ImGui::GetDrawListSharedData")
	static function getDrawListSharedData() : Star<ImDrawListSharedData>;

	@:native("ImGui::GetDrawData")
	static function getDrawData() : Star<ImDrawData>;

	@:native("ImGui::GetDragDropPayload")
	static function getDragDropPayload() : Star<ImGuiPayload>;

	@:native("ImGui::GetCursorStartPos")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getCursorStartPos() : ImVec2;

	@:native("ImGui::GetCursorScreenPos")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getCursorScreenPos() : ImVec2;

	@:native("ImGui::GetCursorPosY")
	static function getCursorPosY() : Float32;

	@:native("ImGui::GetCursorPosX")
	static function getCursorPosX() : Float32;

	@:native("ImGui::GetCursorPos")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getCursorPos() : ImVec2;

	@:native("ImGui::GetCurrentContext")
	static function getCurrentContext() : Star<ImGuiContext>;

	@:native("ImGui::GetContentRegionMax")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getContentRegionMax() : ImVec2;

	@:native("ImGui::GetContentRegionAvail")
	@:overload(function() : ImVec2 {})
	@:overload(function() : Void {})
	static function getContentRegionAvail() : ImVec2;

	@:native("ImGui::GetColumnsCount")
	static function getColumnsCount() : Int;

	@:native("ImGui::GetColumnWidth")
	@:overload(function() : Float32 {})
	static function getColumnWidth(_column_index : Int) : Float32;

	@:native("ImGui::GetColumnOffset")
	@:overload(function() : Float32 {})
	static function getColumnOffset(_column_index : Int) : Float32;

	@:native("ImGui::GetColumnIndex")
	static function getColumnIndex() : Int;

	@:native("ImGui::GetColorU32")
	@:overload(function(_idx : ImGuiCol) : ImU32 {})
	@:overload(function(_idx : ImGuiCol, _alpha_mul : Float32) : ImU32 {})
	@:overload(function(_col : ImVec4) : ImU32 {})
	static function getColorU32(_col : ImU32) : ImU32;

	@:native("ImGui::GetClipboardText")
	static function getClipboardText() : ConstCharStar;

	@:native("ImGui::GetBackgroundDrawList")
	static function getBackgroundDrawList() : Star<ImDrawList>;

	@:native("ImGui::EndTooltip")
	static function endTooltip() : Void;

	@:native("ImGui::EndTabItem")
	static function endTabItem() : Void;

	@:native("ImGui::EndTabBar")
	static function endTabBar() : Void;

	@:native("ImGui::EndPopup")
	static function endPopup() : Void;

	@:native("ImGui::EndMenuBar")
	static function endMenuBar() : Void;

	@:native("ImGui::EndMenu")
	static function endMenu() : Void;

	@:native("ImGui::EndMainMenuBar")
	static function endMainMenuBar() : Void;

	@:native("ImGui::EndGroup")
	static function endGroup() : Void;

	@:native("ImGui::EndFrame")
	static function endFrame() : Void;

	@:native("ImGui::EndDragDropTarget")
	static function endDragDropTarget() : Void;

	@:native("ImGui::EndDragDropSource")
	static function endDragDropSource() : Void;

	@:native("ImGui::EndCombo")
	static function endCombo() : Void;

	@:native("ImGui::EndChildFrame")
	static function endChildFrame() : Void;

	@:native("ImGui::EndChild")
	static function endChild() : Void;

	@:native("ImGui::End")
	static function end() : Void;

	@:native("ImGui::Dummy")
	static function dummy(_size : ImVec2) : Void;

	@:native("ImGui::DragScalarN")
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _v_speed : Float32, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _v_speed : Float32, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _v_speed : Float32, _v_min : Star<cpp.Void>) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _v_speed : Float32) : Bool {})
	static function dragScalarN(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _components : Int, _v_speed : Float32, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::DragScalar")
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_speed : Float32, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_speed : Float32, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_speed : Float32, _v_min : Star<cpp.Void>) : Bool {})
	@:overload(function(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_speed : Float32) : Bool {})
	static function dragScalar(_label : ConstCharStar, _data_type : ImGuiDataType, _v : Star<cpp.Void>, _v_speed : Float32, _v_min : Star<cpp.Void>, _v_max : Star<cpp.Void>, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::DragIntRange2")
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Int>, _v_current_max : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Int>, _v_current_max : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Int>, _v_current_max : Star<Int>, _v_speed : Float32, _v_min : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Int>, _v_current_max : Star<Int>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Int>, _v_current_max : Star<Int>) : Bool {})
	static function dragIntRange2(_label : ConstCharStar, _v_current_min : Star<Int>, _v_current_max : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int, _format : ConstCharStar, _format_max : ConstCharStar) : Bool;

	@:native("ImGui::DragInt4")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>) : Bool {})
	static function dragInt4(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool;

	@:native("ImGui::DragInt3")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>) : Bool {})
	static function dragInt3(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool;

	@:native("ImGui::DragInt2")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>) : Bool {})
	static function dragInt2(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool;

	@:native("ImGui::DragInt")
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Int>) : Bool {})
	static function dragInt(_label : ConstCharStar, _v : Star<Int>, _v_speed : Float32, _v_min : Int, _v_max : Int, _format : ConstCharStar) : Bool;

	@:native("ImGui::DragFloatRange2")
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Float32>, _v_current_max : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _format_max : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Float32>, _v_current_max : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Float32>, _v_current_max : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Float32>, _v_current_max : Star<Float32>, _v_speed : Float32, _v_min : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Float32>, _v_current_max : Star<Float32>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v_current_min : Star<Float32>, _v_current_max : Star<Float32>) : Bool {})
	static function dragFloatRange2(_label : ConstCharStar, _v_current_min : Star<Float32>, _v_current_max : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _format_max : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::DragFloat4")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>) : Bool {})
	static function dragFloat4(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::DragFloat3")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>) : Bool {})
	static function dragFloat3(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::DragFloat2")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>) : Bool {})
	static function dragFloat2(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::DragFloat")
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32) : Bool {})
	@:overload(function(_label : ConstCharStar, _v : Star<Float32>) : Bool {})
	static function dragFloat(_label : ConstCharStar, _v : Star<Float32>, _v_speed : Float32, _v_min : Float32, _v_max : Float32, _format : ConstCharStar, _power : Float32) : Bool;

	@:native("ImGui::DestroyContext")
	@:overload(function() : Void {})
	static function destroyContext(_ctx : Star<ImGuiContext>) : Void;

	@:native("ImGui::DebugCheckVersionAndDataLayout")
	static function debugCheckVersionAndDataLayout(_version_str : ConstCharStar, _sz_io : SizeT, _sz_style : SizeT, _sz_vec2 : SizeT, _sz_vec4 : SizeT, _sz_drawvert : SizeT, _sz_drawidx : SizeT) : Bool;

	@:native("ImGui::CreateContext")
	@:overload(function() : Star<ImGuiContext> {})
	static function createContext(_shared_font_atlas : Star<ImFontAtlas>) : Star<ImGuiContext>;

	@:native("ImGui::Combo")
	@:overload(function(_label : ConstCharStar, _current_item : Star<Int>, _items : Star<Int8>, _items_count : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _current_item : Star<Int>, _items : Star<Int8>, _items_count : Int, _popup_max_height_in_items : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _current_item : Star<Int>, _items_separated_by_zeros : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _current_item : Star<Int>, _items_separated_by_zeros : ConstCharStar, _popup_max_height_in_items : Int) : Bool {})
	@:overload(function(_label : ConstCharStar, _current_item : Star<Int>, _items_getter : Dynamic, _data : Star<cpp.Void>, _items_count : Int) : Bool {})
	static function combo(_label : ConstCharStar, _current_item : Star<Int>, _items_getter : Dynamic, _data : Star<cpp.Void>, _items_count : Int, _popup_max_height_in_items : Int) : Bool;

	@:native("ImGui::Columns")
	@:overload(function(_count : Int, _id : ConstCharStar) : Void {})
	@:overload(function(_count : Int) : Void {})
	@:overload(function() : Void {})
	static function columns(_count : Int, _id : ConstCharStar, _border : Bool) : Void;

	@:native("ImGui::ColorPicker4")
	@:overload(function(_label : ConstCharStar, _col : Star<Float32>, _flags : ImGuiColorEditFlags) : Bool {})
	@:overload(function(_label : ConstCharStar, _col : Star<Float32>) : Bool {})
	static function colorPicker4(_label : ConstCharStar, _col : Star<Float32>, _flags : ImGuiColorEditFlags, _ref_col : Star<Float32>) : Bool;

	@:native("ImGui::ColorPicker3")
	@:overload(function(_label : ConstCharStar, _col : Star<Float32>) : Bool {})
	static function colorPicker3(_label : ConstCharStar, _col : Star<Float32>, _flags : ImGuiColorEditFlags) : Bool;

	@:native("ImGui::ColorEdit4")
	@:overload(function(_label : ConstCharStar, _col : Star<Float32>) : Bool {})
	static function colorEdit4(_label : ConstCharStar, _col : Star<Float32>, _flags : ImGuiColorEditFlags) : Bool;

	@:native("ImGui::ColorEdit3")
	@:overload(function(_label : ConstCharStar, _col : Star<Float32>) : Bool {})
	static function colorEdit3(_label : ConstCharStar, _col : Star<Float32>, _flags : ImGuiColorEditFlags) : Bool;

	@:native("ImGui::ColorConvertU32ToFloat4")
	@:overload(function(_in : ImU32) : ImVec4 {})
	@:overload(function(_in : ImU32) : Void {})
	static function colorConvertU32ToFloat4(_in : ImU32) : ImVec4;

	@:native("ImGui::ColorConvertRGBtoHSV")
	static function colorConvertRGBtoHSV(_r : Float32, _g : Float32, _b : Float32, _out_h : Float32, _out_s : Float32, _out_v : Float32) : Void;

	@:native("ImGui::ColorConvertHSVtoRGB")
	static function colorConvertHSVtoRGB(_h : Float32, _s : Float32, _v : Float32, _out_r : Float32, _out_g : Float32, _out_b : Float32) : Void;

	@:native("ImGui::ColorConvertFloat4ToU32")
	static function colorConvertFloat4ToU32(_in : ImVec4) : ImU32;

	@:native("ImGui::ColorButton")
	@:overload(function(_desc_id : ConstCharStar, _col : ImVec4, _flags : ImGuiColorEditFlags) : Bool {})
	@:overload(function(_desc_id : ConstCharStar, _col : ImVec4) : Bool {})
	static function colorButton(_desc_id : ConstCharStar, _col : ImVec4, _flags : ImGuiColorEditFlags, _size : ImVec2) : Bool;

	@:native("ImGui::CollapsingHeader")
	@:overload(function(_label : ConstCharStar) : Bool {})
	@:overload(function(_label : ConstCharStar, _flags : ImGuiTreeNodeFlags) : Bool {})
	@:overload(function(_label : ConstCharStar, _p_open : Star<Bool>) : Bool {})
	static function collapsingHeader(_label : ConstCharStar, _p_open : Star<Bool>, _flags : ImGuiTreeNodeFlags) : Bool;

	@:native("ImGui::CloseCurrentPopup")
	static function closeCurrentPopup() : Void;

	@:native("ImGui::CheckboxFlags")
	static function checkboxFlags(_label : ConstCharStar, _flags : Star<Int>, _flags_value : Int) : Bool;

	@:native("ImGui::Checkbox")
	static function checkbox(_label : ConstCharStar, _v : Star<Bool>) : Bool;

	@:native("ImGui::CaptureMouseFromApp")
	@:overload(function() : Void {})
	static function captureMouseFromApp(_want_capture_mouse_value : Bool) : Void;

	@:native("ImGui::CaptureKeyboardFromApp")
	@:overload(function() : Void {})
	static function captureKeyboardFromApp(_want_capture_keyboard_value : Bool) : Void;

	@:native("ImGui::CalcTextSize")
	@:overload(function(_text : ConstCharStar, _text_end : ConstCharStar, _hide_text_after_double_hash : Bool) : ImVec2 {})
	@:overload(function(_text : ConstCharStar, _text_end : ConstCharStar) : ImVec2 {})
	@:overload(function(_text : ConstCharStar) : ImVec2 {})
	@:overload(function(_text : ConstCharStar, _text_end : ConstCharStar, _hide_text_after_double_hash : Bool, _wrap_width : Float32) : ImVec2 {})
	@:overload(function(_text : ConstCharStar, _text_end : ConstCharStar, _hide_text_after_double_hash : Bool) : Void {})
	@:overload(function(_text : ConstCharStar, _text_end : ConstCharStar) : Void {})
	@:overload(function(_text : ConstCharStar) : Void {})
	@:overload(function(_text : ConstCharStar, _text_end : ConstCharStar, _hide_text_after_double_hash : Bool, _wrap_width : Float32) : Void {})
	@:overload(function(_text : ConstCharStar, _text_end : ConstCharStar, _hide_text_after_double_hash : Bool) : ImVec2 {})
	@:overload(function(_text : ConstCharStar, _text_end : ConstCharStar) : ImVec2 {})
	@:overload(function(_text : ConstCharStar) : ImVec2 {})
	static function calcTextSize(_text : ConstCharStar, _text_end : ConstCharStar, _hide_text_after_double_hash : Bool, _wrap_width : Float32) : ImVec2;

	@:native("ImGui::CalcListClipping")
	static function calcListClipping(_items_count : Int, _items_height : Float32, _out_items_display_start : Star<Int>, _out_items_display_end : Star<Int>) : Void;

	@:native("ImGui::CalcItemWidth")
	static function calcItemWidth() : Float32;

	@:native("ImGui::Button")
	@:overload(function(_label : ConstCharStar) : Bool {})
	static function button(_label : ConstCharStar, _size : ImVec2) : Bool;

	@:native("ImGui::BulletTextV")
	static function bulletTextV(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::BulletText")
	static function bulletText(_fmt : ConstCharStar, _args : VarArg) : Void;

	@:native("ImGui::Bullet")
	static function bullet() : Void;

	@:native("ImGui::BeginTooltip")
	static function beginTooltip() : Void;

	@:native("ImGui::BeginTabItem")
	@:overload(function(_label : ConstCharStar, _p_open : Star<Bool>) : Bool {})
	@:overload(function(_label : ConstCharStar) : Bool {})
	static function beginTabItem(_label : ConstCharStar, _p_open : Star<Bool>, _flags : ImGuiTabItemFlags) : Bool;

	@:native("ImGui::BeginTabBar")
	@:overload(function(_str_id : ConstCharStar) : Bool {})
	static function beginTabBar(_str_id : ConstCharStar, _flags : ImGuiTabBarFlags) : Bool;

	@:native("ImGui::BeginPopupModal")
	@:overload(function(_name : ConstCharStar, _p_open : Star<Bool>) : Bool {})
	@:overload(function(_name : ConstCharStar) : Bool {})
	static function beginPopupModal(_name : ConstCharStar, _p_open : Star<Bool>, _flags : ImGuiWindowFlags) : Bool;

	@:native("ImGui::BeginPopupContextWindow")
	@:overload(function(_str_id : ConstCharStar, _mouse_button : Int) : Bool {})
	@:overload(function(_str_id : ConstCharStar) : Bool {})
	@:overload(function() : Bool {})
	static function beginPopupContextWindow(_str_id : ConstCharStar, _mouse_button : Int, _also_over_items : Bool) : Bool;

	@:native("ImGui::BeginPopupContextVoid")
	@:overload(function(_str_id : ConstCharStar) : Bool {})
	@:overload(function() : Bool {})
	static function beginPopupContextVoid(_str_id : ConstCharStar, _mouse_button : Int) : Bool;

	@:native("ImGui::BeginPopupContextItem")
	@:overload(function(_str_id : ConstCharStar) : Bool {})
	@:overload(function() : Bool {})
	static function beginPopupContextItem(_str_id : ConstCharStar, _mouse_button : Int) : Bool;

	@:native("ImGui::BeginPopup")
	@:overload(function(_str_id : ConstCharStar) : Bool {})
	static function beginPopup(_str_id : ConstCharStar, _flags : ImGuiWindowFlags) : Bool;

	@:native("ImGui::BeginMenuBar")
	static function beginMenuBar() : Bool;

	@:native("ImGui::BeginMenu")
	@:overload(function(_label : ConstCharStar) : Bool {})
	static function beginMenu(_label : ConstCharStar, _enabled : Bool) : Bool;

	@:native("ImGui::BeginMainMenuBar")
	static function beginMainMenuBar() : Bool;

	@:native("ImGui::BeginGroup")
	static function beginGroup() : Void;

	@:native("ImGui::BeginDragDropTarget")
	static function beginDragDropTarget() : Bool;

	@:native("ImGui::BeginDragDropSource")
	@:overload(function() : Bool {})
	static function beginDragDropSource(_flags : ImGuiDragDropFlags) : Bool;

	@:native("ImGui::BeginCombo")
	@:overload(function(_label : ConstCharStar, _preview_value : ConstCharStar) : Bool {})
	static function beginCombo(_label : ConstCharStar, _preview_value : ConstCharStar, _flags : ImGuiComboFlags) : Bool;

	@:native("ImGui::BeginChildFrame")
	@:overload(function(_id : ImGuiID, _size : ImVec2) : Bool {})
	static function beginChildFrame(_id : ImGuiID, _size : ImVec2, _flags : ImGuiWindowFlags) : Bool;

	@:native("ImGui::BeginChild")
	@:overload(function(_str_id : ConstCharStar, _size : ImVec2, _border : Bool) : Bool {})
	@:overload(function(_str_id : ConstCharStar, _size : ImVec2) : Bool {})
	@:overload(function(_str_id : ConstCharStar) : Bool {})
	@:overload(function(_str_id : ConstCharStar, _size : ImVec2, _border : Bool, _flags : ImGuiWindowFlags) : Bool {})
	@:overload(function(_id : ImGuiID, _size : ImVec2, _border : Bool) : Bool {})
	@:overload(function(_id : ImGuiID, _size : ImVec2) : Bool {})
	@:overload(function(_id : ImGuiID) : Bool {})
	static function beginChild(_id : ImGuiID, _size : ImVec2, _border : Bool, _flags : ImGuiWindowFlags) : Bool;

	@:native("ImGui::Begin")
	@:overload(function(_name : ConstCharStar, _p_open : Star<Bool>) : Bool {})
	@:overload(function(_name : ConstCharStar) : Bool {})
	static function begin(_name : ConstCharStar, _p_open : Star<Bool>, _flags : ImGuiWindowFlags) : Bool;

	@:native("ImGui::ArrowButton")
	static function arrowButton(_str_id : ConstCharStar, _dir : ImGuiDir) : Bool;

	@:native("ImGui::AlignTextToFramePadding")
	static function alignTextToFramePadding() : Void;

	@:native("ImGui::AcceptDragDropPayload")
	@:overload(function(_type : ConstCharStar) : Star<ImGuiPayload> {})
	static function acceptDragDropPayload(_type : ConstCharStar, _flags : ImGuiDragDropFlags) : Star<ImGuiPayload>;
}
