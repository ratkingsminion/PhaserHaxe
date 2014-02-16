(function () { "use strict";
function $extend(from, fields) {
	function inherit() {}; inherit.prototype = from; var proto = new inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var Boot = function() {
	Phaser.State.call(this);
};
Boot.__super__ = Phaser.State;
Boot.prototype = $extend(Phaser.State.prototype,{
	leaveIncorrectOrientation: function() {
		this._orientated = true;
		js.Browser.document.getElementById("orientation").style.display = "none";
	}
	,enterIncorrectOrientation: function() {
		this._orientated = false;
		js.Browser.document.getElementById("orientation").style.display = "block";
	}
	,gameResized: function(width,height) {
	}
	,create: function() {
		Phaser.State.prototype.create.call(this);
		this.game.input.maxPointers = 1;
		this.game.stage.disableVisibilityChange = true;
		if(this.game.device.desktop) {
			this.game.stage.scaleMode = Phaser.StageScaleMode.SHOW_ALL;
			this.game.stage.scale.minWidth = 480;
			this.game.stage.scale.minHeight = 260;
			this.game.stage.scale.maxWidth = 1024;
			this.game.stage.scale.maxHeight = 768;
			this.game.stage.scale.pageAlignHorizontally = true;
			this.game.stage.scale.pageAlignVertically = true;
			this.game.stage.scale.setScreenSize(true);
		} else {
			this.game.stage.scaleMode = Phaser.StageScaleMode.SHOW_ALL;
			this.game.stage.scale.minWidth = 480;
			this.game.stage.scale.minHeight = 260;
			this.game.stage.scale.maxWidth = 1024;
			this.game.stage.scale.maxHeight = 768;
			this.game.stage.scale.pageAlignHorizontally = true;
			this.game.stage.scale.pageAlignVertically = true;
			this.game.stage.scale.forceOrientation(true,false);
			this.game.stage.scale.hasResized.add($bind(this,this.gameResized),this);
			this.game.stage.scale.enterIncorrectOrientation.add($bind(this,this.enterIncorrectOrientation),this);
			this.game.stage.scale.leaveIncorrectOrientation.add($bind(this,this.leaveIncorrectOrientation),this);
			this.game.stage.scale.setScreenSize(true);
		}
		this.game.state.start("Preloader");
	}
	,preload: function() {
		Phaser.State.prototype.preload.call(this);
		this.load.image("preloaderBackground","images/preloader_background.jpg");
		this.load.image("preloaderBar","images/preloader_bar.png");
	}
});
var FullScreenMobileGame = function() {
	Phaser.State.call(this);
};
FullScreenMobileGame.__super__ = Phaser.State;
FullScreenMobileGame.prototype = $extend(Phaser.State.prototype,{
	quitGame: function(pointer) {
		this.game.state.start("MainMenu");
	}
	,update: function() {
	}
	,create: function() {
	}
});
var Main = function() {
	var game = new Phaser.Game(1024,768,Phaser.AUTO,"game");
	game.state.add("Boot",Boot);
	game.state.add("Preloader",Preloader);
	game.state.add("MainMenu",MainMenu);
	game.state.add("Game",FullScreenMobileGame);
	game.state.start("Boot");
};
Main.main = function() {
	new Main();
}
var MainMenu = function() {
	Phaser.State.call(this);
};
MainMenu.__super__ = Phaser.State;
MainMenu.prototype = $extend(Phaser.State.prototype,{
	startGame: function(pointer) {
		this._music.stop();
		this.game.state.start("Game");
	}
	,update: function() {
	}
	,create: function() {
		this._music = this.add.audio("titleMusic");
		this._music.play();
		this.add.sprite(0,0,"titlepage");
		this._playButton = this.add.button(400,600,"playButton",$bind(this,this.startGame),this,"buttonOver","buttonOut","buttonOver");
	}
});
var Preloader = function() {
	Phaser.State.call(this);
};
Preloader.__super__ = Phaser.State;
Preloader.prototype = $extend(Phaser.State.prototype,{
	update: function() {
		if(this.cache.isSoundDecoded("titleMusic") && this._ready == false) {
			this._ready = true;
			this.game.state.start("MainMenu");
		}
	}
	,create: function() {
		this._preloadBar.cropEnabled = false;
		this.game.state.start("MainMenu");
	}
	,preload: function() {
		this._background = this.add.sprite(0,0,"preloaderBackground");
		this._preloadBar = this.add.sprite(300,400,"preloaderBar");
		this.load.setPreloadSprite(this._preloadBar,0);
		this.load.image("titlepage","images/title.jpg");
		this.load.atlas("playButton","images/play_button.png","images/play_button.json");
		this.load.audio("titleMusic",["audio/main_menu.mp3"]);
		this.load.bitmapFont("caslon","fonts/caslon.png","fonts/caslon.xml");
	}
});
var js = {}
js.Browser = function() { }
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; };
js.Browser.document = typeof window != "undefined" ? window.document : null;
Main.main();
})();
