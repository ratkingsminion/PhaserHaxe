package ;

import phaser.core.Game;
import phaser.gameobjects.Sprite;
import phaser.gameobjects.Text;
import phaser.geom.Point;
import phaser.particles.arcade.Emitter;
import phaser.Phaser;
import phaser.sound.Sound;

class Main 
{
	static function main() {
		new Main();
	}
	
	// EXAMPLE PHASER APP
	
	var game:Game;
	var emitter:Emitter;
	var jump:Sound;
	var back:Sprite;
	var text:Text;
	var timer:Float;

	function new() {
		game = new Game(640, 480, Phaser.AUTO, null, { preload:preload, create:create, update:update } );
	}
	
	function preload() {
        game.stage.disableVisibilityChange = true;
		
		game.canvas.style.position = "absolute";
		game.canvas.style.left = game.canvas.style.top = "50%";
		game.canvas.style.margin = "-240px 0 0 -320px";
		game.canvas.style.border = "1px solid #947";
		game.canvas.parentElement.style.backgroundColor = "#ff0";
		
		game.load.image('einstein', 'assets/pics/ra_einstein.png');
		game.load.image('diamond', 'assets/sprites/diamond.png');
		game.load.audio('jump', 'assets/audio/bam.wav');
	}
	
	function create() {
		jump = game.add.audio('jump', 0.7, false);
		back = game.add.sprite(0, 0, 'einstein');
		
		text = game.add.text(20, 20, "Click to diamond!", { fill:"#ffff00" });
		emitter = game.add.emitter(0, 0, 200);
		emitter.makeParticles('diamond');
		emitter.gravity = 10;
		game.input.onDown.add(particleBurst, this);
	}
	
	function particleBurst() {
		if (game.input.x < 1 || game.input.x > game.width || game.input.y < 1 || game.input.y > game.height)
			return;
		text.content = game.input.x + " / " + game.input.y;
		jump.play();
		emitter.x = game.input.x;
		emitter.y = game.input.y;
		emitter.start(true, 2000, 0, 10);
	}
	
	function update() {
		if (timer > game.time.time)
			return;
		timer = game.time.time + 100;
		back.x = game.rnd.integerInRange( -2, 2);
		back.y = game.rnd.integerInRange( -2, 2);
	}
}