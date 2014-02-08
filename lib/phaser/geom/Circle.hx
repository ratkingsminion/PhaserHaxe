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
	function circumferencePoint(angle:Float, asDegrees:Bool, ?out:Point):Point;
	function offset(dx:Float, dy:Float):Rectangle;
	function offsetPoint(point:Point):Rectangle;
	function toString():String;
	var diameter(default, default):Float;
	var radius(default, default):Float;
	var left(default, default):Float;
	var right(default, default):Float;
	var top(default, default):Float;
	var bottom(default, default):Float;
	var area(default, null):Float;
	var empty(default, default):Bool;
	
	private var _diameter:Float;
	private var _radius:Float;
}