package phaser.core;
import phaser.input.Pointer;

@:native("Phaser.Filter")
@:publicFields
extern class Filter {
	function new(game:Game, ?uniforms:Dynamic, ?fragmentSrc:Array<String>);
	var game:Game;
	/**
	 * either Phaser.WEBGL_FILTER or Phaser.CANVAS_FILTER
	 */
	var type:Int;
	var passes:Array<Filter>;
	var dirty:Bool;
	var padding:Float;
	var unforms:Dynamic;
	var fragmentSrc:Array<String>;
	function init(?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic, ?param7:Dynamic, ?param8:Dynamic):Void;
	function setResolution(width:Float, height:Float):Void;
	function update(?pointer:Pointer):Void;
	function destroy():Void;
	var width(default, default):Float;
	var height(default, default):Float;
}