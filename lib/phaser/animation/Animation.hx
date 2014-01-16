package phaser.animation;
import phaser.core.Game;
import phaser.gameobjects.Sprite;

@:native("Phaser.Animation")
@:publicFields
extern class Animation {
	function new(game:Game, poarent:Sprite, name:String, frameData:FrameData, frames:Dynamic, delay:Float, looped:Bool);
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
	var paused(default, default):Bool;
	var frameTotal(default, null):Int;
	var frame(default, default):Int;
	function generateFrameNames(prefix:String, start:Int, stop:Int, ?suffix:String, ?zeroPad:Int):Array<String>;
	
}