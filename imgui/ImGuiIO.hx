package imgui;

import imgui.ImGui;
import imgui.util.ImVec2;
import imgui.font.ImFontAtlas;
import imgui.font.ImFont;
import imgui.draw.ImDrawData;
import cpp.Pointer;
import cpp.RawPointer;
import cpp.ConstCharStar;
import cpp.Callable;

@:keep
@:include('linc_imgui.h')
@:native('ImGuiIO')
@:structAccess
@:unreflective
extern class ImGuiIO
{
    // ----------------------//
    // Settings to fill once //
    // ----------------------//

    /**
      Display size, in pixels. For clamping windows positions.
      - Default : unset
     */
    public var DisplaySize : ImVec2;

    /**
      Time elapsed since last frame, in seconds.
      - Default : 1.0f / 60.f
     */
    public var DeltaTime : Float;

    /**
      Maximum time between saving positions/sizes to .ini file, in seconds.
      - Default : 5.0f
     */
    public var IniSavingRate : Float;

    /**
      Path to .ini file. NULL to disable .ini saving.
      - Default : "imgui.ini"
     */
    public var IniFilename : ConstCharStar;

    /**
      Path to .log file (default parameter to ImGui::LogToFile when no file is specified).
      - Default : "imgui_log.txt"
     */
    public var LogFilename : ConstCharStar;

    /**
      Time for a double-click, in seconds.
      - Default : 0.30f
     */
    public var MouseDoubleClickTime : Float;

    /**
      Distance threshold to stay in to validate a double-click, in pixels.
      - Default : 6.0f
     */
    public var MouseDoubleClickMaxDist : Float;

    /**
      Distance threshold before considering we are dragging
      - Default : 6.0f
     */
    public var MouseDragThreshold : Float;

    /**
      Map of indices into the KeysDown[512] entries array
      - Default : unset
     */
    public var KeyMap : cpp.RawPointer<Int>;

    /**
      When holding a key/button, time before it starts repeating, in seconds (for buttons in Repeat mode, etc.).
      - Default : 0.250f
     */
    public var KeyRepeatDelay : Float;

    /**
      When holding a key/button, rate at which it repeats, in seconds.
      - Default : 0.050f
     */
    public var KeyRepeatRate : Float;

    /**
      Store your own data for retrieval by callbacks.
      - Default : NULL
     */
    public var UserData : Pointer<Void>;

    /**
      Load and assemble one or more fonts into a single tightly packed texture. Output to Fonts array.
      - Default : auto
     */
    public var Fonts : RawPointer<ImFontAtlas>;

    /**
      Global scale all fonts.
      - Default : 1.0f
     */
    public var FontGlobalScale : Float;

    /**
      Allow user scaling text of individual window with CTRL+Wheel.
      - Default : false
     */
    public var FontAllowUserScaling : Bool;

    /**
      Font to use on NewFrame(). Use NULL to uses Fonts->Fonts[0].
      - Default : NULL
     */
    public var FontDefault : Pointer<ImFont>;

    /**
      For retina display or other situations where window coordinates are different from framebuffer coordinates.
      User storage only, presently not used by ImGui.
      - Default : (1.0f, 1.0f)
     */
    public var DisplayFramebufferScale : ImVec2;

    /**
      If you use DisplaySize as a virtual space larger than your screen, set DisplayVisibleMin/Max to the visible area.
      - Default : unset (0.0f, 0.0f)
     */
    public var DisplayVisibleMin : ImVec2;

    /**
      If the values are the same, we defaults to Min=(0.0f) and Max=DisplaySize
      - Default : unset (0.0f, 0.0f)
     */
    public var DisplayVisibleMax : ImVec2;

    /**
      OS X style: Text editing cursor movement using Alt instead of Ctrl, Shortcuts using Cmd/Super instead of Ctrl,
      Line/Text Start and End using Cmd+Arrows instead of Home/End, Double click selects by word instead of selecting whole text,
      Multi-selection in lists uses Cmd/Super instead of Ctrl.
      - Default : defined(__APPLE__)
     */
    public var OptMaxOSXBehaviors : Bool;

    /**
      Enable blinking cursor, for users who consider it annoying.
      - Default : true
     */
    public var OptCursorBlink : Bool;

    //------------------------//
    // User Function Settings //
    //------------------------//

    public var RenderDrawListsFn : Callable<RawPointer<ImDrawData>->Void>;

    public var GetClipboardTextFn : Callable<RawPointer<cpp.Void>->ConstCharStar>;
    public var SetClipboardTextFn : Callable<RawPointer<cpp.Void>->ConstCharStar->Void>;

    // -------------------------------------------//
    // Settings to fill before calling NewFrame() //
    // -------------------------------------------//

    /**
      Mouse position, in pixels. Set to ImVec2(-FLT_MAX,-FLT_MAX) if mouse is unavailable (on another screen, etc.)
     */
    public var MousePos : ImVec2;

    /**
      Mouse buttons: left, right, middle + extras. ImGui itself mostly only uses left button (BeginPopupContext** are using right button).
      Others buttons allows us to track if the mouse is being used by your application + available to user as a convenience via IsMouse** API.
     */
    public var MouseDown : Pointer<Bool>;

    /**
      Mouse wheel: 1 unit scrolls about 5 lines text.
     */
    public var MouseWheel : Float;

    /**
      Request ImGui to draw a mouse cursor for you (if you are on a platform without a mouse cursor).
     */
    public var MouseDrawCursor : Bool;

    /**
      Keyboard modifier pressed: Control
     */
    public var KeyCtrl : Bool;

    /**
      Keyboard modifier pressed: Shift
     */
    public var KeyShift : Bool;

    /**
      Keyboard modifier pressed: Alt
     */
    public var KeyAlt : Bool;

    /**
      Keyboard modifier pressed: Cmd/Super/Windows
     */
    public var KeySuper : Bool;

    /**
      Keyboard keys that are pressed (in whatever storage order you naturally have access to keyboard data)
     */
    public var KeysDown : Pointer<Bool>;

    /**
      List of characters input (translated by user from keypress+keyboard state). Fill using AddInputCharacter() helper.
     */
    public var InputCharacters : Pointer<ImWchar>;

    /**
      Add new character into InputCharacters[]
     */
    @:native('AddInputCharacter') function addInputCharacters(_c : ImWchar) : Void;

    /**
      Add new characters into InputCharacters[] from an UTF-8 string
     */
    @:native('AddInputCharactersUTF8') function addInputCharactersUTF8(_utf8Chars : String) : Void;

    /**
      Clear the text input buffer manually
     */
    @:native('ClearInputCharacters') function clearInputCharacters() : Void;

    // ----------------------------------------------//
    // Settings to retrieve after calling NewFrame() //
    // ----------------------------------------------//

    /**
      When io.WantCaptureMouse is true, do not dispatch mouse input data to your main application.

      This is set by ImGui when it wants to use your mouse (e.g. unclicked mouse is hovering a window, or a widget is active).
     */
    public var WantCaptureMouse : Bool;

    /**
      When io.WantCaptureKeyboard is true, do not dispatch keyboard input data to your main application.

      This is set by ImGui when it wants to use your keyboard inputs.
     */
    public var WantCaptureKeyboard : Bool;

    /**
      Mobile/console: when io.WantTextInput is true, you may display an on-screen keyboard.

      This is set by ImGui when it wants textual keyboard input to happen (e.g. when a InputText widget is active).
     */
    public var WantTextInput : Bool;

    /**
      [BETA-NAV] MousePos has been altered, back-end should reposition mouse on next frame. Set only when 'NavMovesMouse=true'.
     */
    public var WantMoveMouse : Bool;

    /**
      Application framerate estimation, in frame per second. Solely for convenience. Rolling average estimation based on IO.DeltaTime over 120 frames.
     */
    public var Framerate : Float;

    /**
      Number of active memory allocations.
     */
    public var MetricsAllocs : Int;

    /**
        Vertices output during last call to Render().
     */
    public var MetricsRenderVertices : Int;

    /**
      Indices output during last call to Render() = number of triangles * 3.
     */
    public var MetricsRenderIndices : Int;

    /**
      Number of visible root windows (exclude child windows).
     */
    public var MetricsActiveWindows : Int;

    /**
      Mouse delta. Note that this is zero if either current or previous position are invalid (-FLT_MAX,-FLT_MAX),
      so a disappearing/reappearing mouse won't have a huge delta.
     */
    public var MouseDelta : ImVec2;

    /**
      Create a new ImGuiIO instance.
      @return ImGuiIO
     */
    @:native('ImGuiIO') static function create() : ImGuiIO;
}
