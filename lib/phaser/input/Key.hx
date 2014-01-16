package phaser.input;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.Key")
@:publicFields
extern class Key {
	function new(game:Game, keycode:Int);
	var game:Game;
	var isDown:Bool;
	var isUp:Bool;
	var altKey:Bool;
	var ctrlKey:Bool;
	var shiftKey:Bool;
	var timeDown:Float;
	var duration:Float;
	var timeUp:Float;
	var repeats:Int;
	var keyCode:Int;
	var onDown:Signal;
	var onUp:Signal;
	function justPressed(duration:Float):Bool;
	function justReleased(duration:Float):Bool;
}