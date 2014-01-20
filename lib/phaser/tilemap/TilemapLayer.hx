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
	@:overload(function (game:Game, x:Int, y:Int, renderWidth:Int, renderHeight:Int, tileset:Tileset, tilemap:Tilemap, layer:Int):Void { } )
	/**
	 * @param	tileset can be phaser.tilemap.Tileset or String
	 */
	function new(game:Game, x:Int, y:Int, renderWidth:Int, renderHeight:Int, tileset:String, tilemap:Tilemap, layer:Int);
	var canvas:CanvasElement;
	var context:CanvasRenderingContext2D;
	var baseTexture:Dynamic; // PIXI.BaseTexture
	var texture:Dynamic; // PIXI.Texture
	var textureFrame:Frame;
	var tileset:Tileset;
	var tileWidth:Int;
	var tileHeight:Int;
	var tileMargin:Int;
	var tileSpacing:Int;
	var widthInPixels:Int;
	var heightInPixels:Int;
	var renderWidth:Int;
	var renderHeight:Int;
	var scrollFactorX:Float;
	var scrollFactorY:Float;
	var tilemap:Tilemap;
	var layer:Int;
	var index:Int;
	var dirty:Bool;
	function update():Void;
	function resizeWorld():Void;
	@:overload(function (tileset:Tileset):Void { } )
	function updateTileset(tileset:String):Void;
	function updateMapData(tilemap:Tilemap, ?layer:Int):Void;
	function getTileX(x:Float):Tile;
	function getTileY(x:Float):Tile;
	function getTileXY(x:Float, y:Float, point:Point):Point;
	function getTiles(x:Int, y:Int, width:Int, height:Int, ?collides:Bool):Array<{ x:Float, right:Float, y:Float, bottom:Float, width:Float, height:Float, tx:Float, ty:Float, tile:Tile }>;
	function updateMax():Void;
	function render():Void;
	function deltaAbsX():Float;
	function deltaAbsY():Float;
	function deltaX():Float;
	function deltaY():Float;
	var scrollX(default, default):Float;
	var scrollY(default, default):Float;
}