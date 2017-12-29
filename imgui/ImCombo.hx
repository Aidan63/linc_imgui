package imgui;

import imgui.ImGui;

@:include('linc_imgui.h')
extern class ImCombo
{
    //@:overload(function(_label : String, _currentItem : Int, _items : Array<String>) : Bool {})
    //@:native('ImGui::linc::Combo') static function combo(_label : String, _currentItem : Int, _items : Array<String>, _heightInItems : Int) : Bool;

    @:overload(function(_label : String, _previewValue : String) : Bool {})
    @:native('ImGui::BeginCombo') static function beginCombo(_label : String, _previewValue : String, _flags : ImGuiComboFlags) : Bool;

    @:native('ImGui::EndCombo') static function endCombo() : Void;
}

@:enum abstract ImGuiComboFlags(Int) from Int to Int
{
    var PopupAlignLeft = 1 << 0;
    var HeightSmall    = 1 << 1;
    var HeightRegular  = 1 << 2;
    var HeightLarge    = 1 << 3;
    var HeightLargest  = 1 << 4;
    var HeightMask = HeightSmall | HeightRegular | HeightLarge | HeightLargest;
}
