
#include <hxcpp.h>
#include "./linc_imgui.h"

// ATLAS

unsigned char* ImGui::linc::GetTexDataAsRGBA32(ImFontAtlas* _atlas, int* _outWidth, int* _outHeight)
{
    unsigned char* pixels;
    _atlas->GetTexDataAsRGBA32(&pixels, _outWidth, _outHeight);

    return pixels;
}
unsigned char* ImGui::linc::GetTexDataAsAlpha8(ImFontAtlas* _atlas, int* _outWidth, int* _outHeight)
{
    unsigned char* pixels;
    _atlas->GetTexDataAsAlpha8(&pixels, _outWidth, _outHeight);

    return pixels;
}
