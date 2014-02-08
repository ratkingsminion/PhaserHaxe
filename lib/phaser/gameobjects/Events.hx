package phaser.gameobjects;
import phaser.core.Signal;

@:native("Phaser.Events")
@:publicFields
extern class Events {
	function new(sprite:Sprite);
	var parent:Sprite;
	var onAddedToGroup:Signal;
	var onRemovedFromGroup:Signal;
	var onKilled:Signal;
	var onRevived:Signal;
	var onOutOfBounds:Signal;
	var onInputOver:Dynamic;
	var onInputOut:Dynamic;
	var onInputDown:Dynamic;
	var onInputUp:Dynamic;
	var onDragStart:Dynamic;
	var onDragStop:Dynamic;
	var onAnimationStart:Dynamic;
	var onAnimationComplete:Dynamic;
	var onAnimationLoop:Dynamic;
	var onBeginContact:Dynamic;
	var onEndContact:Dynamic;
	function destroy():Void;
}