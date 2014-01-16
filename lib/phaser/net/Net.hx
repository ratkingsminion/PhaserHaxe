package phaser.net;
import phaser.core.Game;

@:native("Phaser.Net")
@:publicFields
extern class Net {
	function new(game:Game);
	var game:Game;
	function getHostName():String;
	function checkDomainName(domain:String):Bool;
	function updateQueryString(key:String, value:String, ?redirect:Bool, ?url:String):String;
	function getQueryString(?parameter:String):Dynamic;
	function decodeURI(value:String):String;
}