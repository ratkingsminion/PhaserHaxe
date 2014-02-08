package phaser.loader;
import js.html.XMLHttpRequest;
import phaser.core.Game;
import phaser.core.Signal;
import phaser.gameobjects.Sprite;

@:native("Phaser.Loader")
@:publicFields
extern class Loader {
	function new(game:Game);
	var isLoading:Bool;
	var hasLoaded:Bool;
	/**
	 * in the range of 0 ... 100
	 */
	var progress:Int;
	var progressFloat:Float;
	var preloadSprite:Sprite;
	var crossOrigin:String;
	var baseURL:String;
	var onFileComplete:Signal;
	var onFileError:Signal;
	var onLoadStart:Signal;
	var onLoadComplete:Signal;
	static var TEXTURE_ATLAS_JSON_ARRAY(default, null):Int;
	static var TEXTURE_ATLAS_JSON_HASH(default, null):Int;
	static var TEXTURE_ATLAS_XML_STARLING(default, null):Int;
	function setPreloadSprite(sprite:Sprite, direction:Int):Void;
	function checkKeyExists(type:String, key:String):Bool;
	function getAsset(type:String, key:String):Dynamic;
	function reset():Void;
	function image(key:String, url:String, ?overwrite:Bool):Loader;
	function text(key:String, url:String, ?overwrite:Bool):Loader;
	function script(key:String, url:String):Loader;
	function binary(key:String, url:String, callback:Dynamic, callbackContext:Dynamic):Loader;
	function spritesheet(key:String, url:String, frameWidth:Int, frameHeight:Int, ?frameMax:Int, ?margin:Int, ?spacing:Int):Loader;
	@:overload(function(key:String, urls:String, ?autoDecode:Bool):Loader { } )
	/**
	 * @param	urls can be String or Array<String>
	 */
	function audio(key:String, urls:Dynamic, ?autoDecode:Bool):Loader;
	function tilemap(key:String, ?mapDataURL:String, ?mapData:Dynamic, ?format:Int):Loader;
	function bitmapFont(key:String, textureURL:String, ?xmlURL:String, ?xmlData:Dynamic):Loader;
	function atlasJSONArray(key:String, textureURL:String, atlasURL:String, ?atlasData:Dynamic):Loader;
	function atlasJSONHash(key:String, textureURL:String, atlasURL:String, ?atlasData:Dynamic):Loader;
	function atlasXML(key:String, textureURL:String, atlasURL:String, ?atlasData:Dynamic):Loader;
	function atlas(key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic, ?format:Int):Loader;
	function removeFile(type:String, key:String):Void;
	function removeAll():Void;
	function start():Void;
	function fileError(index:Int):Void;
	function fileComplete(index:Int):Void;
	function jsonLoadComplete(index:Int):Void;
	function csvLoadComplete(index:Int):Void;
	function dataLoadError(index:Int):Void;
	function xmlLoadComplete(index:Int):Void;
	function totalLoadedFiles():Int;
	function totalQueuedFiles():Int;
	
	private var _fileList:Dynamic;
	private var _fileIndex:Int;
	private var _progressChunk:Float;
	private var _xhr:XMLHttpRequest;
	private function addToFileList(type:String, key:String, url:String, ?properties:Dynamic):Void;
	private function replaceInFileList(type:String, key:String, url:String, ?properties:Dynamic):Void;
	private function loadFile():Void;
	/**
	 * @param	urls can be String or Array<String>
	 */
	private function getAudioURL(urls:Dynamic):Void;
	private function nextFile(previousIndex:Int, success:Bool):Void;
}