package phaser.tilemap;
import phaser.core.Game;

@:native("Phaser.Tilemap")
@:publicFields
extern class Tilemap {
	function new(game:Game, key:String);
	var game:Game;
	var key:String;
	var layers:Dynamic;
	var currentLayer:Int;
	var debugMap:Dynamic;
	var dirty:Bool;
	static var CSV(default, null):Int;
	static var TILED_JSON(default, null):Int;
	function create(name:String, width:Int, height:Int):Void;
	function calculateIndexes():Void;
	function setLayer(layer:Int):Void;
	function putTile(index:Int, x:Int, y:Int, ?layer:Int):Void;
	function getTile(x:Int, y:Int, ?layer:Int):Int;
	function getTileWorldXY(x:Int, y:Int, tileWidth:Int, tileHeight:Int, ?layer:Int):Int;
	function putTileWorldXY(index:Int, x:Int, y:Int, tileWidth:Int, tileHeight:Int, ?layer:Int):Void;
	function copy(x:Int, y:Int, width:Int, height:Int, ?layer:Int):Array<{ x:Int, y:Int, width:Int, height:Int, layer:Int }>;
	function paste(?x:Int, ?y:Int, ?tileblock:Array<{ x:Int, y:Int, width:Int, height:Int, layer:Int }>, ?layer:Int):Void;
	function swap(tileA:Int, tileB:Int, x:Int, y:Int, width:Int, height:Int, ?layer:Int):Void;
	function forEach(callback:Dynamic, context:Dynamic, x:Int, y:Int, width:Int, height:Int, ?layer:Int):Void;
	function replace(tileA:Int, tileB:Int, x:Int, y:Int, width:Int, height:Int, ?layer:Int):Void;
	function random(x:Int, y:Int, width:Int, height:Int, ?layer:Int):Void;
	function shuffle(x:Int, y:Int, width:Int, height:Int, ?layer:Int):Void;
	function fill(index:Int, x:Int, y:Int, width:Int, height:Int, ?layer:Int):Void;
	function removeAllLayers():Void;
	function dump():Void;
	function destroy():Void;
}