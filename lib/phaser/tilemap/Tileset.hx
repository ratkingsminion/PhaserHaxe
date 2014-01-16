package phaser.tilemap;
import js.html.Image;

@:native("Phaser.Tileset")
@:publicFields
extern class Tileset {
	function new(image:Image, key:String, tileWidth:Int, tileHeight:Int, tileMargin:Int, tileSpacing:Int);
	var key:String;
	var image:Dynamic;
	var tileWidth:Int;
	var tileHeight:Int;
	var tileMargin:Int;
	var tileSpacing:Int;
	var tiles:Array<Tile>;
	function addTile(tile:Tile):Tile;
	function getTile(index:Int):Tile;
	function setSpacing(margin:Int, spacing:Int):Void;
	function canCollide(index:Int):Bool;
	function checkTileIndex(index:Int):Bool;
	function setCollisionRange(start:Int, stop:Int, left:Bool, right:Bool, up:Bool, down:Bool):Bool;
	function setCollision(index:Int, left:Bool, right:Bool, up:Bool, down:Bool):Bool;
	var total(default, null):Int;
}