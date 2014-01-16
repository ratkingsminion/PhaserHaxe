package phaser.time;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.Timer")
@:publicFields
extern class Timer {
	function new(game:Game);
	var game:Game;
	var running:Bool;
	var events:Dynamic;
	var onEvent:Signal;
	function add(delay:Float):Void;
	function start():Void;
	function stop():Void;
	function update():Void;
	function seconds():Float;
}