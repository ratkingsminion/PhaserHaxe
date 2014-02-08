package phaser.core;
import js.html.CanvasElement;
import phaser.gameobjects.GameObjectFactory;
import phaser.input.Input;
import phaser.loader.Cache;
import phaser.loader.Loader;
import phaser.math.Math;
import phaser.math.RandomDataGenerator;
import phaser.net.Net;
import phaser.particles.Particles;
import phaser.physics.arcade.Arcade;
import phaser.sound.SoundManager;
import phaser.system.Device;
import phaser.system.RequestAnimationFrame;
import phaser.time.Time;
import phaser.tween.TweenManager;
import phaser.utils.Debug;

@:native("Phaser.Game")
@:publicFields
extern class Game {
	function new(?width:Int, ?height:Int, ?renderer:Int, ?parent:String, ?state:Dynamic, ?transparent:Bool, ?antialias:Bool);
	var id:Int;
	var config:Dynamic;
	var parent:Dynamic;
	var width:Int;
	var height:Int;
	var transparent:Bool;
	var antialias:Bool;
	var renderer:Int;
	/**
	 * either Phaser.RENDERER_AUTO, Phaser.RENDERER_CANVAS or Phaser.RENDERER_WEBGL
	 */
	var renderType:Int;
	var state:Int;
	var isBooted:Bool;
	var isRunning:Bool;
	var raf:RequestAnimationFrame;
	var add:GameObjectFactory;
	var cache:Cache;
	var input:Input;
	var load:Loader;
	var math:Math;
	var net:Net;
	var sound:SoundManager;
	var stage:Stage;
	var time:Time;
	var tweens:TweenManager;
	var world:World;
	var physics:Arcade;
	var rnd:RandomDataGenerator;
	var device:Device;
	var camera:Camera;
	var canvas:CanvasElement;
	/**
	 * only set for CANVAS games
	 */
	var context:Dynamic;
	var debug:Debug;
	var particles:Particles;
	var stepping(default, null):Bool;
	var pendingStep(default, null):Bool;
	var stepCount(default, null):Int;
	function enableStep():Void;
	function disableStep():Void;
	function step():Void;
	function destroy():Void;
	var paused(default, default):Bool;
	
	private var _paused:Bool;
	private var _loadComplete:Bool;
	private function _onBoot():Void;
	private function parseConfig(config:Dynamic):Void;
	private function parseDimension(size:Dynamic, dimension:Int):Void;
	private function boot():Void;
	private function showDebugHeader():Void;
	private function setUpRenderer():Void;
	private function loadComplete():Void;
	private function update(time:Float):Void;
}