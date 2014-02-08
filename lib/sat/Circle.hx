package sat;

@:native("SAT.Circle")
@:publicFields
extern class Circle {
	function new(?pos:Vector, ?r:Float);
	var pos:Vector;
	var r:Float;
}