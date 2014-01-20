package phaser.geom;

@:native("Phaser.Polygon")
@:publicFields
extern class Polygon {
	@:overload(function (points:Array<Float>):Void { } )
	/**
	 * param	points can be Array of phaser.Points or Array of Floats
	 */
	function new(points:Array<Point>);
}