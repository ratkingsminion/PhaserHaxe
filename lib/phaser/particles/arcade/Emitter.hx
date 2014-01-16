package phaser.particles.arcade;
import phaser.core.Game;
import phaser.core.Group;
import phaser.geom.Point;

@:native("Phaser.Emitter")
@:publicFields
extern class Emitter extends Group {
	function new(game:Game, x:Float, y:Float, ?maxParticles:Int);
	var maxParticles:Int;
	var type:Int;
	var width:Float;
	var height:Float;
	var minParticleSpeed:Point;
	var maxParticleSpeed:Point;
	var minParticleScale:Float;
	var maxParticleScale:Float;
	var minRotation:Float;
	var maxRotation:Float;
	var gravity:Float;
	var particleClass:Dynamic;
	var particleDrag:Point;
	var frequency:Int;
	var lifeSpan:Int;
	var bounce:Point;
	var on:Bool;
	var emitX:Bool;
	var emitY:Bool;
	function update():Void;
	function makeParticles(keys:Dynamic, ?frames:Int, ?quantity:Int, ?collide:Int, ?collideWorldBounds:Bool):Emitter;
	function kill():Void;
	function revive():Void;
	function start(?explode:Bool, ?lifeSpan:Int, ?frequency:Int, ?quantity:Int):Void;
	function emitParticle():Void;
	function setSize(width:Float, height:Float):Void;
	function setXSpeed(min:Float, max:Float):Void;
	function setYSpeed(min:Float, max:Float):Void;
	function setRotation(min:Float, max:Float):Void;
	function at(object: { center: { x:Float, y:Float } } ):Void;
	var left(default, default):Float;
	var right(default, default):Float;
	var top(default, default):Float;
	var bottom(default, default):Float;
}