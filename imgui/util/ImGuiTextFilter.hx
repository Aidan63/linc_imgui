package imgui.util;

@:include('linc_imgui.h')
@:native('ImGuiTextFilter')
@:structAccess
@:unreflective
extern class ImGuiTextFilter
{
    public var char : cpp.RawPointer<cpp.Char>;
    @:native('Filters') public var filter : ImVectorTextRange;
    @:native('CountGrep') public var countGrep : Int;

    @:overload(function() : ImGuiTextFilter {})
    @:native('ImGuiTextFilter') public static function create(_defaultFilter : String) : ImGuiTextFilter;

    @:overload(function() : Bool {})
    @:overload(function(_label : String) : Bool {})
    @:native('Draw') public function draw(_label : String, _width : Float) : Bool;

    @:overload(function(_text : String) : Bool {})
    @:native('PassFilter') public function passFilter(_text : String, _textEnd : String) : Bool;

    @:native('Build') public function build() : Void;
    @:native('Clear') public function clear() : Void;
    @:native('IsActive') public function isActive() : Void;
}

@:native('ImGuiTextFilter::TextRange')
@:structAccess
@:unreflective
extern class TextRange
{
    public var b : String;
    public var e : String;

    @:overload(function() : TextRange {})
    @:native('ImGuiTextFilter::TextRange') static function create(_b : String, _e : String) : TextRange;

    @:native('begin') public function begin() : String;
    @:native('end')   public function end() : String;
    @:native('empty') public function empty() : Bool;
    @:native('front') public function front() : Int;
    @:native('split') public function split(_separator : Int, _out : cpp.Pointer<ImVectorTextRange>) : Void;
    @:native('trim_blanks') public function trimBlanks() : Void;

    @:native('ImGuiTextFilter::TextRange::is_blank') public static function isBlank(_c : Int) : Bool;
}

@:native('ImVector<ImGuiTextFilter::TextRange>')
@:structAccess
@:unreflective
extern class ImVectorTextRange extends ImVector<TextRange>
{
    //
}
