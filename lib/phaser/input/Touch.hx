package phaser.input;
import js.html.TouchEvent;
import phaser.core.Game;

@:native("Phaser.Touch")
@:publicFields
extern class Touch {
	function new(game:Game);
	var game:Game;
	var callbackContext:Dynamic;
	var disabled:Bool;
	var touchStartCallback:TouchEvent->Void;
	var touchMoveCallback:TouchEvent->Void;
	var touchEndCallback:TouchEvent->Void;
	var touchEnterCallback:TouchEvent->Void;
	var touchLeaveCallback:TouchEvent->Void;
	var touchCancelCallback:TouchEvent->Void;
	var preventDefault:Bool;
	var event:TouchEvent;
	function start():Void;
	function consumeDocumentTouches():Void;
	function onTouchStart(event:TouchEvent):Void;
	function onTouchCancel(event:TouchEvent):Void;
	function onTouchEnter(event:TouchEvent):Void;
	function onTouchLeave(event:TouchEvent):Void;
	function onTouchMove(event:TouchEvent):Void;
	function onTouchEnd(event:TouchEvent):Void;
	function stop():Void;
}