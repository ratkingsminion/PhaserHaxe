package phaser.animation;
import phaser.core.Game;
import phaser.gameobjects.Sprite;

@:native("Phaser.Animation")
@:publicFields
extern class Animation {
	/**
	 * @param	frames can be Array<Int> or Array<String>
	 */
	function new(game:Game, parent:Sprite, name:String, frameData:FrameData, frames:Dynamic, delay:Int, looped:Bool);
	var game:Game;
	var name:String;
	var delay:Float;
	var looped:Bool;
	var killOnComplete:Bool;
	var isFinished:Bool;
	var isPlaying:Bool;
	var isPaused:Bool;
	var currentFrame:Frame;
	function play(?frameRate:Float, ?loop:Bool, ?killOnComplete:Bool):Animation;
	function restart():Void;
	function stop(?resetFrame:Bool):Void;
	function update():Bool;
	function destroy():Void;
	function onComplete():Void;
	var paused(default, default):Bool;
	var frameTotal(default, null):Int;
	var frame(default, default):Int;
	static function generateFrameNames(prefix:String, start:Int, stop:Int, ?suffix:String, ?zeroPad:Int):Array<String>;
	
	private var _parent:Sprite;
	private var _frameData:FrameData;
	private var _frames:Dynamic;
	private var _pauseStartTime:Int;
	private var _frameIndex:Int;
	private var _frameDiff:Int;
	private var _frameSkip:Int;
}