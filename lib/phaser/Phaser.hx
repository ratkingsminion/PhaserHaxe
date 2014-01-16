package phaser;

// EXTERNS FOR PHASER 1.1.3

@:native("Phaser")
@:publicFields
extern class Phaser {
	static var VERSION(default, null):String;
	static var DEV_VERSION(default, null):String;
	static var GAMES(default, null):Array<Dynamic>;

	static var AUTO(default, null):Int;
	static var CANVAS(default, null):Int;
	static var WEBGL(default, null):Int;
	static var HEADLESS(default, null):Int;

	static var SPRITE(default, null):Int;
	static var BUTTON(default, null):Int;
	static var BULLET(default, null):Int;
	static var GRAPHICS(default, null):Int;
	static var TEXT(default, null):Int;
	static var TILESPRITE(default, null):Int;
	static var BITMAPTEXT(default, null):Int;
	static var GROUP(default, null):Int;
	static var RENDERTEXTURE(default, null):Int;
	static var TILEMAP(default, null):Int;
	static var TILEMAPLAYER(default, null):Int;
	static var EMITTER(default, null):Int;
	static var POLYGON(default, null):Int;
	static var BITMAPDATA(default, null):Int;
	static var CANVAS_FILTER(default, null):Int;
	static var WEBGL_FILTER(default, null):Int;

	static var NONE(default, null):Int;
	static var LEFT(default, null):Int;
	static var RIGHT(default, null):Int;
	static var UP(default, null):Int;
	static var DOWN(default, null):Int;
}