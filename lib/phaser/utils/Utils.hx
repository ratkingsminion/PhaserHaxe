package phaser.utils;

@:native("Phaser.Utils")
@:publicFields
extern class Utils {
	static function shuffle(array:Dynamic):Dynamic;
	static function pad(str:String, ?len:Int, ?pad:String, ?dir:Int):String;
	static function isPlainObject(obj:Dynamic):Bool;
	@:overload(static function(target:Dynamic):Dynamic { })
	static function extend(deep:Bool, target:Dynamic):Dynamic;
}