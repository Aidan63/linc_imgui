# linc/ImGUI
Haxe/hxcpp @:native bindings for [ImGui](https://github.com/ocornut/imgui).

This is a [linc](http://snowkit.github.io/linc/) library.

---

This library works with the Haxe cpp target only.

---
### Install

`haxelib git linc_imgui https://github.com/Aidan63/linc_imgui`

### Usage

The API follows the ImGui C++ API will most functions and attributes having a haxe equivalent with the same name. When the API wants a ImTextureID (c++ void*) you can use the cpp.Pointer class and rawCast() / reinterpret() to convert to and from whatever classes your framework uses.

For functions which take and modify a float (e.g. colour edits, float inputs / sliders) the float must be a cpp.Float32 type, not a default Haxe float. When creating types such as Vec2 and Vec4 the floats passed to the create method do not need to be explicitly defined as a cpp.Float32 since it is not permanently modifying that variable.

There's a CLI, Luxe, Haxeflixel, and Kha demo in the tests folder. These demos show you how you implement drawing, input handling, etc in each framework and in many cases has a class you can drop into your own project to handle all of that setup automatically.

I hope to keep adding demos for other haxe frameworks as I find the time.

### Reporting errors

This is a new binding so there's bound to be missing and / or non-working functions and features. If you find them please create a new issue so it can be fixed.
