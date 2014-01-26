package phaser.geom;

// has to be its own class because you can't overload instance methods with static functions
@:native("Phaser.Rectangle")
@:publicFields
extern class RectangleMath {
	static function inflate(a:Rectangle, dx:Float, dy:Float):Rectangle;
	static function inflatePoint(a:Rectangle, point:Point):Rectangle;
	static function size(a:Rectangle, ?output:Point):Point;
	static function clone(a:Rectangle, ?output:Rectangle):Rectangle;
	static function contains(a:Rectangle, x:Float, y:Float):Bool;
	static function containsRaw(rx:Float, ry:Float, rw:Float, rh:Float, x:Float, y:Float):Bool;
	static function containsPoint(a:Rectangle, point:Point):Bool;
	static function containsRect(a:Rectangle, b:Rectangle):Bool;
	static function equals(a:Rectangle, b:Rectangle):Bool;
	static function intersection(a:Rectangle, b:Rectangle, ?out:Rectangle):Rectangle;
	static function intersects(a:Rectangle, b:Rectangle):Bool;
	static function intersectsRaw(a:Rectangle, left:Float, right:Float, top:Float, bottom:Float, tolerance:Float):Bool;
	static function union(a:Rectangle, b:Rectangle, ?out:Rectangle):Rectangle;
}