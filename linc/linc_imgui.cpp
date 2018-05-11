
#include <hxcpp.h>
#include "./linc_imgui.h"

// Window Wrappers

namespace ImGui
{
    namespace linc
    {
        // Window Wrappers
        bool Begin(const char* _name, int _flags)
        {
            return ImGui::Begin(_name, NULL, _flags);
        }
        bool Begin(const char* _name, bool &_open, int _flags)
        {
            return ImGui::Begin(_name, &_open, _flags);
        }
        
        // Text Wrappers
        void Text(const char* _text)
        {
            ImGui::Text("%s", _text);
        }
        void TextColored(ImVec4 _col, const char* _text)
        {
            ImGui::TextColored(_col, "%s", _text);
        }
        void TextDisabled(const char* _text)
        {
            ImGui::TextDisabled("%s", _text);
        }
        void TextWrapper(const char* _text)
        {
            ImGui::TextWrapped("%s", _text);
        }
        void LabelText(const char* _label, const char* _text)
        {
            ImGui::LabelText(_label, "%s", _text);
        }
        void BulletText(const char* _text)
        {
            ImGui::BulletText("%s", _text);
        }

        bool Checkbox(const char* _label, bool &_v)
        {
            return ImGui::Checkbox(_label, &_v);
        }
        bool RadioButton(const char* _label, bool _active)
        {
            return ImGui::RadioButton(_label, _active);
        }
        bool RadioButton(const char* _label, int &_v, int _button)
        {
            return ImGui::RadioButton(_label, &_v, _button);
        }
        bool Combo(const char* _label, int &_currentItem, Array<String> _items, int _heightInItems)
        {
            const char** listbox_items = new const char*[_items->length];
            for (int i = 0; i < _items->length; i++)
            {
                listbox_items[i] = _items[i];
            }

            return ImGui::Combo(_label, &_currentItem, listbox_items, _items->length, _heightInItems);
        }
        void PlotLines(const char* _label, Array<float> _values, int _valuesOffset, const char* _overlayText, float _scaleMin, float _scaleMax, ImVec2 _graphSize, int _stride)
        {
            ImGui::PlotLines(_label, &_values[0], _values->length, _valuesOffset, _overlayText, _scaleMin, _scaleMax, _graphSize, _stride);
        }
        void PlotHistogram(const char* _label, Array<float> _values, int _valuesOffset, const char* _overlayText, float _scaleMin, float _scaleMax, ImVec2 _graphSize, int _stride)
        {
            ImGui::PlotHistogram(_label, &_values[0], _values->length, _valuesOffset, _overlayText, _scaleMin, _scaleMax, _graphSize, _stride);
        }

        // Drag Wrappers
        bool DragFloat(const char* _label, float &_v, float _speed, float _min, float _max, const char* _displayFormat, float _power)
        {
            return ImGui::DragFloat(_label, &_v, _speed, _min, _max, _displayFormat, _power);
        }
        bool DragFloat2(const char* _label, Array<float> _v, float _speed, float _min, float _max, const char* _displayFormat, float _power)
        {
            return ImGui::DragFloat2(_label, &_v[0], _speed, _min, _max, _displayFormat, _power);
        }
        bool DragFloat3(const char* _label, Array<float> _v, float _speed, float _min, float _max, const char* _displayFormat, float _power)
        {
            return ImGui::DragFloat3(_label, &_v[0], _speed, _min, _max, _displayFormat, _power);
        }
        bool DragFloat4(const char* _label, Array<float> _v, float _speed, float _min, float _max, const char* _displayFormat, float _power)
        {
            return ImGui::DragFloat4(_label, &_v[0], _speed, _min, _max, _displayFormat, _power);
        }
        bool DragFloatRange2(const char* _label, float &_currentMin, float &_currentMax, float _speed, float _min, float _max, const char* _displayFormat, const char* _displayFormatMax, float _power)
        {
            return ImGui::DragFloatRange2(_label, &_currentMin, &_currentMax, _speed, _min, _max, _displayFormat, _displayFormatMax, _power);
        }
        bool DragInt(const char* _label, int &_v, float _speed, int _min, int _max, const char* _displayFormat)
        {
            return ImGui::DragInt(_label, &_v, _speed, _min, _max, _displayFormat);
        }
        bool DragInt2(const char* _label, Array<int> _v, float _speed, int _min, int _max, const char* _displayFormat)
        {
            return ImGui::DragInt(_label, &_v[0], _speed, _min, _max, _displayFormat);
        }
        bool DragInt3(const char* _label, Array<int> _v, float _speed, int _min, int _max, const char* _displayFormat)
        {
            return ImGui::DragInt(_label, &_v[0], _speed, _min, _max, _displayFormat);
        }
        bool DragInt4(const char* _label, Array<int> _v, float _speed, int _min, int _max, const char* _displayFormat)
        {
            return ImGui::DragInt(_label, &_v[0], _speed, _min, _max, _displayFormat);
        }
        bool DragIntRange2(const char* _label, int &_currentMin, int &_currentMax, float _speed, int _min, int _max, const char* _displayFormat, const char* _displayFormatMax)
        {
            return ImGui::DragIntRange2(_label, &_currentMin, &_currentMax, _speed, _min, _max, _displayFormat, _displayFormatMax);
        }

        // Input Wrappers
        bool InputText(const char* _label, Array<char> &_buffer, ImGuiInputTextFlags _flags)
        {
            return ImGui::InputText(_label, &_buffer[0], _buffer->length, _flags);
        }
        bool InputTextMultiline(const char* _label, Array<char> &_buffer, const ImVec2& _size, ImGuiInputTextFlags _flags)
        {
            return ImGui::InputTextMultiline(_label, &_buffer[0], _buffer->length, _size, _flags);
        }
        bool InputFloat(const char* _label, float &_v, float _step, float _stepFast, int _decimalPrecision, ImGuiInputTextFlags _extraFlags)
        {
            return ImGui::InputFloat(_label, &_v, _step, _stepFast, _decimalPrecision, _extraFlags);
        }
        bool InputFloat2(const char* _label, Array<float> _v, int _decimalPrecision, ImGuiInputTextFlags _extraFlags)
        {
            return ImGui::InputFloat2(_label, &_v[0], _decimalPrecision, _extraFlags);
        }
        bool InputFloat3(const char* _label, Array<float> _v, int _decimalPrecision, ImGuiInputTextFlags _extraFlags)
        {
            return ImGui::InputFloat3(_label, &_v[0], _decimalPrecision, _extraFlags);
        }
        bool InputFloat4(const char* _label, Array<float> _v, int _decimalPrecision, ImGuiInputTextFlags _extraFlags)
        {
            return ImGui::InputFloat4(_label, &_v[0], _decimalPrecision, _extraFlags);
        }
        bool InputInt(const char* _label, int &_v, int _step, int _stepFast, ImGuiInputTextFlags _extraFlags)
        {
            return ImGui::InputInt(_label, &_v, _step, _stepFast, _extraFlags);
        }
        bool InputInt2(const char* _label, Array<int> _v, ImGuiInputTextFlags _extraFlags)
        {
            return ImGui::InputInt2(_label, &_v[0], _extraFlags);
        }
        bool InputInt3(const char* _label, Array<int> _v, ImGuiInputTextFlags _extraFlags)
        {
            return ImGui::InputInt3(_label, &_v[0], _extraFlags);
        }
        bool InputInt4(const char* _label, Array<int> _v, ImGuiInputTextFlags _extraFlags)
        {
            return ImGui::InputInt4(_label, &_v[0], _extraFlags);
        }
        bool InputDouble(const char* _label, Array<double> _v, double _step, double _step_fast, const char* _format, ImGuiInputTextFlags _extra_flags)
        {
            return ImGui::InputDouble(_label, &_v[0], _step, _step_fast, _format, _extra_flags);
        }

        // Slider Wrappers
        bool SliderFloat(const char* _label, float &_v, float _vMin, float _vMax, const char* _displayFormat, float _power)
        {
            return ImGui::SliderFloat(_label, &_v, _vMin, _vMax, _displayFormat, _power);
        }
        bool SliderFloat2(const char* _label, Array<float> _v, float _vMin, float _vMax, const char* _displayFormat, float _power)
        {
            return ImGui::SliderFloat2(_label, &_v[0], _vMin, _vMax, _displayFormat, _power);
        }
        bool SliderFloat3(const char* _label, Array<float> _v, float _vMin, float _vMax, const char* _displayFormat, float _power)
        {
            return ImGui::SliderFloat3(_label, &_v[0], _vMin, _vMax, _displayFormat, _power);
        }
        bool SliderFloat4(const char* _label, Array<float> _v, float _vMin, float _vMax, const char* _displayFormat, float _power)
        {
            return ImGui::SliderFloat4(_label, &_v[0], _vMin, _vMax, _displayFormat, _power);
        }
        bool SliderAngle(const char* _label, float &_vRad, float _vDegreesMin, float _vDegreesMax)
        {
            return ImGui::SliderAngle(_label, &_vRad, _vDegreesMin, _vDegreesMax);
        }
        bool SliderInt(const char* _label, int &_v, int _vMin, int _vMax, const char* _displayFormat)
        {
            return ImGui::SliderInt(_label, &_v, _vMin, _vMax, _displayFormat);
        }
        bool SliderInt2(const char* _label, Array<int> _v, int _vMin, int _vMax, const char* _displayFormat)
        {
            return ImGui::SliderInt2(_label, &_v[0], _vMin, _vMax, _displayFormat);
        }
        bool SliderInt3(const char* _label, Array<int> _v, int _vMin, int _vMax, const char* _displayFormat)
        {
            return ImGui::SliderInt3(_label, &_v[0], _vMin, _vMax, _displayFormat);
        }
        bool SliderInt4(const char* _label, Array<int> _v, int _vMin, int _vMax, const char* _displayFormat)
        {
            return ImGui::SliderInt4(_label, &_v[0], _vMin, _vMax, _displayFormat);
        }
        bool VSliderFloat(const char* _label, const ImVec2& _size, float &_v, float _vMin, float _vMax, const char* _displayFormat, float _power)
        {
            return ImGui::VSliderFloat(_label, _size, &_v, _vMin, _vMax, _displayFormat, _power);
        }
        bool VSliderInt(const char* _label, const ImVec2& _size, int &_v, int _vMin, int _vMax, const char* _displayFormat)
        {
            return ImGui::VSliderInt(_label, _size, &_v, _vMin, _vMax, _displayFormat);
        }

        // Colour Wrappers
        bool ColorEdit3(const char* _label, Array<float> _col, ImGuiColorEditFlags _flags)
        {
            return ImGui::ColorEdit3(_label, &_col[0], _flags);
        }
        bool ColorEdit4(const char* _label, Array<float> _col, ImGuiColorEditFlags _flags)
        {
            return ImGui::ColorEdit4(_label, &_col[0], _flags);
        }
        bool ColorPicker3(const char* _label, Array<float> _col, ImGuiColorEditFlags _flags)
        {
            return ImGui::ColorPicker3(_label, &_col[0], _flags);
        }
        bool ColorPicker4(const char* _label, Array<float> _col, ImGuiColorEditFlags _flags, const float &_refCol)
        {
            return ImGui::ColorPicker4(_label, &_col[0], _flags, &_refCol);
        }
        bool ColorButton(const char* _descId, const ImVec4& _col, ImGuiColorEditFlags _flags, ImVec2 _size)
        {
            return ImGui::ColorButton(_descId, _col, _flags, _size);
        }

        // Tree Wrappers
        bool TreeNode(const char* _label)
        {
            return ImGui::TreeNode(_label);
        }
        bool TreeNode(const char* _strId, const char* _label)
        {
            return ImGui::TreeNode(_strId, "%s", _label);
        }
        bool TreeNodeEx(const char* _label, ImGuiTreeNodeFlags _flags)
        {
            return ImGui::TreeNodeEx(_label, _flags);
        }
        bool TreeNodeEx(const char* _strId, ImGuiTreeNodeFlags _flags, const char* _label)
        {
            return ImGui::TreeNodeEx(_strId, _flags, "%s", _label);
        }
        bool CollapsingHeader(const char* _label, ImGuiTreeNodeFlags _flags)
        {
            return ImGui::CollapsingHeader(_label, _flags);
        }
        bool CollapsingHeader(const char* _label, bool &_open, ImGuiTreeNodeFlags _flags)
        {
            return ImGui::CollapsingHeader(_label, &_open, _flags);
        }

        // Selectable Wrappers
        bool SelectableSet(const char* _label, bool _selected, ImGuiSelectableFlags _flags, const ImVec2& _size)
        {
            return ImGui::Selectable(_label, _selected, _flags, _size);
        }
        bool SelectableRef(const char* _label, bool &_selected, ImGuiSelectableFlags _flags, const ImVec2& _size)
        {
            return ImGui::Selectable(_label, &_selected, _flags, _size);
        }
        bool ListBox(const char* _label, int &_currentItem, Array<String> _items, int _heightInItems)
        {
            const char** listbox_items = new const char*[_items->length];
            for (int i = 0; i < _items->length; i++)
            {
                listbox_items[i] = _items[i];
            }

            return ImGui::ListBox(_label, &_currentItem, listbox_items, _items->length, _heightInItems);
        }

        // Tooltip Wrapper
        void SetTooltip(const char* _text)
        {
            ImGui::SetTooltip("%s", _text);
        }

        // Menu Wrapper
        void MenuItemToggle(const char* _label, const char* _shortcut, bool &_selected, bool _enabled)
        {
            ImGui::MenuItem(_label, _shortcut, &_selected, _enabled);
        }
        void MenuItem(const char* _label, const char* _shortcut, bool _selected, bool _enabled)
        {
            ImGui::MenuItem(_label, _shortcut, _selected, _enabled);
        }

        // Popup Wrappers
        bool BeginPopupModal(const char* _name, bool* _open, ImGuiWindowFlags _extraFlags)
        {
            return ImGui::BeginPopupModal(_name, _open, _extraFlags);
        }

        // Logging Wrappers
        void LogText(const char* _text)
        {
            ImGui::LogText("%s", _text);
        }

        // Utility Wrappers
        void CalcListClipping(int _itemsCount, float _itemsHeight, int &_outItemsDisplayStart, int &_outItemsDisplayEnd)
        {
            ImGui::CalcListClipping(_itemsCount, _itemsHeight, &_outItemsDisplayStart, &_outItemsDisplayEnd);
        }
    }
}
