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
	/**
	 * @param	frames can be Array<Int> or Array<String>
	 * @param	useNumericIndex must be set to false when frames is Array<String>
	 */
	function add(name:String, ?frames:Dynamic, ?frameRate:Float, ?loop:Bool, ?useNumericIndex:Bool):Animation;
	/**
	 * @param	frames can be Array<Int> or Array<String>
	 * @param	useNumericIndex must be set to false when frames is Array<String>
	 */
	function validateFrames(frames:Dynamic, useNumericIndex:Bool):Bool;
	function play(name:String, ?frameRate:Float, ?loop:Bool, ?killOnComplete:Bool):Animation;
	function stop(?name:String, ?resetFrame:Bool):Void;
	function getAnimation(name:String):Animation;
	function refreshFrame():Void;
	function destroy():Void;
	var frameData(default, null):FrameData;
	var frameTotal(default, null):Int;
	var paused(default, default):Bool;
	var frame(default, default):Int;
	var frameName(default, default):String;
	
	private var _frameData:FrameData;
	private var _anims:Dynamic;
	private var _outputFrames:Dynamic;
	private function loadFrameData(frameData:FrameData):Void;
	private function update():Bool;
}