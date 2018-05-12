package imgui.callback;

import imgui.util.ImVec2;

/**
 * Resizing callback data to apply custom constraint. As enabled by SetNextWindowSizeConstraints(). Callback is called during the next Begin().
 * NB: For basic min/max size constraint on each axis you don't need to use the callback! The SetNextWindowSizeConstraints() parameters are enough.
 */
@:include('linc_imgui.h')
@:native('ImGuiSizeCallbackData')
@:structAccess
@:unreflective
extern class ImGuiSizeCallbackData
{
    /**
      Read-only.   What user passed to SetNextWindowSizeConstraints()
     */
    @:native('UserData') var userData : cpp.RawPointer<cpp.Void>;

    /**
      Read-only.   Window position, for reference.
     */
    @:native('Pos') var pos : ImVec2;

    /**
      Read-only.   Current window size.
     */
    @:native('CurrentSize') var currentSize : ImVec2;

    /**
      Read-write.  Desired size, based on user's mouse position. Write to this field to restrain resizing.
     */
    @:native('DesiredSize') var desiredSize : ImVec2;
}
