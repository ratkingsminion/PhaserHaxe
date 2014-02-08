package phaser.core;
import phaser.gameobjects.GameObjectFactory;
import phaser.input.Input;
import phaser.loader.Cache;
import phaser.loader.Loader;
import phaser.math.Math;
import phaser.particles.Particles;
import phaser.physics.arcade.Arcade;
import phaser.sound.SoundManager;
import phaser.time.Time;
import phaser.tween.TweenManager;

@:native("Phaser.State")
@:publicFields
extern class State {
	function new();
	var game:Game;
	var add:GameObjectFactory;
	var camera:Camera;
	var cache:Cache;
	var input:Input;
	var load:Loader;
	var math:Math;
	var sound:SoundManager;
	var stage:Stage;
	var time:Time;
	var tweens:TweenManager;
	var world:World;
	var particles:Particles;
	var physics:Arcade;
	function preload():Void;
	function loadUpdate():Void;
	function loadRender():Void;
	function create():Void;
	function update():Void;
	function render():Void;
	function paused():Void;
	function destroy():Void;
}