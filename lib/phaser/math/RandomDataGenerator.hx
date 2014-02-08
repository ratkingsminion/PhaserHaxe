package phaser.math;

@:native("Phaser.RandomDataGenerator")
@:publicFields
// call these functions via myGame.rnd!
extern class RandomDataGenerator {
	function new(?seeds:Dynamic);
	function rnd():Float;
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
	
	private var c:Float;
	private var s0:Float;
	private var s1:Float;
	private var s2:Float;
	private function hash(data:Dynamic):Float;
}