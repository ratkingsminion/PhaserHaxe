package phaser.input;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.GamepadButton")
@:publicFields
extern class GamepadButton {
	function new(game:Game, buttoncode:Int);
	var game:Game;
	var isDown:Bool;
	var isUp:Bool;
	var timeDown:Int;
	var duration:Int;
	var timeUp:Int;
	var repeats:Int;
	var value:Int;
	var buttonCode:Int;
	var onDown:Signal;
	var onUp:Signal;
	var onFloat:Signal;
	function justPressed(?duration:Int):Bool;
	function justReleased(?duration:Int):Bool;
	
	private function processButtonDown(value:Dynamic):Void;
	private function processButtonUp(value:Dynamic):Void;
	private function processButtonFloat(value:Dynamic):Void;
}