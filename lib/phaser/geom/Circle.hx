package phaser.geom;

@:native("Phaser.Circle")
@:publicFields
extern class Circle {
	function new(?x:Float, ?y:Float, ?diameter:Float);
	var x:Float;
	var y:Float;
	function circumference():Float;
	function setTo(x:Float, y:Float, diameter:Float):Circle;
	function copyFrom(source:Circle):Circle;
	function copyTo(dest:Circle):Circle;
	function distance(dest: { x:Float, y:Float }, ?round:Bool):Float;
	function clone(?out:Circle):Circle;
	function contains(x:Float, y:Float):Bool;
	function circumferencePoint(angle:Float, asDegrees:Bool, ?out:Point):Point;
	function offset(dx:Float, dy:Float):Rectangle;
	function offsetPoint(point:Point):Rectangle;
	function toString():String;
	var radius(default, default):Float;
	var left(default, default):Float;
	var right(default, default):Float;
	var top(default, default):Float;
	var bottom(default, default):Float;
	var area(default, null):Float;
	var empty(default, default):Bool;
}

// has to be its own class because you can't overload instance methods with static functions
@:native("Phaser.Circle")
@:publicFields
extern class CircleMath {
	static function contains(a:Circle, x:Float, y:Float):Bool;
	static function equals(a:Circle, b:Circle):Bool;
	static function intersects(a:Circle, b:Circle):Bool;
	static function circumferencePoint(a:Circle, angle:Float, ?asDegrees:Bool, ?out:Point):Point;
	static function intersectsRectangle(c:Circle, r:Rectangle):Bool;
}