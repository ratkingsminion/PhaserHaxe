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
	/**
	 * not yet implemented
	 */
	var rotated:Bool;
	var rotationDirection:String;
	var trimmed:Bool;
	var sourceSizeW:Int;
	var sourceSizeH:Int;
	var spriteSourceSizeX:Int;
	var spriteSourceSizeY:Int;
	var spriteSourceSizeW:Int;
	var spriteSourceSizeH:Int;
	function setTrim(trimmed:Bool, actualWidth:Int, actualHeight:Int, destX:Int, destY:Int, destWidth:Int, destHeight:Int):Void;
}