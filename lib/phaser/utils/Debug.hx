package phaser.utils;
import haxe.Json;
import js.html.CanvasRenderingContext;
import phaser.core.Camera;
import phaser.core.Game;
import phaser.core.Group;
import phaser.core.LinkedList.LinkedList;
import phaser.gameobjects.Sprite;
import phaser.geom.Circle;
import phaser.geom.Point;
import phaser.geom.Rectangle;
import phaser.input.Pointer;
import phaser.math.QuadTree;
import phaser.sound.Sound;

@:native("Phaser.Utils.Debug")
@:publicFields
extern class Debug {
	function new(game:Game);
	var context:CanvasRenderingContext;
	var font:String;
	var lineHeight:Float;
	var renderShadow:Bool;
	var currentX:Float;
	var currentY:Float;
	var currentAlpha:Float;
	function renderQuadTree(quadTree:QuadTree, ?color:String):Void;
	function renderSpriteCorners(sprite:Sprite, ?showText:Bool, ?showBounds:Bool, ?color:String):Void;
	function renderSoundInfo(sound:Sound, x:Float, y:Float, ?color:String):Void;
	function renderCameraInfo(camera:Camera, x:Float, y:Float, ?color:String):Void;
	function renderPointer(pointer:Pointer, ?hideIfUp:Bool, ?downColor:String, ?upColor:String, ?color:String):Void;
	function renderSpriteInputInfo(sprite:Sprite, x:Float, y:Float, ?color:String):Void;
	function renderSpriteCollision(sprite:Sprite, x:Float, y:Float, ?color:String):Void;
	function renderInputInfo(x:Float, y:Float, ?color:String):Void;
	function renderSpriteInfo(sprite:Sprite, x:Float, y:Float, ?color:String):Void;
	function renderWorldTransformInfo(sprite:Sprite, x:Float, y:Float, ?color:String):Void;
	function renderLocalTransformInfo(sprite:Sprite, x:Float, y:Float, ?color:String):Void;
	function renderSpriteCoords(sprite:Sprite, x:Float, y:Float, ?color:String):Void;
	function renderGroupInfo(group:Group, x:Float, y:Float, ?color:String):Void;
	function renderPointInfo(point:Point, x:Float, y:Float, ?color:String):Void;
	function renderSpriteBody(sprite:Sprite, ?color:String):Void;
	function renderSpriteBounds(sprite:Sprite, ?color:String, ?fill:Bool):Void;
	function renderPixel(x:Float, y:Float, ?color:String):Void;
	function renderPoint(point:Point, ?color:String):Void;
	function renderRectangle(rect:Rectangle, ?color:String):Void;
	function renderCircle(circle:Circle, ?color:String):Void;
	function renderText(text:String, x:Float, y:Float, ?color:String, ?font:String):Void;
	function dumpLinkedList(list:LinkedList):Void;
}
