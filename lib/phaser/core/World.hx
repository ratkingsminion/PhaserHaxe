package phaser.core;
import phaser.geom.Rectangle;

@:native("Phaser.World")
@:publicFields
extern class World extends Group {
	function new(game:Game);
	var bounds:Rectangle;
	var camera:Camera;
	var currentRenderOrderID:Int;
	function preUpdate():Void;
	function update():Void;
	function postUpdate():Void;
	function setBounds(x:Float, y:Float, width:Float, height:Float):Void;
	var width(default, default):Float;
	var height(default, default):Float;
	var centerX(default, null):Float;
	var centerY(default, null):Float;
	var randomX(default, null):Float;
	var randomY(default, null):Float;
	
	private function boot():Void;
}