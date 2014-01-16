package phaser.easing;

@:native("Phaser.Easing.Quartic")
@:publicFields
extern class Quartic {
	static function In(k:Float):Float;
	static function Out(k:Float):Float;
	static function InOut(k:Float):Float;
}