package phaser.utils;

@:native("Phaser.Color")
@:publicFields
extern class Color {
	static function getColor32(alpha:Int, red:Int, green:Int, blue:Int):Int;
	static function getColor(red:Int, green:Int, blue:Int):Int;
	static function hexToRGB(h:String):Int;
	static function getColorInfo(color:Int):String;
	static function RGBtoHexstring(color:Int):String;
	static function RGBtoWebstring(color:Int):String;
	static function colorToHexstring(color:Int):String;
	static function interpolateColor(color1:Int, color2:Int, steps:Int, currentStep:Int, ?alpha:Int):Int;
	static function interpolateColorWithRGB(color:Int, r:Int, g:Int, b:Int, steps:Int, currentStep:Int):Int;
	static function interpolateRGB(r1:Int, g1:Int, b1:Int, r2:Int, g2:Int, b2:Int, steps:Int, currentStep:Int):Int;
	static function getRandomColor(?min:Int, ?max:Int, ?alpha:Int):Int;
	static function getRGB(color1:Int): { alpha:Int, red:Int, green:Int, blue:Int };
	static function getWebRGB(color:Int):String;
	static function getAlpha(color:Int):Int;
	static function getAlphaFloat(color:Int):Float;
	static function getRed(color:Int):Int;
	static function getGreen(color:Int):Int;
	static function getBlue(color:Int):Int;
}