package phaser.core;

@:native("Phaser.SignalBinding")
@:publicFields
extern class SignalBinding {
	function new(signal:Signal, listener:Dynamic, isOnce:Bool, listenerContext:Dynamic, ?priority:Int);
	var context:Dynamic;
	var active:Bool;
	var params:Dynamic;
	function execute(paramsArr:Dynamic):Dynamic;
	function detach():Void;
	function isBound():Bool;
	function isOnce():Bool;
	function getListener():Dynamic;
	function getSignal():Dynamic;
	function toString():String;
	
	private var _listener:Dynamic;
	private var _isOnce:Bool;
	private var _signal:Signal;
	private var _priority:Int;
	private function _destroy():Void;
}