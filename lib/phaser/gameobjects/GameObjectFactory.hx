package phaser.gameobjects;
import phaser.core.Filter;
import phaser.core.Game;
import phaser.core.Group;
import phaser.core.World;
import phaser.input.Pointer;
import phaser.particles.arcade.Emitter;
import phaser.sound.Sound;
import phaser.tilemap.Tilemap;
import phaser.tilemap.TilemapLayer;
import phaser.tilemap.Tileset;
import phaser.tween.Tween;

@:native("Phaser.GameObjectFactory")
@:publicFields
extern class GameObjectFactory {
	function new(game:Game);
	var game:Game;
	var world:World;
	function existing(object:Dynamic):Dynamic;
	/**
	 * @param	key can be String, RenderTexture or PIXI.Texture
	 * @param	frame can be String or Int
	 */
	function sprite(x:Float, y:Float, key:Dynamic, ?frame:Dynamic, ?group:Group):Sprite;
	/**
	 * @param	key can be String or RenderTexture
	 * @param	frame can be String or Int
	 */
	function child(group:Group, x:Float, y:Float, key:Dynamic, ?frame:Dynamic):Sprite;
	function tween(object:Dynamic):Tween;
	function group(?parent:Dynamic, ?name:String):Group;
	function audio(key:String, ?volume:Float, ?loop:Bool, ?connect:Bool):Sound;
	function sound(key:String, ?volume:Float, ?loop:Bool, ?connect:Bool):Sound;
	/**
	 * @param	key can be String, RenderTexture or PIXI.Texture
	 */
	function tileSprite(x:Float, y:Float, width:Float, height:Float, key:Dynamic, ?group:Group):TileSprite;
	function text(x:Float, y:Float, text:String, style:Dynamic, ?group:Group):Text;
	/**
	 * @param	overFrame can be String or Int
	 * @param	outFrame can be String or Int
	 * @param	downFrame can be String or Int
	 * @param	upFrame can be String or Int
	 */
	function button(?x:Float, ?y:Float, ?key:String, ?callback:Pointer->Void, ?callbackContext:Dynamic, ?overFrame:Dynamic, ?outFrame:Dynamic, ?downFrame:Dynamic, ?upFrame:Dynamic, ?group:Group):Button;
	function graphics(x:Float, y:Float, ?group:Group):Graphics;
	function emitter(?x:Float, ?y:Float, ?maxParticles:Int):Emitter;
	function bitmapText(x:Float, y:Float, text:String, style:Dynamic, ?group:Group):BitmapText;
	/**
	 * @param	tilesets can be Object or String
	 */
	function tilemap(key:String, tilesets:Dynamic):Tilemap;
	function renderTexture(key:String, width:Float, height:Float):RenderTexture;
	function bitmapData(?width:Int, ?height:Int):BitmapData;
	function filter(filter:String, ?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic, ?param7:Dynamic, ?param8:Dynamic):Filter;
}