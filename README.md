# linc/Dear ImGui
Haxe/hxcpp @:native bindings for [Dear ImGui](https://github.com/ocornut/imgui).

This is a [linc](http://snowkit.github.io/linc/) library.

---

This library works with the Haxe cpp target only.

---
### Install

`haxelib git linc_imgui https://github.com/Aidan63/linc_imgui`

### Usage

The API follows the ImGui C++ API with most functions and attributes having a haxe equivalent with the same name. When the API wants a ImTextureID (c++ void*) you can use the cpp.Pointer class and rawCast() / reinterpret() to convert to and from whatever classes your framework uses.

For functions which take and modify a float (e.g. colour edits, float inputs / sliders) the float must be a cpp.Float32 type, not a default Haxe float. When creating types such as Vec2 and Vec4 the floats passed to the create method do not need to be explicitly defined as a cpp.Float32 since it is not permanently modifying that variable.

### Reporting errors

This is a new binding so there's bound to be missing and / or non-working functions and features. If you find them please create a new issue so it can be fixed.
