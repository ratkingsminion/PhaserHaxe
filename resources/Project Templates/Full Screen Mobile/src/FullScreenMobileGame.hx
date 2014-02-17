package ;
import phaser.core.State;
import phaser.input.Pointer;

class FullScreenMobileGame extends State
{

	public function new() 
	{
		super();
		/*
		//	When a State is added to Phaser it automatically has the following properties set on it, even if they already exist:

		this.game;		//	a reference to the currently running game
		this.add;		//	used to add sprites, text, groups, etc
		this.camera;	//	a reference to the game camera
		this.cache;		//	the game cache
		this.input;		//	the global input manager (you can access this.input.keyboard, this.input.mouse, as well from it)
		this.load;		//	for preloading assets
		this.math;		//	lots of useful common math operations
		this.sound;		//	the sound manager - add a sound, play one, set-up markers, etc
		this.stage;		//	the game stage
		this.time;		//	the clock
		this.tweens;	//	the tween manager
		this.world;		//	the game world
		this.particles;	//	the particle manager
		this.physics;	//	the physics manager
		this.rnd;		//	the repeatable random number generator

		//	You can use any of these from any function within this State.
		//	But do consider them as being 'reserved words', i.e. don't create a proper
		*/
	}
	
	override public function create():Void 
	{
		//	Honestly, just about anything could go here. It's YOUR game after all. Eat your heart out!
	}
	
	override public function update():Void 
	{
		//	Honestly, just about anything could go here. It's YOUR game after all. Eat your heart out!
	}
	
	function quitGame( pointer:Pointer ):Void
	{
		//	Here you should destroy anything you no longer need.
		//	Stop music, delete sprites, purge caches, free resources, all that good stuff.

		//	Then let's go back to the main menu.
		game.state.start('MainMenu');
	}
}