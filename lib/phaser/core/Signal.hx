package phaser.core;

@:native("Phaser.Signal")
@:publicFields
extern class Signal {
	function new();
	var memorize:Bool;
	var active:Bool;
	function validateListener(listener:Dynamic, fnName:String):Void;
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
	
	private var _bindings:Array<SignalBinding>;
	private var _prevParams:Dynamic;
	private var _shouldPropagate:Bool;
	private function _registerListener(listener:Dynamic, isOnce:Bool, listenerContext:Dynamic, ?priority:Int):Void;
	private function _addBinding(binding:SignalBinding):Void;
	private function _indexOfListener(listener:Dynamic, context:Dynamic):Void;
}