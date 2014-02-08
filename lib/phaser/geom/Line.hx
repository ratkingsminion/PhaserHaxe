package phaser.geom;
import phaser.gameobjects.Sprite;

@:native("Phaser.Line")
@:publicFields
extern class Line {
	function new(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float);
	var start:Point;
	var end:Point;
	function setTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float):Line;
	function fromSprite(startSprite:Sprite, endSprite:Sprite, ?useCenter:Bool):Line;
	function intersects(line:Line, ?asSegment:Bool, ?result:Point):Point;
	function pointOnLine(x:Float, y:Float):Bool;
	function pointOnSegment(x:Float, y:Float):Bool;
	var length(default, null):Float;
	var angle(default, null):Float;
	var slope(default, null):Float;
	var perpSlope(default, null):Float;
}