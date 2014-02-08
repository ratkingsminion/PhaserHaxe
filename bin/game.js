(function () { "use strict";
var Main = function() {
	this.game = new Phaser.Game(640,480,Phaser.AUTO,null,{ preload : $bind(this,this.preload), create : $bind(this,this.create), update : $bind(this,this.update)});
};
Main.main = function() {
	new Main();
}
Main.prototype = {
	update: function() {
		if(this.timer > this.game.time.time) return;
		this.timer = this.game.time.time + 100;
		this.back.x = this.game.rnd.integerInRange(-2,2);
		this.back.y = this.game.rnd.integerInRange(-2,2);
	}
	,particleBurst: function() {
		if(this.game.input.x < 1 || this.game.input.x > this.game.width || this.game.input.y < 1 || this.game.input.y > this.game.height) return;
		this.text.content = this.game.input.x + " / " + this.game.input.y;
		this.jump.play();
		this.emitter.x = this.game.input.x;
		this.emitter.y = this.game.input.y;
		this.emitter.start(true,2000,0,10);
	}
	,create: function() {
		this.jump = this.game.add.audio("jump",0.7,false);
		this.back = this.game.add.sprite(0,0,"einstein");
		this.text = this.game.add.text(20,20,"Click to diamond!",{ fill : "#ffff00"});
		this.emitter = this.game.add.emitter(0,0,200);
		this.emitter.makeParticles("diamond");
		this.emitter.gravity = 10;
		this.game.input.onDown.add($bind(this,this.particleBurst),this);
	}
	,preload: function() {
		this.game.stage.disableVisibilityChange = true;
		this.game.canvas.style.position = "absolute";
		this.game.canvas.style.left = this.game.canvas.style.top = "50%";
		this.game.canvas.style.margin = "-240px 0 0 -320px";
		this.game.canvas.style.border = "1px solid #947";
		this.game.canvas.parentElement.style.backgroundColor = "#ff0";
		this.game.load.image("einstein","assets/pics/ra_einstein.png");
		this.game.load.image("diamond","assets/sprites/diamond.png");
		this.game.load.audio("jump","assets/audio/bam.wav");
	}
}
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; };
Main.main();
})();
