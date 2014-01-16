package phaser.core;

@:native("Phaser.Signal")
@:publicFields
extern class Signal {
	function new();
	var memorize:Bool;
	var active:Bool;
	function has(listener:Dynamic, context:Dynamic):Bool;
	function add(listener:Dynamic, listenerContext:Dynamic, ?priority:Int):SignalBinding;
	function addOnce(listener:Dynamic, listenerContext:Dynamic, ?priority:Int):SignalBinding;
	function remove(listener:Dynamic, listenerContext:Dynamic):Dynamic;
	function removeAll():Void;
	function getNumListeners():Int;
	function halt():Void;
	function dispatch(?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic):Void; // if you want more parameters, just add them.
	function forget():Void;
	function dispose():Void;
	function toString():String;
}