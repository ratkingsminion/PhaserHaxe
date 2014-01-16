package phaser.tilemap;

@:native("Phaser.Tile")
@:publicFields
extern class Tile {
	function new(tile:Tileset, index:Int, x:Float, y:Float, width:Float, height:Float);
	var tileset:Tileset;
	var index:Int;
	var width:Float;
	var height:Float;
	var x:Float;
	var y:Float;
	var mass:Float;
	var collideNone:Bool;
	var collideLeft:Bool;
	var collideRight:Bool;
	var collideUp:Bool;
	var collideDown:Bool;
	var separateX:Bool;
	var separateY:Bool;
	var collisionCallback:Dynamic;
	var collisionCallbackContext:Dynamic;
	function setCollisionCallback(callback:Dynamic, context:Dynamic):Void;
	function destroy():Void;
	function setCollision(left:Bool, right:Bool, up:Bool, down:Bool):Void;
	function resetCollision():Void;
	var bottom(default, null):Float;
	var right(default, null):Float;
}