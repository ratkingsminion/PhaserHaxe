package phaser.time;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.Timer")
@:publicFields
extern class Timer {
	function new(game:Game, ?autoDestroy:Bool);
	var game:Game;
	var running:Bool;
	var autoDestroy:Bool;
	var expired(default, null):Bool;
	var events:Array<TimerEvent>;
	var onComplete:Signal;
	var paused(default, null):Bool;
	static var MINUTE:Int;
	static var SECOND:Int;
	static var HALF:Int;
	static var QUARTER:Int;
	function create(delay:Int, loop:Bool, repeatCount:Int, callback:Dynamic, callbackContext:Dynamic, args:Array<Dynamic>):TimerEvent;
	function add(delay:Float, callback:Dynamic, callbackContext:Dynamic):TimerEvent;
	function repeat(delay:Int, repeatCount:Int, callback:Dynamic, callbackContext:Dynamic):TimerEvent;
	function loop(delay:Int, callback:Dynamic, callbackContext:Dynamic):TimerEvent;
	function start():Void;
	function stop():Void;
	function remove():Bool;
	function order():Void;
	function update(time:Float):Bool;
	function pause():Void;
	function resume():Void;
	function destroy():Void;
	var next(default, null):Float;
	var duration(default, null):Float;
	var length(default, null):Int;
	var ms(default, null):Int;
	var seconds(default, null):Float;
	
	private var nextTime(default, null):Float;
	private var _started:Float;
	private var _pauseStarted:Float;
	private var _now:Float;
	private var _len:Float;
	private var _i:Float;
	private function sortHandler(a:TimerEvent, b:TimerEvent):Void;
}