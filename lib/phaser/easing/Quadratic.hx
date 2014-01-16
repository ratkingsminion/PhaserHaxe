package phaser.easing;

@:native("Phaser.Easing.Quadratic")
@:publicFields
extern class Quadratic {
	static function In(k:Float):Float;
	static function Out(k:Float):Float;
	static function InOut(k:Float):Float;
}