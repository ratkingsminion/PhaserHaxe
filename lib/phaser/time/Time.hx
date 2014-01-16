package phaser.time;
import phaser.core.Game;

@:native("Phaser.Time")
@:publicFields
extern class Time {
	function new(game:Game);
	var game:Game;
	var physicsElapsed:Float;
	var time:Float;
	var pausedTime:Float;
	var now:Float;
	var elapsed:Float;
	var fps:Float;
	var fpsMin:Float;
	var fpsMax:Float;
	var msMin:Float;
	var msMax:Float;
	var frames:Int;
	var pauseDuration:Float;
	var timeToCall:Float;
	var lastTime:Float;
	function update(time:Float):Void;
	function totalElapsedSeconds():Float;
	function elapsedSince(since:Float):Float;
	function elapsedSecondsSince(since:Float):Float;
	function reset():Void;
}