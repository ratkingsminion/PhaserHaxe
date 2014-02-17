package ;
import phaser.core.State;
import phaser.gameobjects.Sprite;

class Preloader extends State
{
	var _background:Sprite;
	var _preloadBar:Sprite;
	var _ready:Bool;

	public function new() 
	{
		super();
	}
	
	override public function preload():Void 
	{
		//	These are the assets we loaded in Boot
		//	A nice sparkly background and a loading progress bar
		_background = add.sprite(0, 0, 'preloaderBackground');
		_preloadBar = add.sprite(300, 400, 'preloaderBar');

		//	This sets the preloadBar sprite as a loader sprite.
		//	What that does is automatically crop the sprite from 0 to full-width
		//	as the files below are loaded in.
		load.setPreloadSprite(_preloadBar, 0);

		//	Here we load the rest of the assets our game needs.
		//	As this is just a Project Template I've not provided these assets, the lines below won't work as the files themselves will 404, they are just an example of use.
		load.image('titlepage', 'images/title.jpg');
		load.atlas('playButton', 'images/play_button.png', 'images/play_button.json');
		load.audio('titleMusic', ['audio/main_menu.mp3']);
		load.bitmapFont('caslon', 'fonts/caslon.png', 'fonts/caslon.xml');
		//	+ lots of other required assets here
	}
	
	override public function create():Void 
	{
		//	Once the load has finished we disable the crop because we're going to sit in the update loop for a short while as the music decodes
		_preloadBar.cropEnabled = false;
		
		//game.state.start('MainMenu');
	}
	
	override public function update():Void 
	{
		//	You don't actually need to do this, but I find it gives a much smoother game experience.
		//	Basically it will wait for our audio file to be decoded before proceeding to the MainMenu.
		//	You can jump right into the menu if you want and still play the music, but you'll have a few
		//	seconds of delay while the mp3 decodes - so if you need your music to be in-sync with your menu
		//	it's best to wait for it to decode here first, then carry on.
		
		//	If you don't have any music in your game then uncomment the game.state.start line into the create function and delete
		//	the update function completely.
		
		if (cache.isSoundDecoded('titleMusic') && _ready == false)
		{
			_ready = true;
			game.state.start('MainMenu');
		}
	}
}