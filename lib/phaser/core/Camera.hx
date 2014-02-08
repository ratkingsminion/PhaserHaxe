package phaser.core;
import phaser.gameobjects.Sprite;
import phaser.geom.Rectangle;

@:native("Phaser.Camera")
@:publicFields
extern class Camera {
	function new(game:Game, id:Int, x:Float, y:Float, width:Float, height:Float);
	var game:Game;
	var world:World;
	var id:Int;
	var view:Rectangle;
	var screenView:Rectangle;
	var bounds:Rectangle;
	var deadzone:Rectangle;
	var visible:Bool;
	var atLimit: { x:Bool, y:Bool };
	var target:Sprite;
	var displayObject:Dynamic; // PIXI.DisplayObject
	static var FOLLOW_LOCKON(default, null):Int;
	static var FOLLOW_PLATFORMER(default, null):Int;
	static var FOLLOW_TOPDOWN(default, null):Int;
	static var FOLLOW_TOPDOWN_TIGHT(default, null):Int;
	function follow(target:Sprite, ?style:Int):Void;
	function focusOn(displayObject: { x:Float, y:Float } ):Void;
	function focusOnXY(x:Float, y:Float):Void;
	function update():Void;
	function setBoundsToWorld():Void;
	function checkBounds():Void;
	function setPosition(x:Float, y:Float):Void;
	function setSize(width:Float, height:Float):Void;
	var x(default, default):Float;
	var y(default, default):Float;
	var width(default, default):Float;
	var height(default, default):Float;
	
	private var _edge:Int;
	private function updateTarget():Void;
}