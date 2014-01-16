package phaser.system;

@:native("Phaser.Device")
@:publicFields
extern class Device {
	function new();
	var patchAndroidClearRectBug:Bool;
	var desktop:Bool;
	var iOS:Bool;
	var cocoonJS:Bool;
	var android:Bool;
	var chromeOS:Bool;
	var linux:Bool;
	var macOS:Bool;
	var windows:Bool;
	var canvas:Bool;
	var file:Bool;
	var fileSystem:Bool;
	var localStorage:Bool;
	var webGL:Bool;
	var worker:Bool;
	var touch:Bool;
	var mspointer:Bool;
	var css3D:Bool;
	var pointerLock:Bool;
	var typedArray:Bool;
	var arora:Bool;
	var chrome:Bool;
	var epiphany:Bool;
	var firefox:Bool;
	var ie:Bool;
	var ieVersion:Int;
	var mobileSafari:Bool;
	var midori:Bool;
	var opera:Bool;
	var safari:Bool;
	var webApp:Bool;
	var audioData:Bool;
	var webAudio:Bool;
	var ogg:Bool;
	var opus:Bool;
	var mp3:Bool;
	var wav:Bool;
	var m4a:Bool;
	var webm:Bool;
	var iPhone:Bool;
	var iPhone4:Bool;
	var iPad:Bool;
	var pixelRatio:Float;
	var littleEndian:Bool;
	function canPlayAudio(type:String):Bool;
	function isConsoleOpen():Bool;
}