#pragma

#include <hxcpp.h>
#include "../lib/imgui/imgui.h"

namespace ImGui
{
    namespace linc
    {
        // Window Wrappers
        extern bool Begin(const char* _name, int _flags = 0);
        extern bool Begin(const char* _name, bool &_open, int _flags = 0);

        // Text Wrappers
        extern void Text(const char* _text);
        extern void TextColored(ImVec4 _col, const char* _text);
        extern void TextDisabled(const char* _text);
        extern void TextWrapped(const char* _text);
        extern void LabelText(const char* _label, const char* _text);
        extern void BulletText(const char* _text);

        // Main Widgets
        extern void Image(const char* _imageTextureID, const ImVec2& _size, const ImVec2& _uv0 = ImVec2(0,0), const ImVec2& _uv1 = ImVec2(1,1), const ImVec4& _tintCol = ImVec4(1,1,1,1), const ImVec4& _borderCol = ImVec4(0,0,0,0));
        extern bool ImageButton(const char* _imageTextureID, const ImVec2& _size, const ImVec2& _uv0 = ImVec2(0,0), const ImVec2& _uv1 = ImVec2(1,1), int _framePadding = -1, const ImVec4& _bgCol = ImVec4(0,0,0,0), const ImVec4& _tintCol = ImVec4(1,1,1,1));
        extern bool Checkbox(const char* _label, bool &_v);
        extern bool RadioButton(const char* _label, bool _active);
        extern bool RadioButton(const char* _label, int &_v, int _button);
        extern bool Combo(const char* _label, int &_currentItem, Array<String> _items, int _heightInItems = -1);
        extern void PlotLines(const char* _label, Array<float> _values, int _valuesOffset = 0, const char* _overlayText = NULL, float _scaleMin = FLT_MIN, float _scaleMax = FLT_MAX, ImVec2 _graphSize = ImVec2(0, 0), int _stide = sizeof(float));
        extern void PlotHistogram(const char* _label, Array<float> _values, int _valuesOffset = 0, const char* _overlayText = NULL, float _scaleMin = FLT_MIN, float _scaleMax = FLT_MAX, ImVec2 _graphSize = ImVec2(0, 0), int _stride = sizeof(float));

        // Drag Widgets
        extern bool DragFloat (const char* _label, float &_v, float _speed = 1.0f, float _min = 0.0f, float _max = 0.0f, const char* _displayFormat = "%.3f", float _power = 1.0f);
        extern bool DragFloat2(const char* _label, Array<float> _v, float _speed = 1.0f, float _min = 0.0f, float _max = 0.0f, const char* _displayFormat = "%.3f", float _power = 1.0f);
        extern bool DragFloat3(const char* _label, Array<float> _v, float _speed = 1.0f, float _min = 0.0f, float _max = 0.0f, const char* _displayFormat = "%.3f", float _power = 1.0f);
        extern bool DragFloat4(const char* _label, Array<float> _v, float _speed = 1.0f, float _min = 0.0f, float _max = 0.0f, const char* _displayFormat = "%.3f", float _power = 1.0f);
        extern bool DragFloatRange2(const char* _label, float &_currentMin, float &_currentMax, float _speed = 1.0f, float _min = 0.0f, float _max = 0.0f, const char* _displayFormat = "%.3f", const char* _displayFormatMax = NULL, float _power = 1.0f);
        extern bool DragInt (const char* _label, int &_v, float _speed = 1.0f, int _min = 0, int _max = 0, const char* _displayFormat = "%.0f");
        extern bool DragInt2(const char* _label, Array<int> _v, float _speed = 1.0f, int _min = 0, int _max = 0, const char* _displayFormat = "%.0f");
        extern bool DragInt3(const char* _label, Array<int> _v, float _speed = 1.0f, int _min = 0, int _max = 0, const char* _displayFormat = "%.0f");
        extern bool DragInt4(const char* _label, Array<int> _v, float _speed = 1.0f, int _min = 0, int _max = 0, const char* _displayFormat = "%.0f");
        extern bool DragIntRange2(const char* _label, int &_currentMin, int &_currentMax, float _speed = 1.0f, int _min = 0, int _max = 0, const char* _displayFormat = "%.0f", const char* _displayFormatMax = NULL);

        // Input Widgets
        extern bool InputText(const char* _label, Array<char> &_buffer, ImGuiInputTextFlags _flags = 0);
        extern bool InputTextMultiline(const char* _label, Array<char> &_buffer, const ImVec2& _size = ImVec2(0, 0), ImGuiInputTextFlags _flags = 0);
        extern bool InputFloat(const char* _label, float &_v, float _step = 0.0f, float _stepFast = 0.0f, int _decimalPrecision = -1, ImGuiInputTextFlags _extraFlags = 0);
        extern bool InputFloat2(const char* _label, Array<float> _v, int _decimalPrecision = -1, ImGuiInputTextFlags _extraFlags = 0);
        extern bool InputFloat3(const char* _label, Array<float> _v, int _decimalPrecision = -1, ImGuiInputTextFlags _extraFlags = 0);
        extern bool InputFloat4(const char* _label, Array<float> _v, int _decimalPrecision = -1, ImGuiInputTextFlags _extraFlags = 0);
        extern bool InputInt(const char* _label, int &_v, int _step = 1, int _stepFast = 100, ImGuiInputTextFlags _extraFlags = 0);
        extern bool InputInt2(const char* _label, Array<int> _v, ImGuiInputTextFlags _extraFlags = 0);
        extern bool InputInt3(const char* _label, Array<int> _v, ImGuiInputTextFlags _extraFlags = 0);
        extern bool InputInt4(const char* _label, Array<int> _v, ImGuiInputTextFlags _extraFlags = 0);

        // Slider Widgets
        extern bool SliderFloat(const char* _label, float &_v, float _vMin, float _vMax, const char* _displayFormat = "%.3f", float _power = 1.0f);     // adjust display_format to decorate the value with a prefix or a suffix for in-slider labels or unit display. Use power!=1.0 for logarithmic sliders
        extern bool SliderFloat2(const char* _label, Array<float> _v, float _vMin, float _vMax, const char* _displayFormat = "%.3f", float _power = 1.0f);
        extern bool SliderFloat3(const char* _label, Array<float> _v, float _vMin, float _vMax, const char* _displayFormat = "%.3f", float _power = 1.0f);
        extern bool SliderFloat4(const char* _label, Array<float> _v, float _vMin, float _vMax, const char* _displayFormat = "%.3f", float _power = 1.0f);
        extern bool SliderAngle(const char* _label, float &_vRad, float _vDegreesMin = -360.0f, float _vDegreesMax = +360.0f);
        extern bool SliderInt(const char* _label, int &_v, int _vMin, int _vMax, const char* _displayFormat = "%.0f");
        extern bool SliderInt2(const char* _label, Array<int> _v, int _vMin, int _vMax, const char* _displayFormat = "%.0f");
        extern bool SliderInt3(const char* _label, Array<int> _v, int _vMin, int _vMax, const char* _displayFormat = "%.0f");
        extern bool SliderInt4(const char* _label, Array<int> _v, int _vMin, int _vMax, const char* _displayFormat = "%.0f");
        extern bool VSliderFloat(const char* _label, const ImVec2& _size, float &_v, float _vMin, float _vMax, const char* _displayFormat = "%.3f", float _power = 1.0f);
        extern bool VSliderInt(const char* _label, const ImVec2& _size, int &_v, int _vMin, int _vMax, const char* _displayFormat = "%.0f");

        // Color Warappers
        extern bool ColorEdit3(const char* _label, Array<float> _col, ImGuiColorEditFlags _flags = 0);
        extern bool ColorEdit4(const char* _label, Array<float> _col, ImGuiColorEditFlags _flags = 0);
        extern bool ColorPicker3(const char* _label, Array<float> _col, ImGuiColorEditFlags _flags = 0);
        extern bool ColorPicker4(const char* _label, Array<float> _col, ImGuiColorEditFlags _flags = 0, const float &_refCol = 0);
        extern bool ColorButton(const char* _descId, const ImVec4& _col, ImGuiColorEditFlags _flags = 0, ImVec2 _size = ImVec2(0,0));

        // Tree Wrappers
        extern bool TreeNode(const char* _label);
        extern bool TreeNode(const char* _strId, const char* _label);
        extern bool TreeNodeEx(const char* _label, ImGuiTreeNodeFlags _flags = 0);
        extern bool TreeNodeEx(const char* _strId, ImGuiTreeNodeFlags _flags, const char* _label);
        extern bool CollapsingHeader(const char* _label, ImGuiTreeNodeFlags _flags = 0);
        extern bool CollapsingHeader(const char* _label, bool &_open, ImGuiTreeNodeFlags _flags = 0);

        // Selectable wrappers
        extern bool SelectableSet(const char* _label, bool _selected = false, ImGuiSelectableFlags _flags = 0, const ImVec2& _size = ImVec2(0,0));
        extern bool SelectableRef(const char* _label, bool &_selected, ImGuiSelectableFlags _flags = 0, const ImVec2& _size = ImVec2(0,0));
        extern bool ListBox(const char* _label, int &_currentItem, Array<String> _items, int _heightInItems = -1);

        // Tooltip Wrapper
        extern void SetTooltip(const char* _label);

        // Menu Wrapper
        extern void MenuItemToggle(const char* _label, const char* _shortcut, bool &_value, bool _enabled = true);
        extern void MenuItem(const char* _label, const char* _shortcut = NULL, bool _selected = false, bool _enabled = true);

        // Popup wrapper
        extern bool BeginPopupModal(const char* _name, bool* _open = NULL, ImGuiWindowFlags _extraFlags = 0);

        // Log Wrapper
        extern void LogText(const char* _text);

        // Utility Wrappers
        extern void CalcListClipping(int _itemsCount, float _itemsHeight, int &_outItemsDisplayStart, int &_outItemsDisplayEnd);

        // Old / need to be refactored.

        // Misc
        extern const char* resolveVoidStar(void* _ptr);
        extern void* createVoidStar(const char* _data);

        // Atlas functions
        extern unsigned char* GetTexDataAsRGBA32(ImFontAtlas* _atlas, int* _outWidth, int* _outHeight);
        extern unsigned char* GetTexDataAsAlpha8(ImFontAtlas* _atlas, int* _outWidth, int* _outHeight);
        extern void SetTexID(ImFontAtlas* _atlas, const char* _data);

        // ImDrawData functions
        extern ImDrawList* GetDrawList(ImDrawData* _data, int _index);

        // ImDrawList functions
        extern int GetVertexBufferSize(ImDrawList* _data);
        extern int GetIndexBufferSize(ImDrawList* _data);
        extern int GetCmdSize(ImDrawList* _data);

        extern ImDrawVert* GetVertexPtr(ImDrawList* _data, int _index);
        extern ImDrawIdx GetIndexPtr(ImDrawList* _data, int _index);
        extern ImDrawCmd* GetCmdPtr(ImDrawList* _data, int _index);
    }
}
