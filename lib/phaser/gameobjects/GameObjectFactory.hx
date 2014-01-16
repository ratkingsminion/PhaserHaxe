package phaser.gameobjects;
import phaser.core.Filter;
import phaser.core.Game;
import phaser.core.Group;
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
	function existing(object:Dynamic):Dynamic;
	function sprite(x:Float, y:Float, key:Dynamic, ?frame:Dynamic):Sprite;
	function child(group:Group, x:Float, y:Float, key:Dynamic, ?frame:Dynamic):Sprite;
	function tween(object:Dynamic):Tween;
	function group(parent:Dynamic, ?name:String):Group;
	function audio(key:String, ?volume:Float, ?loop:Bool, ?connect:Bool):Sound;
	function tileSprite(x:Float, y:Float, width:Float, height:Float, key:Dynamic, ?frame:Dynamic):TileSprite;
	function text(x:Float, y:Float, text:String, style:Dynamic):Dynamic; // return Phaser.Text
	function button(x:Float, y:Float, key:String, callback:Pointer->Void, callbackContext:Dynamic, overFrame:Dynamic, outFrame:Dynamic, downFrame:Dynamic):Button;
	function graphics(x:Float, y:Float):Graphics;
	function emitter(?x:Float, ?y:Float, ?maxParticles:Int):Emitter;
	function bitmapText(x:Float, y:Float, text:String, style:Dynamic):BitmapText;
	function tilemap(key:String):Tilemap;
	function tileset(key:String):Tileset;
	function tilemapLayer(x:Float, y:Float, width:Float, height:Float):TilemapLayer;
	function renderTexture(key:String, width:Float, height:Float):RenderTexture;
	function bitmapData(?width:Int, ?height:Int):BitmapData;
	function filter(filter:String, ?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic, ?param7:Dynamic, ?param8:Dynamic):Filter;
}