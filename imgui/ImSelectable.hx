package imgui;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.ConstPointer;
import cpp.RawPointer;
import cpp.RawConstPointer;
import cpp.Reference;
import cpp.Callable;
import imgui.util.ImVec2;

@:include('linc_imgui.h')
extern class ImSelectable
{
    /**
      size.x==0.0: use remaining width, size.x>0.0: specify width. size.y==0.0: use label height, size.y>0.0: specify height
     */
    @:overload(function(_label : ConstCharStar, _selected : Pointer<Bool>) : Bool {})
    @:overload(function(_label : ConstCharStar, _selected : Pointer<Bool>, _flags : ImGuiSelectableFlags) : Bool {})
    @:overload(function(_label : ConstCharStar, _selected : Pointer<Bool>, _flags : ImGuiSelectableFlags, _size : Reference<ImVec2>) : Bool {})
    @:overload(function(_label : ConstCharStar) : Bool {})
    @:overload(function(_label : ConstCharStar, _selected : Bool) : Bool {})
    @:overload(function(_label : ConstCharStar, _selected : Bool, _flags : ImGuiSelectableFlags) : Bool {})
    @:native('ImGui::Selectable') static function selectable(_label : ConstCharStar, _selected : Bool, _flags : ImGuiSelectableFlags, _size : Reference<ImVec2>) : Bool;

    @:overload(function(_label : ConstCharStar, _currentItem : Pointer<Int>, _itemsGetter : Callable<RawPointer<cpp.Void>->Int->RawPointer<ConstCharStar>->Bool>, _data : RawPointer<cpp.Void>, _itemsCount : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _currentItem : Pointer<Int>, _itemsGetter : Callable<RawPointer<cpp.Void>->Int->RawPointer<ConstCharStar>->Bool>, _data : RawPointer<cpp.Void>, _itemsCount : Int, _heightInItems : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _currentItem : Pointer<Int>, _items : RawPointer<RawConstPointer<ConstCharStar>>, _itemsCount : Int) : Bool {})
    @:native('ImGui::ListBox') static function listBox(_label : ConstCharStar, _currentItem : Pointer<Int>, _items : RawPointer<RawConstPointer<ConstCharStar>>, _itemsCount : Int, _heightInItems : Int) : Bool;

    /**
      use if you want to reimplement ListBox() will custom data or interactions. make sure to call ListBoxFooter() afterwards.
     */
    @:overload(function(_label : ConstCharStar, _itemsCount : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _itemsCount : Int, _heightInItems : Int) : Bool {})
    @:overload(function(_label : ConstCharStar, _size : Reference<ImVec2>) : Bool {})
    @:native('ImGui::ListBoxHeader') static function listBoxHeader(_label : ConstCharStar, _size : Reference<ImVec2>) : Bool;

    /**
      terminate the scrolling region
     */
    @:native('ImGui::ListBoxFooter') static function listBoxFooter() : Void;
}

/**
  Flags for ImGui::Selectable()
 */
@:enum abstract ImGuiSelectableFlags(Int) from Int to Int
{
    /**
      Clicking this don't close parent popup window
     */
    var DontClosePopups = 1 << 0;
    /**
      Selectable frame can span all columns (text will still fit in current column)
     */
    var SpanAllColumns = 1 << 1;
    /**
      Generate press events on double clicks too
     */
    var AllowDoubleClick = 1 << 2;
}
