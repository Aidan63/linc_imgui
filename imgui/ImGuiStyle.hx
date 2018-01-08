package imgui;

import imgui.util.ImVec2;
import imgui.util.ImVec4;
import cpp.Pointer;

@:include('linc_imgui.h')
@:native('ImGuiStyle')
@:structAccess
@:unreflective
extern class ImGuiStyle
{
    /**
      Global alpha applies to everything in ImGui
     */
    @:native('Alpha') public var alpha : Float;

    /**
      Padding within a window
     */
    @:native('WindowPadding') public var windowPadding : ImVec2;

    /**
      Radius of window corners rounding. Set to 0.0f to have rectangular windows
     */
    @:native('WindowRounding') public var windowRounding : Float;

    /**
      Thickness of border around windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly)
     */
    @:native('WindowBorderSize') public var windowBorderSize : Float;

    /**
      Minimum window size
     */
    @:native('WindowMinSize') public var windowMinSize : ImVec2;

    /**
      Alignment for title bar text. Defaults to (0.0f,0.5f) for left-aligned,vertically centered.
     */
    @:native('WindowTitleAlign') public var windowTitleAlign : ImVec2;

    /**
      Radius of child window corners rounding. Set to 0.0f to have rectangular windows.
     */
    @:native('ChildRounding') public var childRounding : Float;

    /**
      Thickness of border around child windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly)
     */
    @:native('ChildBorderSize') public var childBorderSize : Float;

    /**
      Radius of popup window corners rounding.
     */
    @:native('PopupRounding') public var popupRounding : Float;

    /**
      Thickness of border around popup windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly)
     */
    @:native('PopupBorderSize') public var popupBorderSize : Float;

    /**
      Padding within a framed rectangle (used by most widgets)
     */
    @:native('FramePadding') public var framePadding : ImVec2;

    /**
      Radius of frame corners rounding. Set to 0.0f to have rectangular frame (used by most widgets).
     */
    @:native('FrameRounding') public var frameRounding : Float;

    /**
      Thickness of border around frames. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly)
     */
    @:native('FrameBorderSize') public var frameBorderSize : Float;

    /**
      Horizontal and vertical spacing between widgets/lines
     */
    @:native('ItemSpacing') public var itemSpacing : ImVec2;

    /**
      Horizontal and vertical spacing between within elements of a composed widget (e.g. a slider and its label)
     */
    @:native('ItemInnerSpacing') public var itemInnerSpacing : ImVec2;

    /**
      Expand reactive bounding box for touch-based system where touch position is not accurate enough.
      
      Unfortunately we don't sort widgets so priority on overlap will always be given to the first widget. So don't grow this too much!
     */
    @:native('TouchExtraPadding') public var touchExtraPadding : ImVec2;

    /**
      Horizontal indentation when e.g. entering a tree node. Generally == (FontSize + FramePadding.x*2).
     */
    @:native('IndentSpacing') public var indentSpacing : Float;

    /**
      Minimum horizontal spacing between two columns
     */
    @:native('ColumnsMinSpacing') public var columnsMinSpacing : Float;

    /**
      Width of the vertical scrollbar, Height of the horizontal scrollbar
     */
    @:native('ScrollbarSize') public var scrollbarSize : Float;

    /**
      Radius of grab corners for scrollbar
     */
    @:native('ScrollbarRounding') public var scrollbarRounding : Float;

    /**
      Minimum width/height of a grab box for slider/scrollbar.
     */
    @:native('GrabMinSize') public var grabMinSize : Float;

    /**
      Radius of grabs corners rounding. Set to 0.0f to have rectangular slider grabs.
     */
    @:native('GrabRounding') public var grabRounding : Float;

    /**
      Alignment of button text when button is larger than text. Defaults to (0.5f,0.5f) for horizontally+vertically centered.
     */
    @:native('ButtonTextAlign') public var buttonTextAlign : ImVec2;

    /**
      Window positions are clamped to be visible within the display area by at least this amount. Only covers regular windows.
     */
    @:native('DisplayWindowPadding') public var displayWindowPadding : ImVec2;

    /**
      If you cannot see the edge of your screen (e.g. on a TV) increase the safe area padding. Covers popups/tooltips as well regular windows.
     */
    @:native('DisplaySafeAreaPadding') public var displaySafeAreaPadding : ImVec2;

    /**
      Enable anti-aliasing on lines/borders. Disable if you are really tight on CPU/GPU.
     */
    @:native('AntiAliasedLines') public var antiAliasedLines : Bool;

    /**
      Enable anti-aliasing on filled shapes (rounded rectangles, circles, etc.)
     */
    @:native('AntiAliasedShapes') public var antiAliasedShapes : Bool;

    /**
      Tessellation tolerance. Decrease for highly tessellated curves (higher quality, more polygons), increase to reduce quality.
     */
    @:native('CurveTessellationTol') public var curveTessellationTol : Float;

    /**
      Colours
     */
    @:native('Colors') public var colors : Pointer<ImVec4>;

    @:native('new ImGuiStyle') static function create() : Pointer<ImGuiStyle>;
    @:native('ScaleAllSizes') static function scaleAllSizes(_scaleFactor : Float) : Void;
}
