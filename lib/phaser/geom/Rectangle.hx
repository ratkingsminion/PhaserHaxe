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