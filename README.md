# linc/ImGUI
Haxe/hxcpp @:native bindings for [ImGui](https://github.com/ocornut/imgui).

This is a [linc](http://snowkit.github.io/linc/) library.

---

This library works with the Haxe cpp target only.

---
### Install

`haxelib git linc_imgui https://github.com/Aidan63/linc_imgui`

Add the `HXCPP_FLOAT32` define in whatever haxe related build file you are using.

ImGui uses C++ floats and by default HxCPP converts haxe floats into C++ doubles. This will make HxCPP convert haxe floats into C++ floats. In the future I may make wrappers to remove needing this define.

### Usage

The API follows the ImGui C++ API will most functions and attributes having a haxe equivalent with the same name. When the API wants a ImTextureID (c++ void*) you can use the cpp.Pointer class and rawCast() / reinterpret() to convert to and from whatever classes your framework uses.

There's a CLI, Luxe, and Haxeflixel demo in the tests folder. The Luxe and haxeflixel tests contain a class which handles all of the setting keyboard, mouse, and rendering callbacks for you.

I hope to keep adding demos for other haxe frameworks as I find the time.

### Reporting errors

This is a new binding so there's bound to be missing and / or non-working functions and features. If you find them please create a new issue so it can be fixed.