(function () { "use strict";
var Main = function() {
	this.game = new Phaser.Game(640,480,Phaser.AUTO,null,{ preload : $bind(this,this.preload), create : $bind(this,this.create), update : $bind(this,this.update)});
};
Main.__name__ = true;
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
	,__class__: Main
}
var js = {}
js.Boot = function() { }
js.Boot.__name__ = true;
js.Boot.__interfLoop = function(cc,cl) {
	if(cc == null) return false;
	if(cc == cl) return true;
	var intf = cc.__interfaces__;
	if(intf != null) {
		var _g1 = 0, _g = intf.length;
		while(_g1 < _g) {
			var i = _g1++;
			var i1 = intf[i];
			if(i1 == cl || js.Boot.__interfLoop(i1,cl)) return true;
		}
	}
	return js.Boot.__interfLoop(cc.__super__,cl);
}
js.Boot.__instanceof = function(o,cl) {
	if(cl == null) return false;
	switch(cl) {
	case Int:
		return (o|0) === o;
	case Float:
		return typeof(o) == "number";
	case Bool:
		return typeof(o) == "boolean";
	case String:
		return typeof(o) == "string";
	case Dynamic:
		return true;
	default:
		if(o != null) {
			if(typeof(cl) == "function") {
				if(o instanceof cl) {
					if(cl == Array) return o.__enum__ == null;
					return true;
				}
				if(js.Boot.__interfLoop(o.__class__,cl)) return true;
			}
		} else return false;
		if(cl == Class && o.__name__ != null) return true;
		if(cl == Enum && o.__ename__ != null) return true;
		return o.__enum__ == cl;
	}
}
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; };
String.prototype.__class__ = String;
String.__name__ = true;
Array.prototype.__class__ = Array;
Array.__name__ = true;
var Int = { __name__ : ["Int"]};
var Dynamic = { __name__ : ["Dynamic"]};
var Float = Number;
Float.__name__ = ["Float"];
var Bool = Boolean;
Bool.__ename__ = ["Bool"];
var Class = { __name__ : ["Class"]};
var Enum = { };
Main.main();
})();
