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
	var display:Dynamic; // PIXI.Stage
	var scaleMode:Int;
	var fullScreenScaleMode:Int;
	var scale:StageScaleMode;
	var aspectRatio:Float;
	var disableVisibilityChange:Bool;
	/**
	 * can be Float or Bool (false)
	 */
	var checkOffsetInterval:Dynamic;
	function boot():Void;
	function update():Void;
	function visibilityChange(event:Event):Void;
	var backgroundColor(default, default):Dynamic;
	
	private var _backgroundColor:String;
	private var _stage:Dynamic; // PIXI.Stage
	private var _nextOffsetCheck:Int;
	private function parseConfig(config:Dynamic):Void;
}