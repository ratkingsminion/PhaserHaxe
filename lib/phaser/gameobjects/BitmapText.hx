package phaser.gameobjects;
import phaser.core.Game;
import phaser.core.Group;
import phaser.geom.Point;

@:native("Phaser.BitmapText")
@:publicFields
extern class BitmapText { // TODO extends PIXI.BitmapText
	function new(game:Game, ?x:Float, ?y:Float, ?text:String, ?style:Dynamic);
	var game:Game;
	var exists:Bool;
	var alive:Bool;
	var group:Group;
	var name:String;
	var type(default, null):Int;
	var position: { x:Float, y:Float };
	var anchor:Point;
	var scale:Point;
	var renderable:Bool;
	function update():Void;
	function destroy():Void;
	var angle(default, default):Float;
	var x(default, default):Float;
	var y(default, default):Float;
	
	private var _cache:Dynamic;
}