package imgui;

import imgui.ImGui;
import imgui.util.ImVec2;
import imgui.font.ImFontAtlas;
import imgui.font.ImFont;
import cpp.Float32;
import cpp.RawPointer;
import cpp.ConstCharStar;
import cpp.Callable;

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
    See ImGuiConfigFlags_ enum. Set by user/application. Gamepad/keyboard navigation options, etc.
    */
  @:native('ConfigFlags') public var configFlags : ImGuiConfigFlags;

  /**
    Set ImGuiBackendFlags_ enum. Set by imgui_impl_xxx files or custom back-end to communicate features supported by the back-end.
    */
  @:native('BackendFlags') public var backendFlags : ImGuiBackendFlags;

  /**
    Display size, in pixels. For clamping windows positions.
    - Default : unset
    */
  @:native('DisplaySize') public var displaySize : ImVec2;

  /**
    Time elapsed since last frame, in seconds.
    - Default : 1.0f / 60.f
    */
  @:native('DeltaTime') public var deltaTime : Float32;

  /**
    Maximum time between saving positions/sizes to .ini file, in seconds.
    - Default : 5.0f
    */
  @:native('IniSavingRate') public var iniSavingRate : Float32;

  /**
    Path to .ini file. NULL to disable .ini saving.
    - Default : "imgui.ini"
    */
  @:native('IniFilename') public var iniFilename : String;

  /**
    Path to .log file (default parameter to ImGui::LogToFile when no file is specified).
    - Default : "imgui_log.txt"
    */
  @:native('LogFilename') public var logFilename : String;

  /**
    Time for a double-click, in seconds.
    - Default : 0.30f
    */
  @:native('MouseDoubleClickTime') public var mouseDoubleClickTime : Float32;

  /**
    Distance threshold to stay in to validate a double-click, in pixels.
    - Default : 6.0f
    */
  @:native('MouseDoubleClickMaxDist') public var mouseDoubleClickMaxDist : Float32;

  /**
    Distance threshold before considering we are dragging
    - Default : 6.0f
    */
  @:native('MouseDragThreshold') public var mouseDragThreshold : Float32;

  /**
    Map of indices into the KeysDown[512] entries array
    - Default : unset
    */
  @:native('KeyMap') public var keyMap : RawPointer<Int>;

  /**
    When holding a key/button, time before it starts repeating, in seconds (for buttons in Repeat mode, etc.).
    - Default : 0.250f
    */
  @:native('KeyRepeatDelay') public var keyRepeatDelay : Float32;

  /**
    When holding a key/button, rate at which it repeats, in seconds.
    - Default : 0.050f
    */
  @:native('KeyRepeatRate') public var keyRepeatRate : Float32;

  /**
    Store your own data for retrieval by callbacks.
    - Default : NULL
    */
  @:native('UserData') public var userData : RawPointer<cpp.Void>;

  /**
    Load and assemble one or more fonts into a single tightly packed texture. Output to Fonts array.
    - Default : auto
    */
  @:native('Fonts') public var fonts : RawPointer<ImFontAtlas>;

  /**
    Global scale all fonts.
    - Default : 1.0f
    */
  @:native('FontGlobalScale') public var fontGlobalScale : Float32;

  /**
    Allow user scaling text of individual window with CTRL+Wheel.
    - Default : false
    */
  @:native('FontAllowUserScaling') public var fontAllowUserScaling : Bool;

  /**
    Font to use on NewFrame(). Use NULL to uses Fonts->Fonts[0].
    - Default : NULL
    */
  @:native('FontDefault') public var fontDefault : RawPointer<ImFont>;

  /**
    For retina display or other situations where window coordinates are different from framebuffer coordinates.
    User storage only, presently not used by ImGui.
    - Default : (1.0f, 1.0f)
    */
  @:native('DisplayFramebufferScale') public var displayFramebufferScale : ImVec2;

  /**
    If you use DisplaySize as a virtual space larger than your screen, set DisplayVisibleMin/Max to the visible area.
    - Default : unset (0.0f, 0.0f)
    */
  @:native('DisplayVisibleMin') public var displayVisibleMin : ImVec2;

  /**
    If the values are the same, we defaults to Min=(0.0f) and Max=DisplaySize
    - Default : unset (0.0f, 0.0f)
    */
  @:native('DisplayVisibleMax') public var displayVisibleMax : ImVec2;

  /**
    OS X style: Text editing cursor movement using Alt instead of Ctrl, Shortcuts using Cmd/Super instead of Ctrl,
    Line/Text Start and End using Cmd+Arrows instead of Home/End, Double click selects by word instead of selecting whole text,
    Multi-selection in lists uses Cmd/Super instead of Ctrl.
    - Default : defined(__APPLE__)
    */
  @:native('OptMaxOSXBehaviors') public var optMaxOSXBehaviors : Bool;

  /**
    Enable blinking cursor, for users who consider it annoying.
    - Default : true
    */
  @:native('OptCursorBlink') public var optCursorBlink : Bool;

  //------------------------//
  // User Function Settings //
  //------------------------//

  @:native('GetClipboardTextFn') public var getClipboardTextFn : Callable<RawPointer<cpp.Void>->ConstCharStar>;
  @:native('SetClipboardTextFn') public var setClipboardTextFn : Callable<RawPointer<cpp.Void>->ConstCharStar->Void>;

  // -------------------------------------------//
  // Settings to fill before calling NewFrame() //
  // -------------------------------------------//

  /**
    Mouse position, in pixels. Set to ImVec2(-FLT_MAX,-FLT_MAX) if mouse is unavailable (on another screen, etc.)
    */
  @:native('MousePos') public var mousePos : ImVec2;

  /**
    Mouse buttons: left, right, middle + extras. ImGui itself mostly only uses left button (BeginPopupContext** are using right button).
    Others buttons allows us to track if the mouse is being used by your application + available to user as a convenience via IsMouse** API.
    */
  @:native('MouseDown') public var mouseDown : RawPointer<Bool>;

  /**
    Mouse wheel: 1 unit scrolls about 5 lines text.
    */
  @:native('MouseWheel') public var mouseWheel : Float32;

  /**
    Request ImGui to draw a mouse cursor for you (if you are on a platform without a mouse cursor).
    */
  @:native('MouseDrawCursor') public var mouseDrawCursor : Bool;

  /**
    Keyboard modifier pressed: Control
    */
  @:native('KeyCtrl') public var keyCtrl : Bool;

  /**
    Keyboard modifier pressed: Shift
    */
  @:native('KeyShift') public var keyShift : Bool;

  /**
    Keyboard modifier pressed: Alt
    */
  @:native('KeyAlt') public var keyAlt : Bool;

  /**
    Keyboard modifier pressed: Cmd/Super/Windows
    */
  @:native('KeySuper') public var keySuper : Bool;

  /**
    Keyboard keys that are pressed (in whatever storage order you naturally have access to keyboard data)
    */
  @:native('KeysDown') public var keysDown : RawPointer<Bool>;

  /**
    List of characters input (translated by user from keypress+keyboard state). Fill using AddInputCharacter() helper.
    */
  @:native('InputCharacters') public var inputCharacters : RawPointer<ImWchar>;

  /**
    Gamepad inputs (keyboard keys will be auto-mapped and be written here by ImGui::NewFrame, all values will be cleared back to zero in ImGui::EndFrame)
    */
  @:native('NavInputs') public var navInputs : RawPointer<cpp.Float32>;

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
  @:native('WantCaptureMouse') public var wantCaptureMouse : Bool;

  /**
    When io.WantCaptureKeyboard is true, do not dispatch keyboard input data to your main application.

    This is set by ImGui when it wants to use your keyboard inputs.
    */
  @:native('WantCaptureKeyboard') public var wantCaptureKeyboard : Bool;

  /**
    Mobile/console: when io.WantTextInput is true, you may display an on-screen keyboard.

    This is set by ImGui when it wants textual keyboard input to happen (e.g. when a InputText widget is active).
    */
  @:native('WantTextInput') public var wantTextInput : Bool;

  /**
    [BETA-NAV] MousePos has been altered, back-end should reposition mouse on next frame. Set only when 'NavMovesMouse=true'.
    */
  @:native('WantSetMousePos') public var wantSetMousePos : Bool;

  /**
    Application framerate estimation, in frame per second. Solely for convenience. Rolling average estimation based on IO.DeltaTime over 120 frames.
    */
  @:native('Framerate') public var framerate : Float32;

  /**
    Number of active memory allocations.
    */
  @:native('MetricsAllocs') public var metricsAllocs : Int;

  /**
      Vertices output during last call to Render().
    */
  @:native('MetricsRenderVertices') public var metricsRenderVertices : Int;

  /**
    Indices output during last call to Render() = number of triangles * 3.
    */
  @:native('MetricsRenderIndices') public var metricsRenderIndices : Int;

  /**
    Number of visible root windows (exclude child windows).
    */
  @:native('MetricsActiveWindows') public var metricsActiveWindows : Int;

  /**
    Mouse delta. Note that this is zero if either current or previous position are invalid (-FLT_MAX,-FLT_MAX),
    so a disappearing/reappearing mouse won't have a huge delta.
    */
  @:native('MouseDelta') public var mouseDelta : ImVec2;

  /**
    Create a new ImGuiIO instance.
    @return ImGuiIO
    */
  @:native('ImGuiIO') static function create() : ImGuiIO;
}
