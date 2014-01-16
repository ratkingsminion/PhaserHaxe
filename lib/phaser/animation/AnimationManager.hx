package phaser.animation;
import phaser.core.Game;
import phaser.gameobjects.Sprite;

@:native("Phaser.Animation")
@:publicFields
extern class AnimationManager {
	function new(sprite:Sprite);
	var sprite:Sprite;
	var game:Game;
	var currentFrame:Frame;
	var updateIfVisible:Bool;
	var isLoaded:Bool;
	function loadFrameData(frameData:FrameData):Void;
	function add(name:String, ?frames:Dynamic, ?frameRate:Float, ?loop:Bool, ?useNumericIndex:Bool):Animation;
	function validateFrames(frames:Dynamic, ?useNumericIndex:Bool):Bool;
	function play(name:String, ?frameRate:Float, ?loop:Bool, ?killOnComplete:Bool):Animation;
	function stop(?name:String, ?resetFrame:Bool):Void;
	function getAnimation(name:String):Dynamic; // returns Phaser.Animation|boolean
	function refreshFrame():Void;
	function destroy():Void;
	var frameData(default, null):FrameData;
	var frameTotal(default, null):Int;
	var paused(default, default):Bool;
	var frame(default, default):Int;
	var frameName(default, default):String;
}