package phaser.core;

@:native("Phaser.StateManager")
@:publicFields
extern class StateManager {
	function new(game:Game, pendingState:Dynamic);
	var game:Game;
	var states:Array<State>;
	var current:String;
	var onInitCallback:Void->Void;
	var onPreloadCallback:Void->Void;
	var onCreateCallback:Void->Void;
	var onUpdateCallback:Void->Void;
	var onRenderCallback:Void->Void;
	var onPreRenderCallback:Void->Void;
	var onLoadUpdateCallback:Void->Void;
	var onLoadRenderCallback:Void->Void;
	var onPausedCallback:Void->Void;
	var onShutDownCallback:Void->Void;
	function boot():Void;
	function add(key:String, state:State, ?autoStart:Bool):State;
	function remove(key:String):Void;
	function start(key:String, ?clearWorld:Bool, ?clearCache:Bool):Void;
	function checkState(key:String):Bool;
	function link(key:String):Void;
	function destroy():Void;
}