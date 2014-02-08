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
	/**
	 * returns same type as parameter frames
	 * @param	frames can be Array<Int> or Array<String>
	 * @param	useNumericIndex must be set to false when frames is Array<String>
	 */
	function getFrameIndexes(frames:Dynamic, ?useNumericIndex:Bool, ?output:Array<Frame>):Dynamic;
	var total(default, null):Int;
	
	private var _frames:Array<Frame>;
	private var _frameNames:Array<String>;
}