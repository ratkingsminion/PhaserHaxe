package phaser.animation;

@:native("Phaser.Frame")
@:publicFields
extern class Frame {
	function new(index:Int, x:Int, y:Int, width:Int, height:Int, name:String, uuid:Int);
	var index:Int;
	var x:Int;
	var y:Int;
	var width:Int;
	var height:Int;
	var name:String;
	var uuid:Int;
	var centerX:Int;
	var centerY:Int;
	var distance:Float;
	var rotated:Bool; // not yet implemented
	var rotationDirection:String;
	var trimmed:Bool;
	var sourceSizeW:Float;
	var sourceSizeH:Float;
	var spriteSourceSizeX:Float;
	var spriteSourceSizeY:Float;
	var spriteSourceSizeW:Float;
	var spriteSourceSizeH:Float;
	function setTrim(trimmed:Bool, actualWidth:Int, actualHeight:Int, destX:Int, destY:Int, destWidth:Int, destHeight:Int):Void;
}