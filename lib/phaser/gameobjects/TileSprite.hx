package phaser.gameobjects;
import phaser.core.Game;
import phaser.geom.Point;

@:native("Phaser.TileSprite")
@:publicFields
extern class TileSprite extends Sprite {
	function new(game:Game, x:Float, y:Float, ?width:Float, ?height:Float, ?key:Dynamic, ?frame:Dynamic);
	var texture:Dynamic; // PIXI.Texture
	var tileScale:Point;
	var tilePosition:Point;
}