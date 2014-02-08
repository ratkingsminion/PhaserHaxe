package phaser.tilemap;

@:native("Phaser.Tile")
@:publicFields
extern class Tile {
	function new(layer:Dynamic, index:Int, x:Float, y:Float, width:Float, height:Float);
	var layer:Dynamic;
	var index:Int;
	var x:Float;
	var y:Float;
	var width:Float;
	var height:Float;
	var alpha:Float;
	var properties:Dynamic;
	var scanned:Bool;
	var faceTop:Bool;
	var faceBottom:Bool;
	var faceLeft:Bool;
	var faceRight:Bool;
	var collides:Bool;
	var collideNone:Bool;
	var collideLeft:Bool;
	var collideRight:Bool;
	var collideUp:Bool;
	var collideDown:Bool;
	//var callback:Dynamic; // not used actually
	//var callbackContext:Dynamic; // not used actually
	var collisionCallback:Dynamic;
	var collisionCallbackContext:Dynamic;
	function setCollisionCallback(callback:Dynamic, context:Dynamic):Void;
	function destroy():Void;
	function setCollision(left:Bool, right:Bool, up:Bool, down:Bool):Void;
	function resetCollision():Void;
	function copy(tile:Tile):Void;
	var canCollide(default, null):Bool;
	var left(default, null):Float;
	var right(default, null):Float;
	var top(default, null):Float;
	var bottom(default, null):Float;
}