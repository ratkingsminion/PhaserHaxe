package phaser.tilemap;
import phaser.core.Game;

@:native("Phaser.TilemapParser")
@:publicFields
extern class TilemapParser {
	static function tileset(game:Game, key:String, tileWidth:Int, tileHeight:Int, ?tileMargin:Int, ?tileSpacing:Int, ?rows:Int, ?columns:Int, ?total:Int):Tileset;
	static function parse(game:Game, key:String): { layers:Dynamic, objects:Dynamic, images:Dynamic, tilesets:Dynamic };
	static function parseCSV(data:Dynamic): { name:String, width:Int, height:Int, alpha:Float, visible:Bool, indexes:Dynamic, tileMargin:Int, tileSpacing:Int, data:Dynamic };
	static function parseTiledJSON(json:Dynamic):Dynamic;
}