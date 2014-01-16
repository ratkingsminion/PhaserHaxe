package phaser.easing;

@:native("Phaser.Easing.Cubic")
@:publicFields
extern class Cubic {
	static function In(k:Float):Float;
	static function Out(k:Float):Float;
	static function InOut(k:Float):Float;
}