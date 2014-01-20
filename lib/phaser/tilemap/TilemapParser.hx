package phaser.tilemap;
import phaser.core.Game;

@:native("Phaser.TilemapParser")
@:publicFields
extern class TilemapParser {
	static function tileset(game:Game, key:String, tileWidth:Int, tileHeight:Int, tileMax:Int, tileSpacing:Int):Tileset;
	static function parse(game:Game, data:Dynamic, format:String):Tileset;
	static function parseCSV(data:Dynamic):Dynamic;
	static function parseCSV(json:Dynamic):Dynamic;
	
}