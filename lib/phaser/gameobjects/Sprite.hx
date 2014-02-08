package phaser.gameobjects;
import phaser.animation.Animation;
import phaser.animation.AnimationManager;
import phaser.animation.Frame;
import phaser.core.Filter;
import phaser.core.Game;
import phaser.core.Group;
import phaser.geom.Point;
import phaser.geom.Rectangle;
import phaser.input.InputHandler;
import phaser.physics.arcade.Body;

@:native("Phaser.Sprite")
@:publicFields
extern class Sprite { // TODO extends PIXI.Sprite
	/**
	 * @param	?key can be String, RenderTexture, Phaser.BitmapData or PIXI.Texture
	 * @param	?frame can be String or Int
	 */
	function new(game:Game, ?x:Float, ?y:Float, ?key:Dynamic, ?frame:Dynamic);
	var game:Game;
	var exists:Bool;
	var alive:Bool;
	var group:Group;
	var name:String;
	var type(default, null):Int;
	var renderOrderID:Int;
	var lifeSpan:Int;
	var events:Events;
	var animations:AnimationManager;
	var input:InputHandler;
	var key:String;
	var currentFrame:Frame;
	var textureRegion:Rectangle;
	var anchor:Point;
	var x:Float;
	var y:Float;
	var position: { x:Float, y:Float };
	var world:Point;
	var autoCull:Bool;
	var scale:Point;
	var offset:Point;
	var center:Point;
	var topLeft:Point;
	var topRight:Point;
	var bottomRight:Point;
	var bottomLeft:Point;
	var bounds:Rectangle;
	var body:Body;
	var health:Float;
	var inWorld:Bool;
	var inWorldThreshold:Float;
	var outOfBoundsKill:Bool;
	var fixedToCamera:Bool;
	var cameraOffset:Point;
	var crop:Rectangle;
	var cropEnabled:Bool;
	var debug:Bool;
	function getLocalPosition(p:Point, x:Float, y:Float):Point;
	function getLocalUnmodifiedPosition(p:Point, gx:Float, gy:Float):Point; 
	function resetCrop():Void;
	/**
	 * @param	key can be String, RenderTexture, BitmapData or PIXI.Texture
	 * @param	?frame can be String or Int
	 */
	function loadTexture(key:Dynamic, ?frame:Dynamic):Void;
	function centerOn(x:Float, y:Float):Sprite;
	function revive(?health:Float):Sprite;
	function kill():Sprite;
	function destroy():Void;
	function damage(amount:Float):Sprite;
	function reset(x:Float, y:Float, ?health:Float):Sprite;
	function bringToTop():Sprite;
	function play(name:String, ?frameRate:Float, ?loop:Bool, ?killOnComplete:Bool):Animation;
	var deltaX(default, null):Float;
	var deltaY(default, null):Float;
	var angle(default, default):Float;
	var frame(default, default):Int;
	var frameName(default, default):String;
	var inCamera(default, null):Bool;
	var worldCenterX(default, null):Float;
	var worldCenterY(default, null):Float;
	var width(default, default):Float;
	var height(default, default):Float;
	var inputEnabled(default, default):Bool;
	
	// stuff by PIXI
	var pivot:Dynamic; // PIXI.Point
	var alpha:Float;
	var filters(default, default):Array<Filter>;
	
	private var _cache:Dynamic;
	private var _outOfBoundsFired:Bool;
	private function preUpdate():Dynamic; // mostly returns Bool, sometimes nothing
	private function updateCache():Void;
	private function updateAnimation():Void;
	private function updateCrop():Void;
	private function updateBounds():Void;
	private function postUpdate():Void;
}