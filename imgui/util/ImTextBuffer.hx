package imgui.util;

import cpp.Char;
import StringBuf;

class ImTextBuffer
{
    public var buffer(default, null) : Array<Char>;

    public function new(_length : Int, ?_initialString : String)
    {
        buffer = [ for (i in 0..._length) 0 ];
        if (_initialString != null) setString(_initialString);
    }

    public function setString(_text : String)
    {
        for (i in 0..._text.length)
        {
            buffer[i] = _text.charCodeAt(i);
        }
    }

    public function toString() : String
    {
        var buf = new StringBuf();
        for (char in buffer) buf.addChar(char);
        return buf.toString();
    }
}
