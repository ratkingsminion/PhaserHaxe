package phaser.geom;

@:native("Phaser.Rectangle")
@:publicFields
extern class Rectangle {
	function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
	var x:Float;
	var y:Float;
	var width:Float;
	var height:Float;
	function offset(dx:Float, dy:Float):Rectangle;
	function offsetPoint(point:Point):Rectangle;
	function setTo(x:Float, y:Float, width:Float, height:Float):Rectangle;
	function floor():Void;
	function floorAll():Void;
	function copyFrom(source:Rectangle):Rectangle;
	function copyTo(dest:Rectangle):Rectangle;
	function inflate(dx:Float, dy:Float):Rectangle;
	function size(?output:Point):Point;
	function clone(?output:Rectangle):Rectangle;
	function contains(x:Float, y:Float):Bool;
	function containsRect(b:Rectangle):Bool;
	function equals(b:Rectangle):Bool;
	function intersection(b:Rectangle, ?out:Rectangle):Rectangle;
	function intersects(b:Rectangle, ?tolerance:Float):Bool;
	function intersectsRaw(left:Float, right:Float, top:Float, bottom:Float, tolerance:Float):Bool;
	function union(b:Rectangle, ?out:Rectangle):Rectangle;
	function toString():String;
	var halfWidth(default, null):Float;
	var halfHeight(default, null):Float;
	var bottom(default, default):Float;
	var bottomRight(default, default):Point;
	var left(default, default):Float;
	var right(default, default):Float;
	var volume(default, null):Float;
	var perimeter(default, null):Float;
	var centerX(default, default):Float;
	var centerY(default, default):Float;
	var top(default, default):Float;
	var topLeft(default, default):Point;
	var empty(default, default):Bool;
}

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