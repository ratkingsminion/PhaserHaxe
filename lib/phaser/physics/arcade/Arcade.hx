package phaser.physics.arcade;
import phaser.core.Game;
import phaser.core.Group;
import phaser.gameobjects.Sprite;
import phaser.geom.Point;
import phaser.input.Pointer;
import phaser.math.QuadTree;
import phaser.tilemap.Tile;
import phaser.tilemap.TilemapLayer;
import sat.Box;

@:native("Phaser.Physics.Arcade")
@:publicFields
extern class Arcade {
	function new(game:Game);
	var game:Game;
	var gravity:Point;
	var worldLeft:Box;
	var worldRight:Box;
	var worldTop:Box;
	var worldBottom:Box;
	var worldPolys:Array<Box>;
	var quadTree:QuadTree;
	var maxObjects:Int;
	var maxLevels:Int;
	static var RECT:Int;
	static var CIRCLE:Int;
	static var POLYGON:Int;
	function checkBounds(body:Body):Bool;
	function setBoundsToWorld(?left:Bool, ?right:Bool, ?top:Bool, ?bottom:Bool):Void;
	function setBounds(x:Float, y:Float, width:Float, height:Float, ?left:Bool, ?right:Bool, ?top:Bool, ?bottom:Bool):Void;
	function updateMotion(body:Body):Void;
	/**
	 * @param	object1 can be Sprite, Group or particles.Emitter
	 * @param	object2 can be Sprite, Group or particles.Emitter
	 */
	function overlap(object1:Dynamic, object2:Dynamic, ?overlapCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic):Bool;
	/**
	 * @param	object1 can be Sprite, Group or particles.Emitter
	 * @param	object2 can be Sprite, Group or particles.Emitter
	 */
	function collide(object1:Dynamic, object2:Dynamic, ?collideCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic):Bool;
	function separate(body1:Body, body2:Body, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
	function intersects(a: { width:Float, height:Float, left:Float, right:Float, top:Float, bottom:Float }, b: { width:Float, height:Float, left:Float, right:Float, top:Float, bottom:Float } ):Bool;
	function tileIntersects(body: { width:Float, height:Float, left:Float, right:Float, top:Float, bottom:Float }, tile: { x:Float, y:Float, width:Float, height:Float, right:Float, bottom:Float }):Bool;
	function separateTiles(body:Body, tile:Array<Tile>):Bool;
	function separateTile(body:Body, tile:Tile):Bool;
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
	
	private var _mapData:Dynamic;
	private var _mapTiles:Dynamic;
	private var _result:Bool;
	private var _total:Int;
	private var _angle:Float;
	private var _drag:Float;
	private var _dx:Float;
	private var _dy:Float;
	private var _p:Float;
	private var _intersection:Array<Float>;
	private var _gravityX:Float;
	private var _gravityY:Float;
	private var _response:sat.Response;
	private function collideHandler(object1:Dynamic, ?object2:Dynamic, ?collideCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
	private function collideSpriteVsSprite(sprite1:Sprite, sprite2:Sprite, ?collideCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
	private function collideSpriteVsGroup(sprite:Sprite, group:Group, ?collideCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
	private function collideGroupVsSelf(group:Group, ?collideCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
	private function collideGroupVsGroup(group1:Group, group2:Group, ?collideCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
	private function collideSpriteVsTilemapLayer(sprite:Sprite, tilemapLayer:TilemapLayer, ?collideCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic):Bool;
	private function collideGroupVsTilemapLayer(group:Group, tilemapLayer:TilemapLayer, ?collideCallback:Sprite-> Sprite-> Void, ?processCallback:Sprite-> Sprite-> Void, ?callbackContext:Dynamic):Bool;
	private function processTileSeparation(body:Body):Bool;
}