package phaser.math;
import phaser.gameobjects.Sprite;
import phaser.physics.arcade.Arcade;

@:native("Phaser.QuadTree")
@:publicFields
extern class QuadTree {
	function new(physicsManager:Arcade, x:Float, y:Float, width:Int, height:Int, ?maxObjects:Int, ?maxLevels:Int, ?level:Int);
	var physicsManager:Arcade;
    var ID:Int;
    var maxObjects:Int;
    var maxLevels:Int;
    var level:Int;
    var bounds: { x:Int, y:Int, width:Int, height:Int, subWidth:Int, subHeight:Int, right:Int, bottom:Int };
    var objects:Dynamic;
    var nodes:Array<QuadTree>;
	function split():Void;
	function insert(body:Dynamic):Void;
	function getIndex(rect: { x:Int, y:Int, width:Int, height:Int } ):Int;
	function retrieve(sprite:Sprite):Dynamic;
	function clear():Void;
}