package phaser.gameobjects;
import phaser.core.Game;
import phaser.geom.Point;

@:native("Phaser.RenderTexture")
@:publicFields
extern class RenderTexture { // TODO extends PIXI.RenderTexture
	function new(game:Game, key:String, width:Float, height:Float);
	var game:Game;
	var name:String;
	var width:Float;
	var height:Float;
	var indetityMatrix:Dynamic; // sic(!) - PIXI.mat3
	var frame:Dynamic; // PIXI.Rectangle
	var type:Int;
	function render(displayObject:Dynamic, ?position:Point, ?clear:Bool, ?renderHidden:Bool):Void;
	function renderXY(displayObject:Dynamic, x:Float, y:Float, ?clear:Bool, ?renderHidden:Bool):Void;
	function resize(width:Float, height:Float):Void;
	
	private var _tempPoint: { x:Float, y:Float };
	private function initWebGL():Void;
	private function initCanvas():Void;
	private function renderWebGL(displayObject:Dynamic, position:Point, ?clear:Bool, ?renderHidden:Bool):Void;
	private function renderCanvas(displayObject:Dynamic, position:Point, ?clear:Bool, ?renderHidden:Bool):Void;
}