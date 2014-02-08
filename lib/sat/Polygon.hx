package sat;

@:native("SAT.Polygon")
@:publicFields
extern class Polygon {
	function new(?pos:Vector, ?points:Array<Vector>);
	var pos:Vector;
	var points:Array<Vector>;
	function recalc():Polygon;
	function rotate(angle:Float):Polygon;
	function scale(x:Float, y:Float):Polygon;
	function translate(x:Float, y:Float):Polygon;
}