package phaser.core;
import js.html.CanvasElement;
import js.html.Event;
import phaser.geom.Point;
import phaser.system.StageScaleMode;

@:native("Phaser.Stage")
@:publicFields
extern class Stage {
	function new(game:Game, width:Int, height:Int);
	var game:Game;
	var offset:Point;
	var canvas:CanvasElement;
	var scaleMode:Int;
	var scale:StageScaleMode;
	var aspectRatio:Float;
	/**
	 * can be Float or Bool (false)
	 */
	var checkOffsetInterval:Dynamic;
	function boot():Void;
	function update():Void;
	function visibilityChange():Event;
	var backgroundColor(default, default):Dynamic;
	var disableVisibilityChange:Bool;
}