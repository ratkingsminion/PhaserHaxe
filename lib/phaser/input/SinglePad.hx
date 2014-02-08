package phaser.input;
import phaser.core.Game;

@:native("Phaser.SinglePad")
@:publicFields
extern class SinglePad {
	function new(game:Game, padParent:Gamepad);
	var game:Game;
	var callbackContext:Dynamic;
	var onConnectCallback:Dynamic;
	var onDisconnectCallback:Dynamic;
	var onDownCallback:Dynamic;
	var onUpCallback:Dynamic;
	var onAxisCallback:Dynamic;
	var onFloatCallback:Dynamic;
	var deadZone:Float;
	function addCallbacks(context:Dynamic, callbacks:Dynamic):Void;
	function addButton(buttonCode:Int):GamepadButton;
	function pollStatus():Void;
	function connect(rawPad:Dynamic):Void;
	function disconnect():Void;
	function processAxisChange(axisState:Dynamic):Void;
	function processButtonDown(buttonCode:Int, value:Dynamic):Void;
	function processButtonUp(buttonCode:Int, value:Dynamic):Void;
	function processButtonFloat(buttonCode:Int, value:Dynamic):Void;
	function axis(axisCode:Int):Dynamic;
	function isDown(buttonCode:Int):Bool;
	function justReleased(buttonCode:Int, ?duration:Int):Bool;
	function justPressed(buttonCode:Int, ?duration:Int):Bool;
	function buttonValue(buttonCode:Int):Dynamic;
	function reset():Void;
	var connected(default, null):Bool;
	var index(default, null):Int;

	private var _padParent:Gamepad;
	private var _index:Int;
	private var _rawPad:Dynamic;
	private var _connected:Bool;
	private var _prevTimestamp:Dynamic;
	private var _rawButtons:Dynamic;
	private var _buttons:Dynamic;
	private var _axes:Dynamic;
	private var _hotkeys:Dynamic;
}