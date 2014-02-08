package phaser.time;
import phaser.core.Game;

@:native("Phaser.Time")
@:publicFields
extern class Time {
	function new(game:Game);
	var game:Game;
	var time:Float;
	var now:Float;
	var elapsed:Float;
	var pausedTime:Float;
	var fps:Float;
	var fpsMin:Float;
	var fpsMax:Float;
	var msMin:Float;
	var msMax:Float;
	var physicsElapsed:Float;
	var frames:Int;
	var pauseDuration:Int;
	var timeToCall:Float;
	var lastTime:Float;
	var evens:Timer;
	function boot():Void;
	function create(?autoDestroy:Bool):Timer;
	function removeAll():Void;
	function update(time:Float):Void;
	function totalElapsedSeconds():Float;
	function elapsedSince(since:Int):Int;
	function elapsedSecondsSince(since:Float):Float;
	function reset():Void;
	
	private var _started:Float;
	private var _timeLastSecond:Int;
	private var _pauseStarted:Float;
	private var _justResumed:Bool;
	private var _timers:Array<Timer>;
	private var _len:Int;
	private var _i:Int;
	private function gamePaused():Void;
	private function gameResumed():Void;
}