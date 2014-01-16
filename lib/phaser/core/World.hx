package phaser.core;
import phaser.geom.Point;
import phaser.geom.Rectangle;

@:native("Phaser.World")
@:publicFields
extern class World {
	function new(game:Game);
	var scale:Point;
	var bounds:Rectangle;
	var camera:Camera;
	var currentRenderOrderID:Int;
	function update():Void;
	function postUpdate():Void;
	function setBounds(x:Float, y:Float, width:Float, heihfht:Float):Void;
	function destroy():Void;
	var width(default, default):Float;
	var height(default, default):Float;
	var centerX(default, null):Float;
	var centerY(default, null):Float;
	var randomX(default, null):Float;
	var randomY(default, null):Float;
	var visible(default, default):Bool;
}