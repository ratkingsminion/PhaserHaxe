package phaser.math;

@:native("Phaser.RandomDataGenerator")
@:publicFields
extern class RandomDataGenerator {
	// call these functions via myGame.rnd!
	function new(?seeds:Dynamic);
	function sow(?seeds:Dynamic):Void;
	function integer():Int;
	function frac():Float;
	function real():Float;
	function integerInRange(min:Float, max:Float):Int;
	function realInRange(min:Float, max:Float):Float;
	function normal():Float;
	function uuid():String;
	function pick(ary:Dynamic):Dynamic;
	function weightedPick(ary:Dynamic):Dynamic;
	function timestamp(?min:Int, ?max:Int):Int;
	function angle():Int;
}