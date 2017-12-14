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
