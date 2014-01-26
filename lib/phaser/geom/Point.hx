package phaser.geom;

@:native("Phaser.Point")
@:publicFields
extern class Point {
	function new(?x:Float, ?y:Float);
	var x:Float;
	var y:Float;
	function copyFrom(source: { x:Float, y:Float } ):Point;
	function invert():Point;
	function setTo(x:Float, y:Float):Point;
	function add(x:Float, y:Float):Point;
	function subtract(x:Float, y:Float):Point;
	function multiply(x:Float, y:Float):Point;
	function divide(x:Float, y:Float):Point;
	function clampX(min:Float, max:Float):Point;
	function clampY(min:Float, max:Float):Point;
	function clamp(min:Float, max:Float):Point;
	function clone(?output:Point):Point;
	function copyTo(dest: { x:Float, y:Float } ):Dynamic;
	function distance(dest: { x:Float, y:Float }, round:Bool):Float;
	function equals(a:Point):Bool;
	function rotate(x:Float, y:Float, angle:Float, asDegrees:Bool, distance:Float):Point;
	function getMagnitude():Float;
	function setMagnitude(magnitude:Float):Point;
	function normalize():Point;
	function isZero():Bool;
	function toString():String;
}