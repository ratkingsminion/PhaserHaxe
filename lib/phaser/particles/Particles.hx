package phaser.particles;
import phaser.core.Game;
import phaser.particles.arcade.Emitter;

@:native("Phaser.Particles")
@:publicFields
extern class Particles {
	function new(game:Game);
	var game:Game;
	var emitters:Dynamic;
	var ID:Int;
	function add(emitter:Emitter):Emitter;
	function remove(emitter:Emitter):Void;
}