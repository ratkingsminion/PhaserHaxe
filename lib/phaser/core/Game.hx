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
	var parent:Dynamic;
	var width:Int;
	var height:Int;
	var transparent:Bool;
	var antialias:Bool;
	var renderer:Int;
	var state:Int;
	var renderType:Int;
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
	var context:Dynamic;
	var debug:Debug;
	var particles:Particles;
}