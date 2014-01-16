package phaser.easing;

@:native("Phaser.Easing.Bounce")
@:publicFields
extern class Bounce {
	static function In(k:Float):Float;
	static function Out(k:Float):Float;
	static function InOut(k:Float):Float;
}