package phaser.input;
import js.html.MouseEvent;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.Mouse")
@:publicFields
extern class Mouse {
	function new(game:Game);
	var game:Game;
	var callbackContext:Dynamic;
	var mouseDownCallback:MouseEvent->Void;
	var mouseMoveCallback:MouseEvent->Void;
	var mouseUpCallback:MouseEvent->Void;
	var capture:Bool;
	var button:Int;
	var disabled:Bool;
	var locked:Bool;
	var pointerLock:Signal;
	var event:MouseEvent;
	function start():Void;
	function onMouseDown(event:MouseEvent):Void;
	function onMouseMove(event:MouseEvent):Void;
	function onMouseUp(event:MouseEvent):Void;
	function requestPointerLock():Void;
	function pointerLockChange(event:Dynamic):Void;
	function releasePointerLock():Void;
	function stop():Void;

	static var NO_BUTTON(default, null):Int;
	static var LEFT_BUTTON(default, null):Int;
	static var MIDDLE_BUTTON(default, null):Int;
	static var RIGHT_BUTTON(default, null):Int;
	
	private var _onMouseDown:Dynamic;
	private var _onMouseMove:Dynamic;
	private var _onMouseUp:Dynamic;
}