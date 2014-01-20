package phaser.physics.arcade;
import phaser.core.Game;
import phaser.gameobjects.Sprite;
import phaser.geom.Point;
import phaser.geom.Rectangle;
import phaser.input.Pointer;
import phaser.math.QuadTree;
import phaser.tilemap.Tile;

@:native("Phaser.Physics.Arcade.ArcadePhysics")
@:publicFields
extern class Arcade {
	function new(game:Game);
	var gravity:Point;
	var bounds:Rectangle;
	var maxObjects:Int;
	var maxLevels:Int;
	var OVERLAP_BIAS:Int;
	var quadTree:QuadTree;
	var quadTreeID:Int;
	function updateMotion(body:Body):Void;
	function computeVelocity(axis:Int, body:Body, velocity:Float, acceleration:Float, drag:Float, ?mMax:Float):Float;
	function overlap(object1:Dynamic, object2:Dynamic, ?overlapCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic):Bool;
	function collide(object1:Dynamic, object2:Dynamic, ?collideCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic):Bool;
	function separate(body1:Body, body2:Body):Bool;
	function separateX(body1:Body, body2:Body):Bool;
	function separateY(body1:Body, body2:Body):Bool;
	function separateTile(body:Body, tile:Tile):Bool;
	function separateTileX(body:Body, tile:Tile):Bool;
	function separateTileY(body:Body, tile:Tile):Bool;
	function moveToObject(displayObject:Dynamic, destination: { x:Float, y:Float }, ?speed:Float, ?maxTime:Int):Float;
	function moveToPointer(displayObject:Dynamic, ?speed:Float, ?pointer:Pointer, ?maxTime:Int):Float;
	function moveToXY(displayObject:Dynamic, x:Float, y:Float, ?speed:Float, ?maxTime:Int):Float;
	/**
	 * returns same type as point or phaser.geom.Point
	 */
	function velocityFromAngle(angle:Float, ?speed:Float, ?point: { x:Float, y:Float } ):Dynamic;
	/**
	 * returns same type as point or phaser.geom.Point
	 */
	function velocityFromRotation(rotation:Float, ?speed:Float, ?point: { x:Float, y:Float } ):Dynamic;
	/**
	 * returns same type as point or phaser.geom.Point
	 */
	function accelerationFromRotation(rotation:Float, ?speed:Float, ?point: { x:Float, y:Float } ):Dynamic;
	function accelerateToObject(displayObject:Dynamic, destination: { x:Float, y:Float }, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float;
	function accelerateToPointer(displayObject:Dynamic, pointer:Pointer, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float; 
	function accelerateToXY(displayObject:Dynamic, x:Float, y:Float, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float;
	function distanceBetween(source: { x:Float, y:Float }, target: { x:Float, y:Float } ):Float;
	function distanceToXY(displayObject: { x:Float, y:Float }, x:Float, y:Float ):Float;
	function distanceToPointer(displayObject: { x:Float, y:Float }, pointer:Pointer):Float;
	function angleBetween(source: { x:Float, y:Float }, target: { x:Float, y:Float } ):Float;
	function angleToXY(displayObject: { x:Float, y:Float }, x:Float, y:Float ):Float;
	function angleToPointer(displayObject: { x:Float, y:Float }, ?pointer:Pointer):Float;
}