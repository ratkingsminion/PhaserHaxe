package phaser.tilemap;
import js.html.Image;

@:native("Phaser.Tileset")
@:publicFields
extern class Tileset {
	function new(name:String, firstgid:Int, width:Int, height:Int, margin:Int, spacing:Int, properties:Dynamic);
	var name:String;
	var firstgid:Int;
	var tileWidth:Int;
	var tileHeight:Int;
	var tileMargin:Int;
	var tileSpacing:Int;
	var properties:Dynamic;
	var image:Dynamic;
	var rows:Int;
	var columns:Int;
	var total:Int;
	function setSpacing(margin:Int, spacing:Int):Void;
}