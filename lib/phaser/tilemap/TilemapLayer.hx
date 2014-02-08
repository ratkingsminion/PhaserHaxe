package phaser.tilemap;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import phaser.animation.Frame;
import phaser.core.Game;
import phaser.gameobjects.Sprite;
import phaser.geom.Point;

@:native("Phaser.TilemapLayer")
@:publicFields
extern class TilemapLayer extends Sprite {
	function new(game:Game, tilemap:Tilemap, index:Int, width:Int, height:Int);
	var map:Tilemap;
	var index:Int;
	var layer:Dynamic;
	var canvas:CanvasElement;
	var context:CanvasRenderingContext2D;
	var baseTexture:Dynamic; // PIXI.BaseTexture
	var texture:Dynamic; // PIXI.Texture
	var textureFrame:Frame;
	var tileColor:String;
	var debugAlpha:Float;
	var debugColor:String;
	var debugFill:Bool;
	var debugFillColor:String;
	var debugCallbackColor:String;
	var scrollFactorX:Float;
	var scrollFactorY:Float;
	var dirty:Bool;
	function resizeWorld():Void;
	function getTileX(x:Float):Tile;
	function getTileY(x:Float):Tile;
	function getTileXY(x:Float, y:Float, point: { x:Float, y:Float } ): { x:Float, y:Float };
	function getTiles(x:Int, y:Int, width:Int, height:Int, ?collides:Bool):Array<{ x:Float, y:Float, right:Float, bottom:Float, tile:Tile, layer:Dynamic }>;
	function updateMax():Void;
	function render():Void;
	function renderDebug():Void;
	var scrollX(default, default):Float;
	var scrollY(default, default):Float;
	var collisionWidth(default, default):Float;
	var collisionHeight(default, default):Float;
	
	private var _cw:Int;
	private var _ch:Int;
	private var _ga:Int;
	private var _dx:Int;
	private var _dy:Int;
	private var _dw:Int;
	private var _dh:Int;
	private var _tx:Int;
	private var _ty:Int;
	private var _tw:Int;
	private var _th:Int;
	private var _tl:Int;
	private var _maxX:Int;
	private var _maxY:Int;
	private var _startX:Int;
	private var _startY:Int;
	private var _results:Dynamic;
	private var _x:Float;
	private var _y:Float;
	private var _prevX:Float;
	private var _prevY:Float;
	private function _fixX(x:Float):Float;
	private function _unfixX(x:Float):Float;
	private function _fixY(x:Float):Float;
	private function _unfixY(x:Float):Float;
}