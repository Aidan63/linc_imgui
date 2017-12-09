#pragma

#include <hxcpp.h>
#include "../lib/imgui/imgui.h"

namespace ImGui
{
    namespace linc
    {
        // Misc
        extern const char* GetVoidStar(void* _ptr);

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
