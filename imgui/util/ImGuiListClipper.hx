package imgui.util;

import cpp.Pointer;

@:include('linc_imgui.h')
@:native('ImGuiListClipper')
@:structAccess
extern class ImGuiListClipper
{
    public var StartPosY : Float;
    public var ItemsHeight : Float;
    public var ItemsCount : Int;
    public var StepNo : Int;
    public var DisplayStart : Int;
    public var DisplayEnd : Int;

    /**
      If you don't specify an items_height, you NEED to call Step().
      If you specify items_height you may call the old Begin()/End() api directly, but prefer calling Step().
      @param _itemsCount Use -1 to ignore (you can call Begin later). Use INT_MAX if you don't know how many items you have (in which case the cursor won't be advanced in the final step).
      @param _itemsHeight Use -1.0f to be calculated automatically on first step. Otherwise pass in the distance between your items, typically GetTextLineHeightWithSpacing() or GetFrameHeightWithSpacing().
      @return ImGuiListClipper
     */
    @:native('ImGuiListClipper') static function create(_itemsCount : Int = -1, _itemsHeight : Float = -1) : ImGuiListClipper;

    /**
      Call until it returns false. The DisplayStart/DisplayEnd fields will be set and you can process/draw those items.
     */
    @:native('Step') function Step() : Void;

    /**
      Automatically called by constructor if you passed 'items_count' or by Step() in Step 1.
      @param _itemsCount 
      @param _itemsHeight 
     */
    @:native('Begin') function Begin(_itemsCount : Int, _itemsHeight : Float = -1) : Void;

    /**
      Automatically called on the last call of Step() that returns false.
     */
    @:native('End') function End() : Void;
}
