package phaser.gameobjects;
import phaser.core.Game;

@:native("Phaser.Graphics")
@:publicFields
extern class Graphics {
	function new(game:Game, x:Float, y:Float);
	var game:Game;
	var type:Int;
	var position: { x:Float, y:Float };
	function destroy():Void;
	function drawPolygon(poly:Dynamic):Void; // can be Phaser.Polygon or PIXI.Polygon
	var angle(default, default):Float;
	var x(default, default):Float;
	var y(default, default):Float;
}