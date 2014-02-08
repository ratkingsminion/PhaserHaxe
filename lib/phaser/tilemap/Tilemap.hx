package phaser.tilemap;
import phaser.core.Game;
import phaser.core.Group;

@:native("Phaser.Tilemap")
@:publicFields
extern class Tilemap {
	function new(game:Game, key:String);
	var game:Game;
	var key:String;
	var width:Dynamic;
    var height:Dynamic;
    var tileWidth:Dynamic;
    var tileHeight:Dynamic;
    var orientation:Dynamic;
    var version:Dynamic;
    var properties:Dynamic;
    var widthInPixels:Dynamic;
    var heightInPixels:Dynamic;
	var layers:Array<{ name: String, width:Int, height:Int, alpha:Float, visible:Bool, tileMargin:Int, tileSpacing:Int, format:Int, data:Dynamic, indexes:Dynamic, dirty:Bool }>;
	var tilesets:Dynamic;
	var tiles:Dynamic;
	var objects:Dynamic;
	var images:Dynamic;
	var currentLayer:Int;
	var debugMap:Dynamic;
	static var CSV(default, null):Int;
	static var TILED_JSON(default, null):Int;
	function create(name:String, width:Int, height:Int):Void;
	function addTilesetImage(tileset:String, ?key:String):Void;
	function createFromTiles(layer:Int, tileIndex:Int, key:String, frame:Dynamic, group:Group):Void;
	/**
	 * @param	frame can be String or Int
	 */
	function createFromObjects(name:String, gid:Int, key:String, frame:Dynamic, ?exists:Bool, ?autoCull:Bool, ?group:Group):Void;
	/**
	 * @param 	layer can be String or Int
	 */
	function createLayer(layer:Dynamic, ?width:Int, ?height:Int, ?group:Group):TilemapLayer;
	function getIndex(location:Dynamic, name:String):Int;
	function getLayerIndex(name:String):Int;
	function getTilesetIndex(name:String):Int;
	function getImageIndex(name:String):Int;
	function getObjectIndex(name:String):Int;
	/**
	 * @param	indexes can be Int or Array<Int>
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function setTileIndexCallback(indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic, layer:Dynamic):Void;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function setTileLocationCallback(x:Int, y:Int, width:Int, height:Int, callback:Dynamic, callbackContext:Dynamic, layer:Dynamic):Void;
	/**
	 * @param	indexes can be Int or Array<Int>
	 * @param	?layer can be Int, String or TilemapLayer
	 */
	function setCollision(indexes:Dynamic, ?collides:Bool, ?layer:Dynamic):Void;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function setCollisionBetween(start:Int, stop:Int, ?collides:Bool, ?layer:Dynamic):Void;
	/**
	 * @param	?layer can be Int, String or TilemapLayer
	 */
	function setCollisionByExclusion(indexes:Array<Int>, ?collides:Bool, ?layer:Dynamic):Void;
	function getTileAbove(layer:Int, x:Int, y:Int):Tile;
	function getTileBelow(layer:Int, x:Int, y:Int):Tile;
	function getTileLeft(layer:Int, x:Int, y:Int):Tile;
	function getTileRight(layer:Int, x:Int, y:Int):Tile;
	/**
	 * @param	?layer can be Int, String or TilemapLayer
	 */
	function setLayer(layer:Dynamic):Tile;
	/**
	 * @param	tile can be Int or Tile
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function putTile(tile:Dynamic, x:Int, y:Int, layer:Dynamic):Void;
	/**
	 * @param	tile can be Int or Tile
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function putTileWorldXY(tile:Dynamic, x:Int, y:Int, tileWidth:Int, tileHeight:Int, layer:Dynamic):Void;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function getTile(x:Int, y:Int, layer:Dynamic):Tile;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function getTileWorldXY(x:Int, y:Int, tileWidth:Int, tileHeight:Int, layer:Dynamic):Tile;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function copy(x:Int, y:Int, width:Int, height:Int, layer:Dynamic):Array<{ x:Int, y:Int, width:Int, height:Int, layer:Int }>;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function paste(x:Int, y:Int, tileblock:Array<{ x:Int, y:Int, width:Int, height:Int, layer:Int }>, layer:Dynamic):Void;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function swap(tileA:Int, tileB:Int, x:Int, y:Int, width:Int, height:Int, layer:Dynamic):Void;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function forEach(callback:Dynamic, context:Dynamic, x:Int, y:Int, width:Int, height:Int, layer:Dynamic):Void;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function replace(source:Int, dest:Int, x:Int, y:Int, width:Int, height:Int, layer:Dynamic):Void;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function random(x:Int, y:Int, width:Int, height:Int, layer:Dynamic):Void;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function shuffle(x:Int, y:Int, width:Int, height:Int, layer:Dynamic):Void;
	/**
	 * @param	layer can be Int, String or TilemapLayer
	 */
	function fill(index:Int, x:Int, y:Int, width:Int, height:Int, layer:Dynamic):Void;
	function removeAllLayers():Void;
	function dump():Void;
	function destroy():Void;
	
	private var _results:Dynamic;
	private var _tempA:Float;
	private var _tempB:Float;
	private function setCollisionByIndex(index:Int, ?collides:Bool, ?layer:Int, ?recalculate:Bool):Void;
	private function getLayer(layer:Dynamic):Int;
	private function calculateFaces(layer:Int):Void;
	private function swapHandler(value:Int, index:Int):Void;
}