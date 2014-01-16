package phaser.easing;

@:native("Phaser.Easing.Quintic")
@:publicFields
extern class Quintic {
	static function In(k:Float):Float;
	static function Out(k:Float):Float;
	static function InOut(k:Float):Float;
}