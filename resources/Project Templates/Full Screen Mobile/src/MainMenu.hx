package ;
import phaser.core.State;
import phaser.gameobjects.Button;
import phaser.input.Pointer;
import phaser.sound.Sound;

class MainMenu extends State
{
	var _music:Sound;
	var _playButton:Button;

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		//	We've already preloaded our assets, so let's kick right into the Main Menu itself.
		//	Here all we're doing is playing some music and adding a picture and button
		//	Naturally I expect you to do something significantly better :)

		_music = add.audio('titleMusic');
		_music.play();

		add.sprite(0, 0, 'titlepage');

		_playButton = add.button(400, 600, 'playButton', startGame, this, 'buttonOver', 'buttonOut', 'buttonOver');
	}
	
	override public function update():Void 
	{
		//	Do some nice funky main menu effect here
	}
	
	function startGame( pointer:Pointer ):Void
	{
		//	Ok, the Play Button has been clicked or touched, so let's stop the music (otherwise it'll carry on playing)
		_music.stop();

		//	And start the actual game
		game.state.start('Game');
	}
}