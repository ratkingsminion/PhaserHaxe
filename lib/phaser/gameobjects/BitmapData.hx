package phaser.gameobjects;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import phaser.animation.Frame;
import phaser.core.Game;
import phaser.geom.Rectangle;

@:native("Phaser.BitmapData")
@:publicFields
extern class BitmapData {
	function new(game:Game, ?width:Int, ?height:Int);
	var game:Game;
	var name:String;
	var width:Int;
	var height:Int;
	var canvas:CanvasElement;
	var context:CanvasRenderingContext2D;
	var imageData:Dynamic;
	var pixels:Dynamic;
	var baseTexture:Dynamic; // PIXI.BaseTexture
	var texture:Dynamic; // PIXI.Texture
	var textureFrame:Frame;
	var type:Int;
	function add(sprite:Sprite):Void;
	function addTo(sprites:Array<Sprite>):Void;
	function clear():Void;
	function refreshBuffer():Void;
	function setPixel32(x:Int, y:Int, red:Int, green:Int, blue:Int, alpha:Int):Void;
	function setPixel(x:Int, y:Int, red:Int, green:Int, blue:Int):Void;
	function getPixel(x:Int, y:Int):Int;
	function getPixel32(x:Int, y:Int):Int;
	function getPixels(rect:Rectangle):Dynamic; // CanvasPixelArray
	function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool):BitmapData;
	function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):BitmapData;
	function beginFill(color:String):Int;
	function beginLinearGradientFill(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):BitmapData;
	function beginLinearGradientStroke(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):BitmapData;
	function beginRadialGradientStroke(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):BitmapData;
	function beginPath():BitmapData;
	function beginStroke(color:String):BitmapData;
	function bezierCurveTo(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):BitmapData;
	function circle(x:Float, y:Float, radius:Float):BitmapData;
	function clearRect(x:Float, y:Float, width:Float, height:Float):BitmapData;
	function clip():BitmapData;
	function closePath():BitmapData;
	function createLinearGradient(x:Float, y:Float, width:Float, height:Float):Dynamic; // return CanvasGradient
	function createRadialGradient(x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):Dynamic; // return CanvasGradient
	function ellipse(x:Float, y:Float, w:Float, h:Float):BitmapData;
	function fill():BitmapData;
	function fillRect(x:Float, y:Float, width:Float, height:Float):BitmapData;
	function fillStyle(color:String):BitmapData;
	function font(font:String):BitmapData;
	function globalAlpha(alpha:Float):BitmapData;
	function globalCompositeOperation(operation:String):BitmapData;
	function lineCap(style:String):BitmapData;
	function lineDashOffset(offset:Float):BitmapData;
	function lineJoin(join:String):BitmapData;
	function lineWidth(width:Float):BitmapData;
	function miterLimit(limit:Float):BitmapData;
	function lineTo(x:Float, y:Float):BitmapData;
	function moveTo(x:Float, y:Float):BitmapData;
	function quadraticCurveTo(cpx:Float, cpy:Float, x:Float, y:Float):BitmapData;
	function rect(x:Float, y:Float, width:Float, height:Float):BitmapData;
	function restore():BitmapData;
	function rotate(angle:Float):BitmapData;
	/**
	 * @param	?caps can be String or Int
	 * @param	?joints can be String or Int
	 */
	function setStrokeStyle(thickness:Float, ?caps:Dynamic, ?joints:Dynamic, ?miterLimit:Float, ?ignoreScale:Bool):BitmapData;
	function save():BitmapData;
	function scale(x:Float, y:Float):BitmapData;
	function scrollPathIntoView():BitmapData;
	function stroke():BitmapData;
	function strokeRect(x:Float, y:Float, width:Float, height:Float):BitmapData;
	function strokeStyle(style:String):BitmapData;
	function render():Void;
	// easeljs tiny api emulation - is this needed for haxe bindings?
	function mt(x:Float, y:Float):BitmapData;
	function lt(x:Float, y:Float):BitmapData;
	function at(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):BitmapData;
	function bt(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):BitmapData;
	function qt(cpx:Float, cpy:Float, x:Float, y:Float):BitmapData;
	function r(x:Float, y:Float, width:Float, height:Float):BitmapData;
	function cp():BitmapData;
	function c():Void;
	function f(color:String):Int;
	function lf(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):BitmapData;
	// function rf ... beginRadialGradientFill is missing!
	// function ef ... endFill is missing!
	function ss(thickness:Float, ?caps:Int, ?joints:Int, ?miterLimit:Float, ?ignoreScale:Bool):BitmapData;
	function s(color:String):BitmapData;
	function ls(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):BitmapData;
	function rs(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):BitmapData;
	// function bs ... endStroke is missing!
	// function es ... endStroke is missing!
	function dr(x:Float, y:Float, width:Float, height:Float):BitmapData;
	// function rr ... endStroke is missing!
	// function rc ... endStroke is missing!
	function dc(x:Float, y:Float, radius:Float):BitmapData;
	function de(x:Float, y:Float, w:Float, h:Float):BitmapData;
	// function dp ... endStroke is missing!
	
	private var _dirty:Bool;
}