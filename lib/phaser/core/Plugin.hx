package phaser.core;

@:native("Phaser.Plugin")
@:publicFields
extern class Plugin {
	function new(game:Game, parent:Dynamic);
	var game:Game;
	var parent:Dynamic;
	var active:Bool;
	var visible:Bool;
	var hasPreUpdate:Bool;
	var hasUpdate:Bool;
	var hasPostUpdate:Bool;
	var hasRender:Bool;
	var hasPostRender:Bool;
	function preUpdate():Void;
	function update():Void;
	function render():Void;
	function postRender():Void;
	function destroy():Void;
}