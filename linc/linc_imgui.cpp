
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

        // Main Widgets Wrappers
        void Image(const char* _imageTextureID, const ImVec2& _size, const ImVec2& _uv0, const ImVec2& _uv1, const ImVec4& _tintCol, const ImVec4& _borderCol)
        {
            char* id = const_cast<char*>(_imageTextureID);
            ImGui::Image(static_cast<void*>(id), _size, _uv0, _uv1, _tintCol, _borderCol);
        }
        bool ImageButton(const char* _imageTextureID, const ImVec2& _size, const ImVec2& _uv0, const ImVec2& _uv1, int _framePadding, const ImVec4& _bgCol, const ImVec4& _tintCol)
        {
            char* id = const_cast<char*>(_imageTextureID);
            return ImGui::ImageButton(static_cast<void*>(id), _size, _uv0, _uv1, _framePadding, _bgCol, _tintCol);
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
            const char* listbox_items[_items->length];
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
    }
}



// OLD / Needs to be refactored

const char* ImGui::linc::resolveVoidStar(void* _ptr)
{
    return static_cast<const char*>(_ptr);
}
void* ImGui::linc::createVoidStar(const char* _data)
{
    char* str = const_cast<char*>(_data);
    return static_cast<void*>(str);
}

// DRAW DATA

ImDrawList* ImGui::linc::GetDrawList(ImDrawData* _data, int _index)
{
    return _data->CmdLists[_index];
}

// DRAW LIST

int ImGui::linc::GetVertexBufferSize(ImDrawList* _data)
{
    return _data->VtxBuffer.size();
}
int ImGui::linc::GetIndexBufferSize(ImDrawList* _data)
{
    return _data->IdxBuffer.size();
}
int ImGui::linc::GetCmdSize(ImDrawList* _data)
{
    return _data->CmdBuffer.size();
}

ImDrawVert* ImGui::linc::GetVertexPtr(ImDrawList* _data, int _index)
{
    return &_data->VtxBuffer[_index];
}
ImDrawIdx ImGui::linc::GetIndexPtr(ImDrawList* _data, int _index)
{
    return _data->IdxBuffer[_index];
}
ImDrawCmd* ImGui::linc::GetCmdPtr(ImDrawList* _data, int _index)
{
    return &_data->CmdBuffer[_index];
}
