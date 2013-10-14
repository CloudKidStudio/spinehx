package spinehx;
class Color {
//TODO port from gdx
    public var r:Float = 0;
    public var g:Float = 0;
    public var b:Float = 0;
    public var a:Float = 0;

    public function set2(c:Color) {
        set(c.r, c.g, c.b, c.a);
    }

    public static function copy(c:Color) {
        return new Color(c.r, c.g, c.b, c.a);
    }

    public function add(r, g, b, a) {
        set(
            this.r + r,
            this.g + g,
            this.b + b,
            this.a + a
        );
    }

    public function set(r, g, b, a) {
        this.r = MathUtils.clamp(r, 0, 1);
        this.g = MathUtils.clamp(g, 0, 1);
        this.b = MathUtils.clamp(b, 0, 1);
        this.a = MathUtils.clamp(a, 0, 1);
    }

    public static function valueOf(s:String):Color
    {
        return new Color(
            Std.parseInt("0x" + s.substr(0, 2)) / 255, 
            Std.parseInt("0x" + s.substr(2, 2)) / 255, 
            Std.parseInt("0x" + s.substr(4, 2)) / 255, 
            Std.parseInt("0x" + s.substr(6, 2)) / 255);
    }

    public function toInt():Int
    {
        return Std.int(a * 255) << 24 | Std.int(r * 255) << 16 | Std.int(g * 255) << 8 | Std.int(b * 255);
    }

    public function new(r, g, b, a) {
        set(r, g, b, a);
    }
}
