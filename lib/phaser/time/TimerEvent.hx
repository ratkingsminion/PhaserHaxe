package phaser.time;

@:native("Phaser.TimerEvent")
@:publicFields
extern class TimerEvent {
	function new(timer:Timer, delay:Int, tick:Float, repeatCount:Int, loop:Bool, callback:Dynamic, callbackContext:Dynamic, args:Array<Dynamic>);
	var timer:Timer;
	var delay:Int;
	var tick:Float;
	var repeatCount:Int;
	var loop:Bool;
	var callback:Dynamic;
	var callbackContext:Dynamic;
	var args:Array<Dynamic>;
}