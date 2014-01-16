package phaser.easing;

@:native("Phaser.Easing.Elastic")
@:publicFields
extern class Elastic {
	static function In(k:Float):Float;
	static function Out(k:Float):Float;
	static function InOut(k:Float):Float;
}