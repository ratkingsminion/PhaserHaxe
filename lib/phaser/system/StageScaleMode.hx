package phaser.system;
import js.html.DeviceOrientationEvent;
import phaser.core.Game;
import phaser.core.Signal;
import phaser.geom.Point;

@:native("Phaser.StageScaleMode")
@:publicFields
extern class StageScaleMode {

	function new(game:Game, width:Float, height:Float);
	var game:Game;
	var width:Float;
	var height:Float;
	var minWidth:Float;
	var maxWidth:Float;
	var minHeight:Float;
	var maxHeight:Float;
	var forceLandscape:Bool;
	var forcePortrait:Bool;
	var incorrectOrientation:Bool;
	var pageAlignHorizontally:Bool;
	var pageAlignVertically:Bool;
	var maxIterations:Int;
	var orientationSprite:Dynamic; // PIXI.Sprite
	var enterLandscape:Signal;
	var enterPortrait:Signal;
	var enterIncorrectOrientation:Signal;
	var leaveIncorrectOrientation:Signal;
	var hasResized:Signal;
	var orientation:Int;
	var scaleFactor(default, null):Point;
	var scaleFactorInversed(default, null):Point;
	var margin(default, null):Point;
	var aspectRatio:Float;
	var event:Dynamic;
	static var EXACT_FIT(default, null):Int;
	static var NO_SCALE(default, null):Int;
	static var SHOW_ALL(default, null):Int;
	function startFullScreen(?antialias:Bool):Void;
	function stopFullScreen():Void;
	function forceOrientation(forceLandscape:Bool, ?forcePortrait:Bool, ?orientationImage:String):Void;
	function checkOrientationState():Void;
	function checkOrientation(event:DeviceOrientationEvent):Void;
	function checkResize(event:DeviceOrientationEvent):Void;
	function refresh():Void;
	function setScreenSize(?force:Bool):Void;
	function setSize():Void;
	function setMaximum():Void;
	function setShowAll():Void;
	function setExactFit():Void;
	var isFullScreen(default, null):Bool;
	var isPortrait(default, null):Bool;
	var isLandscape(default, null):Bool;
}