package phaser.animation;

@:native("Phaser.FrameData")
@:publicFields
extern class FrameData {
	function new();
	function addFrame(frame:Frame):Frame;
	function getFrame(index:Int):Frame;
	function getFrameByName(name:String):Frame;
	function checkFrameName(name:String):Bool;
	function getFrameRange(start:Int, end:Int, output:Array<Frame>):Array<Frame>;
	function getFrames(frames:Dynamic, ?useNumericIndex:Bool, ?output:Array<Frame>):Array<Frame>;
	function getFrameIndexes(frames:Dynamic, ?useNumericIndex:Bool, ?output:Array<Frame>):Dynamic;
	var total(default, null):Int;
}