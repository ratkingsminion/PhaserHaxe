package phaser.physics.arcade;
import phaser.core.Game;
import phaser.gameobjects.Sprite;
import phaser.geom.Point;
import phaser.geom.Rectangle;
import sat.Polygon;
import sat.Response;
import sat.Vector;

@:native("Phaser.Physics.Arcade.Body")
@:publicFields
extern class Body {
	function new(sprite:Sprite);
	var sprite:Sprite;
	var game:Game;
	var offset:Point;
	var preX(default, null):Float;
	var preY(default, null):Float;
	var preRotation(default, null):Float;
	var velocity:Point;
	var acceleration:Point;
	var speed:Float;
	var angle:Float;
	var gravity:Point;
	var bounce:Point;
	var minVelocity:Point;
	var maxVelocity:Point;
	var angularVelocity:Float;
	var angularAcceleration:Float;
	var angularDrag:Float;
	var maxAngular:Float;
	var mass:Float;
	var linearDamping:Float;
	var checkCollision: { none:Bool, any:Bool, up:Bool, down:Bool, left:Bool, right:Bool };
	var touching: { none:Bool, up:Bool, down:Bool, left:Bool, right:Bool };
	var blocked: { x:Float, y:Float, up:Bool, down:Bool, left:Bool, right:Bool };
	var facing:Int;
	var immovable:Bool;
	var moves:Bool;
	var rotation:Float;
	var allowRotation:Bool;
	var allowGravity:Bool;
	var customSeparateCallback:Dynamic;
	var customSeparateContext:Dynamic;
	var collideCallback:Dynamic;
	var collideCallbackContext:Dynamic;
	var collideWorldBounds:Bool;
	var type:Int;
	/**
	 * can be SAT.Box, SAT.Circle or SAT.Polygon
	 */
	var shape:Dynamic;
	var polygon:Polygon;
	var left(default, default):Float;
	var right(default, default):Float;
	var top(default, default):Float;
	var bottom(default, default):Float;
	var width(default, null):Float;
	var height(default, null):Float;
	function getUpwardForce():Float;
	function getDownwardForce():Float;
	function overlap(body:Body, response:Response):Bool;
	function inContact(body:Body):Bool;
	function addContact(body:Body):Bool;
	function removeContact(body:Body):Bool;
	function separate(body:Body, response:Response):Bool;
	function hitLeft(body:Body, response:Response):Bool;
	function hitRight(body:Body, response:Response):Bool;
	function hitTop(body:Body, response:Response):Bool;
	function hitBottom(body:Body, response:Response):Bool;
	function integrateVelocity():Void;
	function reset(?full:Bool):Void;
	function destroy():Void;
	function setCircle(radius:Float, ?offsetX:Float, ?offsetY:Float):Void;
	function setRectangle(?width:Float, ?height:Float, ?translateX:Float, ?translateY:Float):Void;
	@:overload(function(?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic, ?param7:Dynamic, ?param8:Dynamic, ?param9:Dynamic, ?param10:Dynamic, ?param11:Dynamic, ?param12:Dynamic):Void { } )
	/**
	 * @param	points can be Array<SAT.Vector> or Array<Float>
	 */
	function setPolygon(points:Dynamic):Void;
	function translate(x:Float, y:Float):Void;
	function onFloor():Bool;
	function onWall():Bool;
	function deltaX():Float;
	function deltaY():Float;
	function deltaZ():Float;
	var x(default, default):Float;
	var y(default, default):Float;
	
	private var contacts:Array<Body>;
	private var overlapX:Float;
	private var overlapY:Float;
	private var _temp:Point;
	private var _dx:Float;
	private var _dy:Float;
	private var _sx:Float;
	private var _sy:Float;
	private var _distances:Array<Float>;
	private var _vx:Float;
	private var _vy:Float;
	private function updateScale():Void;
	private function preUpdate():Void;
	private function checkBlocked():Void;
	private function updateBounds():Void;
	private function applyDamping():Void;
	private function reboundCheck(x:Bool, y:Bool, rebound:Bool):Void;
	private function sub(v:Vector):Void;
	private function add(v:Vector):Void;
	private function give(body:Body, response:Response):Void;
	private function take(body:Body, response:Response):Void;
	private function split(body:Body, response:Response):Void;
	private function exchange(body:Body):Void;
	private function processRebound(body:Body):Void;
	private function postUpdate():Void;
}