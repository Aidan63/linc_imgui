
#include <hxcpp.h>
#include <fstream>
#include "./linc_imgui.h"

// MISC

const char* ImGui::linc::GetVoidStar(void* _ptr)
{
    return static_cast<const char*>(_ptr);
}

// ATLAS

unsigned char* ImGui::linc::GetTexDataAsRGBA32(ImFontAtlas* _atlas, int* _outWidth, int* _outHeight)
{
    unsigned char* pixels;
    _atlas->GetTexDataAsRGBA32(&pixels, _outWidth, _outHeight);

    return pixels;
}
void ImGui::linc::SetTexID(ImFontAtlas* _atlas, const char* _data)
{
    char* str = const_cast<char*>(_data);
    _atlas->TexID = static_cast<void*>(str);
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
