package phaser.easing;

@:native("Phaser.Easing.Sinusoidal")
@:publicFields
extern class Sinusoidal {
	static function In(k:Float):Float;
	static function Out(k:Float):Float;
	static function InOut(k:Float):Float;
}