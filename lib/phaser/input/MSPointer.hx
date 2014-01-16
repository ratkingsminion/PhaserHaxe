package phaser.input;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.MSPointer")
@:publicFields
extern class MSPointer {
	function new(game:Game);
	var game:Game;
	var callbackContext:Dynamic;
	var disabled:Bool;
	function start():Void;
	function onPointerDown(event:Dynamic):Void; // event:PointerEvent
	function onPointerMove(event:Dynamic):Void; // event:PointerEvent
	function onPointerUp(event:Dynamic):Void; // event:PointerEvent
	function stop():Void;
}