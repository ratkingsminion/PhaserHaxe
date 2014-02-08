package phaser.gameobjects;
import phaser.core.Game;
import phaser.core.Group;

@:native("Phaser.DOMSprite")
@:publicFields
extern class DOMSprite {
	function new(game:Game, x:Float, y:Float, style:String);
	var game:Game;
	var exists:Bool;
	var alive:Bool;
	var group:Group;
	var name:String;
	var type:Int;
	var visible:Bool;
	
}