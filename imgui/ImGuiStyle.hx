package imgui;

import imgui.util.ImVec2;
import imgui.util.ImVec4;
import cpp.Pointer;

@:keep
@:include('linc_imgui.h')
@:native('ImGuiStyle')
@:structAccess
@:unreflective
extern class ImGuiStyle
{
    /**
      Global alpha applies to everything in ImGui
     */
    public var Alpha : Float;

    /**
      Padding within a window
     */
    public var WindowPadding : ImVec2;

    /**
      Radius of window corners rounding. Set to 0.0f to have rectangular windows
     */
    public var WindowRounding : Float;

    /**
      Thickness of border around windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly)
     */
    public var WindowBorderSize : Float;

    /**
      Minimum window size
     */
    public var WindowMinSize : ImVec2;

    /**
      Alignment for title bar text. Defaults to (0.0f,0.5f) for left-aligned,vertically centered.
     */
    public var WindowTitleAlign : ImVec2;

    /**
      Radius of child window corners rounding. Set to 0.0f to have rectangular windows.
     */
    public var ChildRounding : Float;

    /**
      Thickness of border around child windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly)
     */
    public var ChildBorderSize : Float;

    /**
      Radius of popup window corners rounding.
     */
    public var PopupRounding : Float;

    /**
      Thickness of border around popup windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly)
     */
    public var PopupBorderSize : Float;

    /**
      Padding within a framed rectangle (used by most widgets)
     */
    public var FramePadding : ImVec2;

    /**
      Radius of frame corners rounding. Set to 0.0f to have rectangular frame (used by most widgets).
     */
    public var FrameRounding : Float;

    /**
      Thickness of border around frames. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly)
     */
    public var FrameBorderSize : Float;

    /**
      Horizontal and vertical spacing between widgets/lines
     */
    public var ItemSpacing : ImVec2;

    /**
      Horizontal and vertical spacing between within elements of a composed widget (e.g. a slider and its label)
     */
    public var ItemInnerSpacing : ImVec2;

    /**
      Expand reactive bounding box for touch-based system where touch position is not accurate enough.
      
      Unfortunately we don't sort widgets so priority on overlap will always be given to the first widget. So don't grow this too much!
     */
    public var TouchExtraPadding : ImVec2;

    /**
      Horizontal indentation when e.g. entering a tree node. Generally == (FontSize + FramePadding.x*2).
     */
    public var IndentSpacing : Float;

    /**
      Minimum horizontal spacing between two columns
     */
    public var ColumnsMinSpacing : Float;

    /**
      Width of the vertical scrollbar, Height of the horizontal scrollbar
     */
    public var ScrollbarSize : Float;

    /**
      Radius of grab corners for scrollbar
     */
    public var ScrollbarRounding : Float;

    /**
      Minimum width/height of a grab box for slider/scrollbar.
     */
    public var GrabMinSize : Float;

    /**
      Radius of grabs corners rounding. Set to 0.0f to have rectangular slider grabs.
     */
    public var GrabRounding : Float;

    /**
      Alignment of button text when button is larger than text. Defaults to (0.5f,0.5f) for horizontally+vertically centered.
     */
    public var ButtonTextAlign : ImVec2;

    /**
      Window positions are clamped to be visible within the display area by at least this amount. Only covers regular windows.
     */
    public var DisplayWindowPadding : ImVec2;

    /**
      If you cannot see the edge of your screen (e.g. on a TV) increase the safe area padding. Covers popups/tooltips as well regular windows.
     */
    public var DisplaySafeAreaPadding : ImVec2;

    /**
      Enable anti-aliasing on lines/borders. Disable if you are really tight on CPU/GPU.
     */
    public var AntiAliasedLines : Bool;

    /**
      Enable anti-aliasing on filled shapes (rounded rectangles, circles, etc.)
     */
    public var AntiAliasedShapes : Bool;

    /**
      Tessellation tolerance. Decrease for highly tessellated curves (higher quality, more polygons), increase to reduce quality.
     */
    public var CurveTessellationTol : Float;

    /**
      Colours
     */
    public var Colors : Pointer<ImVec4>;

    @:native('new ImGuiStyle') static function create() : Pointer<ImGuiStyle>;
    @:native('ScaleAllSizes') static function scaleAllSizes(_scaleFactor : Float) : Void;
}
