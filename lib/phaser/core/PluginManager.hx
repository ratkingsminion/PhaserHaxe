package phaser.core;

@:native("Phaser.PluginManager")
@:publicFields
extern class PluginManager {
	function new(game:Game, parent:Dynamic);
	var game:Game;
	var plugins:Array<Plugin>;
	function add(plugin:Plugin):Plugin;
	function remove(plugin:Plugin):Void;
	function removeAll():Void;
	function preUpdate():Void;
	function update():Void;
	function postUpdate():Void;
	function render():Void;
	function postRender():Void;
	function destroy():Void;
	
	private var _parent:Dynamic;
	private var _pluginsLength:Int;
}