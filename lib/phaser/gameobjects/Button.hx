package phaser.gameobjects;
import phaser.core.Game;
import phaser.core.Signal;
import phaser.input.Pointer;
import phaser.sound.Sound;

@:native("Phaser.Button")
@:publicFields
extern class Button {
	function new(game:Game, ?x:Float, ?x:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Dynamic, ?outFrame:Dynamic, ?downFrame:Dynamic);
	var type:Int;
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
	function setFrames(?overFrame:Dynamic, ?outFrame:Dynamic, ?downFrame:Dynamic):Void;
	function setSounds(overSound:Sound, overMarker:String, downSound:Sound, downMarker:String, outSound:Sound, outMarker:String, upSound:Sound, upMarker:String):Void;
	function setOverSound(sound:Sound, marker:String):Void;
	function setOutSound(sound:Sound, marker:String):Void;
	function setUpSound(sound:Sound, marker:String):Void;
	function setDownSound(sound:Sound, marker:String):Void;
	function onInputOverHandler(pointer:Pointer):Void;
	function onInputOutHandler(pointer:Pointer):Void;
	function onInputDownHandler(pointer:Pointer):Void;
	function onInputUpHandler(pointer:Pointer):Void;
}