package phaser.system;
import phaser.core.Game;

@:native("Phaser.RequestAnimationFrame")
@:publicFields
extern class RequestAnimationFrame {
	function new(game:Game);
	var game:Game;
	var isRunning:Bool;
	var vendors:Array<String>;
	function start():Void;
	function updateRAF(time:Int):Void;
	function updateSetTimeout():Void;
	function stop():Void;
	function isSetTimeOut():Bool;
	function isRAF():Bool;
	
	private var _isSetTimeOut:Bool;
	private var _onLoop:Dynamic;
	private var _timeOutID:Int;
}