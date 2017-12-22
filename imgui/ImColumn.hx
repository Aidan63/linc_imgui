package imgui;

import cpp.ConstCharStar;

@:include('linc_imgui.h')
extern class ImColumn
{
    @:overload(function() : Void {})
    @:overload(function(_count : Int) : Void {})
    @:overload(function(_count : Int, _id : String) : Void {})
    @:native('ImGui::Columns') static function columns(_count : Int, _id : String, _border : Bool) : Void;

    /**
      next column, defaults to current row or next row if the current row is finished
     */
    @:native('ImGui::NextColumn') static function nextColumn() : Void;
    @:native('ImGui::GetColumnIndex') static function getColumnIndex() : Int;

    /**
      get column width (in pixels). pass -1 to use current column
     */
    @:native('ImGui::GetColumnWidth') static function getColumnWidth(_columnIndex : Int = -1) : Float;

    /**
      set column width (in pixels). pass -1 to use current column
     */
    @:native('ImGui::SetColumnWidth') static function setColumnWidth(_columnIndex : Int, _width : Float) : Void;

    /**
      get position of column line (in pixels, from the left side of the contents region).

      pass -1 to use current column, otherwise 0..GetColumnsCount() inclusive. column 0 is typically 0.0f
     */
    @:native('ImGui::GetColumnOffset') static function getColumnOffset(_columnIndex : Int = -1) : Float;

    /**
      set position of column line (in pixels, from the left side of the contents region). pass -1 to use current column
     */
    @:native('ImGui::SetColumnOffset') static function setColumnOffset(_columnIndex : Int, _offsetX : Float) : Void;
    @:native('ImGui::GetColumnsCount') static function getColumnsCount() : Int;
}
