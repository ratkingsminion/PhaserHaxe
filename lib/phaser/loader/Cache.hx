package phaser.loader;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import phaser.animation.Frame;
import phaser.animation.FrameData;
import phaser.core.Game;
import phaser.core.Signal;
import phaser.gameobjects.BitmapData;
import phaser.gameobjects.RenderTexture;
import phaser.sound.Sound;
import phaser.tilemap.Tileset;

@:native("Phaser.Cache")
@:publicFields
extern class Cache {
	function new(game:Game);
	var game:Game;
	var onSoundUnlock:Signal;
	function addCanvas(key:String, canvas:CanvasElement, context:CanvasRenderingContext2D):Void;
	function addBitmapData(key:String, bitmapData:BitmapData):BitmapData;
	function addRenderTexture(key:String, texture:Dynamic):Void; // texture:Phaser.Texture
	function addSpriteSheet(key:String, url:String, data:Dynamic, frameWidth:Int, FrameHeight:Int, frameMax:Int):Void;
	function addTileset(key:String, url:String, data:Dynamic, tileWidth:Int, tileHeight:Int, tileMax:Int, tileMargin:Int, tileSpacing:Int):Void;
	function addTilemap(key:String, url:String, mapData:Dynamic, format:Int):Void;
	function addTextureAtlas(key:String, url:String, data:Dynamic, atlasData:Dynamic, format:Int):Void;
	function addBitmapFont(key:String, url:String, data:Dynamic, xmlData:Dynamic):Void;
	function addDefaultImage():Void;
	function addMissingImage():Void;
	function addText(key:String, url:String, data:Dynamic):Void;
	function addImage(key:String, url:String, data:Dynamic):Void;
	function addSound(key:String, url:String, data:Dynamic, ?webAudio:Bool, ?audioTag:Bool):Void;
	function reloadSound(key:String):Void;
	function reloadSoundComplete(key:String):Void;
	function updateSound(key:String, property:String, value:Dynamic):Void;
	function decodedSound(key:String, data:Dynamic):Void;
	function getCanvas(key:String):Dynamic;
	function getBitmapData(key:String):BitmapData;
	function checkImageKey(key:String):Bool;
	function getImage(key:String):Dynamic;
	function getTilesetImage(key:String):Dynamic;
	function getTileset(key:String):Tileset;
	function getTilemapData(key:String):Dynamic;
	function getFrameData(key:String):FrameData;
	function getFrameByIndex(key:String, frame:Int):Frame;
	function getFrameByName(key:String, frame:String):Frame;
	function getFrame(key:String):Frame;
	function getTextureFrame(key:String):Frame;
	function getTexture(key:String):RenderTexture;
	function getSound(key:String):Sound;
	function getSoundData(key:String):Dynamic;
	function isSoundDecoded(key:String):Bool;
	function isSoundReady(key:String):Bool;
	function isSpriteSheet(key:String):Bool;
	function getText(key:String):Dynamic;
	function getKeys(array:Array<Dynamic>):Array<String>;
	function getImageKeys():Array<String>;
	function getSoundKeys():Array<String>;
	function getTextKeys():Array<String>;
	function removeCanvas(key:String):Void;
	function removeImage(key:String):Void;
	function removeSound(key:String):Void;
	function removeText(key:String):Void;
	function destroy():Void;
}