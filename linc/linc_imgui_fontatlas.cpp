
#include <hxcpp.h>
#include "./linc_imgui.h"

// ATLAS

/*
void ImGui::linc::GetTexDataAsRGBA32(ImFontAtlas* _atlas, Array<int> &_outPixels, int &_outWidth, int &_outHeight)
{
    unsigned char* pixels;
    _atlas->GetTexDataAsRGBA32(&pixels, &_outWidth, &_outHeight);

    _outPixels = ::Array_obj< unsigned char >::__new();
    _outPixels->setUnmanagedData(pixels, ((_outWidth * _outHeight) * 4));
}
void ImGui::linc::GetTexDataAsAlpha8(ImFontAtlas* _atlas, Array<int> &_outPixels, int &_outWidth, int &_outHeight)
{
    unsigned char* pixels;
    _atlas->GetTexDataAsAlpha8(&pixels, &_outWidth, &_outHeight);

    _outPixels = ::Array_obj< unsigned char >::__new();
    _outPixels->setUnmanagedData(pixels, (_outWidth * _outHeight));
}
*/
unsigned char* ImGui::linc::GetTexDataAsRGBA32(ImFontAtlas* _atlas, int &_outWidth, int &_outHeight)
{
    unsigned char* pixels;
    _atlas->GetTexDataAsRGBA32(&pixels, &_outWidth, &_outHeight);

    return pixels;
}
unsigned char* ImGui::linc::GetTexDataAsAlpha8(ImFontAtlas* _atlas, int &_outWidth, int &_outHeight)
{
    unsigned char* pixels;
    _atlas->GetTexDataAsAlpha8(&pixels, &_outWidth, &_outHeight);

    return pixels;
}
