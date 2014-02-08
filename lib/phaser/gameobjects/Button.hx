package phaser.gameobjects;
import phaser.core.Game;
import phaser.core.Signal;
import phaser.input.Pointer;
import phaser.sound.Sound;

@:native("Phaser.Button")
@:publicFields
extern class Button extends Sprite {
	/**
	 * @param	?overFrame can be String or Int
	 * @param	?outFrame can be String or Int
	 * @param	?downFrame can be String or Int
	 * @param	?upFrame can be String or Int
	 */
	function new(game:Game, ?x:Float, ?x:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Dynamic, ?outFrame:Dynamic, ?downFrame:Dynamic, ?upFrame:Dynamic);
	var onOverSound:Sound;
	var onOutSound:Sound;
	var onDownSound:Sound;
	var onUpSound:Sound;
	var onOverSoundMarker:String;
	var onOutSoundMarker:String;
	var onDownSoundMarker:String;
	var onUpSoundMarker:String;
	var onInputOver:Signal;
	var onInputOut:Signal;
	var onInputDown:Signal;
	var onInputUp:Signal;
	var freezeFrames:Bool;
	var forceOut:Bool;
	function clearFrames():Void;
	/**
	 * @param	?overFrame can be String or Int
	 * @param	?outFrame can be String or Int
	 * @param	?downFrame can be String or Int
	 * @param	?upFrame can be String or Int
	 */
	function setFrames(?overFrame:Dynamic, ?outFrame:Dynamic, ?downFrame:Dynamic, ?upFrame:Dynamic):Void;
	function setSounds(overSound:Sound, overMarker:String, downSound:Sound, downMarker:String, outSound:Sound, outMarker:String, upSound:Sound, upMarker:String):Void;
	function setOverSound(sound:Sound, marker:String):Void;
	function setOutSound(sound:Sound, marker:String):Void;
	function setUpSound(sound:Sound, marker:String):Void;
	function setDownSound(sound:Sound, marker:String):Void;
	function onInputOverHandler(sprite:Button, pointer:Pointer):Void;
	function onInputOutHandler(sprite:Button, pointer:Pointer):Void;
	function onInputDownHandler(sprite:Button, pointer:Pointer):Void;
	function onInputUpHandler(sprite:Button, pointer:Pointer, isOver:Bool):Void;
	
	private var _onOverFrameName:String;
	private var _onOutFrameName:String;
	private var _onDownFrameName:String;
	private var _onUpFrameName:String;
	private var _onOverFrameID:Int;
	private var _onOutFrameID:Int;
	private var _onDownFrameID:Int;
	private var _onUpFrameID:Int;
	private function setState(newState:Int):Void;
}