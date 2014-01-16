package phaser.easing;

@:native("Phaser.Easing.Exponential")
@:publicFields
extern class Exponential {
	static function In(k:Float):Float;
	static function Out(k:Float):Float;
	static function InOut(k:Float):Float;
}