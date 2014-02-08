package phaser.tween;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.Tween")
@:publicFields
extern class Tween {
	function new(object:Dynamic, game:Game);
	var game:Game;
	var pendingDelete:Bool;
	var onStart:Signal;
	var onLoop:Signal;
	var onComplete:Signal;
	var isRunning:Bool;
	function to(properties:Dynamic, ?duration:Int, ?ease:Float->Float, ?autoStart:Bool, ?delay:Int, ?repeat:Int, ?yoyo:Bool):Tween;
	function start():Tween;
	function stop():Tween;
	function delay(amount:Float):Tween;
	function repeat(times:Int):Tween;
	function yoyo(yoyo:Bool):Tween;
	function easing(easing:Float->Float):Tween;
	function interpolation(interpolation:Float->Float->Float):Tween;
	function chain(?tween1:Tween, ?tween2:Tween, ?tween3:Tween, ?tween4:Tween, ?tween5:Tween, ?tween6:Tween, ?tween7:Tween, ?tween8:Tween):Tween; // want more parameters? add them!
	function loop():Tween;
	function onUpdateCallback(callback:Dynamic):Tween;
	function pause():Void;
	function resume():Void;
	function update(time:Float):Bool;
	
	private var _object:Dynamic;
	private var _manager:TweenManager;
	private var _valuesStart:Dynamic;
	private var _valuesEnd:Dynamic;
	private var _valuesStartRepeat:Dynamic;
	private var _duration:Int;
	private var _repeat:Int;
	private var _yoyo:Bool;
	private var _reversed:Bool;
	private var _delayTime:Float;
	private var _startTime:Float;
	private var _easingFunction:Float->Float;
	private var _interpolationFunction:Float->Float->Float;
	private var _chainedTweens:Array<Tween>;
	private var _onStartCallbackFired:Bool;
	private var _onUpdateCallback:Dynamic;
	private var _onUpdateCallbackContext:Dynamic;
	private var _pausedTime:Float;
}