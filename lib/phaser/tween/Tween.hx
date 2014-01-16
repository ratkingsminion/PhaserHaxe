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
	function chain(?tween1:Tween, ?tween2:Tween, ?tween3:Tween, ?tween4:Tween, ?tween5:Tween, ?tween6:Tween, ?tween7:Tween, ?tween8:Tween):Tween; // want more? add them!
	function loop():Tween;
	function onStartCallback(callback:Dynamic):Tween;
	function onUpdateCallback(callback:Dynamic):Tween;
	function onCompleteCallback(callback:Dynamic):Tween;
	function pause():Void;
	function resume():Void;
	function update(time:Float):Bool; // does not needed to be called
}