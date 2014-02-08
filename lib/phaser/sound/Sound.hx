package phaser.sound;
import js.html.audio.AudioContext;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.Sound")
@:publicFields
extern class Sound {
	function new(game:Game, key:String, ?volume:Float, ?loop:Bool, ?connect:Bool);
	var game:Game;
	var name:String;
	var key:String;
	var loop:Bool;
	var markers:Dynamic;
	var context:AudioContext;
	var autoplay:Bool;
	var totalDuration:Int;
	var startTime:Int;
	var currentTime:Int;
	var stopTime:Int;
	var paused:Bool;
	var pausedPosition:Int;
	var pausedTime:Int;
	var isPlaying:Bool;
	var currentMarker:String;
	var pendingPlayback:Bool;
	/**
	 * is override without _ in original Phaser (it's a keyword in Haxe)
	 */
	var override_(get, set):Bool;
	@:extern private inline function get_override_():Bool return untyped this["override"];
	@:extern private inline function set_override_(value:Bool):Bool return untyped this["override"] = value;
	var usingWebAudio:Bool;
	var usingAudioTag:Bool;
	var externalNode:Dynamic;
	var gainNode:Dynamic;
	var onDecoded:Signal;
	var onPlay:Signal;
	var onPause:Signal;
	var onResume:Signal;
	var onLoop:Signal;
	var onStop:Signal;
	var onMute:Signal;
	var onMarkerComplete:Signal;
	function addMarker(name:String, start:Float, duration:Float, ?volume:Float, ?loop:Bool):Void;
	function removeMarker(name:String):Void;
	function play(?marker:String, ?position:Int, ?volume:Float, ?loop:Bool, ?forceRestart:Bool):Sound;
	function restart(?marker:String, ?position:Int, ?volume:Float, ?loop:Bool):Void;
	function pause():Void;
	function resume():Void;
	function stop():Void;
	var isDecoding(default, null):Bool;
	var isDecoded(default, null):Bool;
	var mute(default, default):Bool;
	var volume(default, default):Float;
	
	private var _volume:Float;
	private var _buffer:Dynamic;
	private var _muted:Bool;
	private var _sound:Dynamic;
	private function soundHasUnlocked(key:String):Void;
	private function update():Void;
}