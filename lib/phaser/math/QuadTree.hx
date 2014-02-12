package phaser.math;
import phaser.core.Group;
import phaser.gameobjects.Sprite;

@:native("Phaser.QuadTree")
@:publicFields
extern class QuadTree {
	function new(x:Float, y:Float, width:Int, height:Int, ?maxObjects:Int, ?maxLevels:Int, ?level:Int);
	var maxObjects:Int;
	var maxLevels:Int;
	var level:Int;
	var bounds: { x:Int, y:Int, width:Int, height:Int, subWidth:Int, subHeight:Int, right:Int, bottom:Int };
	var objects:Dynamic;
	var nodes:Array<QuadTree>;
	function populate(group:Group):Void;
	function populateHandler(sprite:Sprite):Void;
	function split():Void;
	/**
	 * @param	body can be physics.arcade.Body or Object
	 */
	function insert(body:Dynamic):Void;
	function getIndex(rect: { x:Int, y:Int, width:Int, height:Int } ):Int;
	function retrieve(sprite:Sprite):Dynamic;
	function clear():Void;
}