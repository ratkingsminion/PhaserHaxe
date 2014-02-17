package ;
import js.Browser;
import phaser.core.State;
import phaser.system.StageScaleMode;

class Boot extends State
{
	var _orientated:Bool;
 
	public function new() 
	{
		super();
	}
	
	override public function preload():Void 
	{
		load.image('preloaderBackground', 'images/preloader_background.jpg');
        load.image('preloaderBar', 'images/preloader_bar.png');
	}
	
	override public function create():Void 
	{
		game.input.maxPointers = 1;
        game.stage.disableVisibilityChange = true;

        if (game.device.desktop)
        {
            game.stage.scaleMode = StageScaleMode.SHOW_ALL;
            game.stage.scale.minWidth = 480;
            game.stage.scale.minHeight = 260;
            game.stage.scale.maxWidth = 1024;
            game.stage.scale.maxHeight = 768;
            game.stage.scale.pageAlignHorizontally = true;
            game.stage.scale.pageAlignVertically = true;
            game.stage.scale.setScreenSize(true);
        }
        else
        {
            game.stage.scaleMode = StageScaleMode.SHOW_ALL;
            game.stage.scale.minWidth = 480;
            game.stage.scale.minHeight = 260;
            game.stage.scale.maxWidth = 1024;
            game.stage.scale.maxHeight = 768;
            game.stage.scale.pageAlignHorizontally = true;
            game.stage.scale.pageAlignVertically = true;
            game.stage.scale.forceOrientation(true, false);
            game.stage.scale.hasResized.add(gameResized, this);
            game.stage.scale.enterIncorrectOrientation.add(enterIncorrectOrientation, this);
            game.stage.scale.leaveIncorrectOrientation.add(leaveIncorrectOrientation, this);
            game.stage.scale.setScreenSize(true);
        }

        game.state.start('Preloader');
	}
	
	function gameResized(width, height) 
	{
        //  This could be handy if you need to do any extra processing if the game resizes.
        //  A resize could happen if for example swapping orientation on a device.
    }

    public function enterIncorrectOrientation() 
	{
		_orientated = false;
        Browser.document.getElementById('orientation').style.display = 'block';
    }

    function leaveIncorrectOrientation() 
	{
		_orientated = true;
        Browser.document.getElementById('orientation').style.display = 'none';
    }
}