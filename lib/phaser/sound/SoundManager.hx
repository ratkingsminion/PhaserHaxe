package phaser.sound;
import js.html.audio.AudioContext;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.SoundManager")
@:publicFields
extern class SoundManager {
	function new(game:Game);
	var game:Game;
	var onSoundDecode:Signal;
	var context:AudioContext;
	var usingWebAudio(default, null):Bool;
	var usingAudioTag(default, null):Bool;
	var noAudio:Bool;
	var connectToMaster:Bool;
	var touchLocked:Bool;
	var channels:Int;
	function unlock():Void;
	function stopAll():Void;
	function pauseAll():Void;
	function resumeAll():Void;
	function decode(key:String, ?sound:Sound):Void;
	function update():Void;
	function add(key:String, ?volume:Float, ?loop:Bool, ?connect:Bool):Sound;
	function play(key:String, ?volume:Float, ?loop:Bool, ?destroyOnComplete:Bool):Sound;
	var mute(default, default):Bool;
	var volume(default, default):Float;
}