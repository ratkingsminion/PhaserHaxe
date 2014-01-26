package phaser.geom;

@:native("Phaser.Point")
@:publicFields
extern class PointMath {
	static function add(a:Point, b:Point, ?out:Point):Point;
	static function subtract(a:Point, b:Point, ?out:Point):Point;
	static function multiply(a:Point, b:Point, ?out:Point):Point;
	static function divide(a:Point, b:Point, ?out:Point):Point;
	static function equals(a:Point, b:Point):Bool;
	static function distance(a:Point, b:Point, round:Bool):Float;
	static function rotate(a:Point, x:Float, y:Float, angle:Float, asDegrees:Bool, distance:Float):Point;
}