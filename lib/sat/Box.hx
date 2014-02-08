package sat;

@:native("SAT.Box")
@:publicFields
extern class Box {
	function new(?pos:Vector, ?w:Float, ?h:Float);
	var pos:Vector;
	var w:Float;
	var h:Float;
	function toPolygon():Polygon;
}