package phaser.geom;

@:native("Phaser.Polygon")
@:publicFields
extern class Polygon {
	@:overload(function (points:Array<Float>):Void { } )
	function new(points:Array<Point>);
}