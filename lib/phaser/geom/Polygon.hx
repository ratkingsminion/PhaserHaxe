package phaser.geom;

@:native("Phaser.Polygon")
@:publicFields
extern class Polygon { // TODO extends PIXI.Polygon
	/**
	 * param	points can be Array<Point> or Array<Float>
	 */
	function new(points:Dynamic);
	var type:Int;
}