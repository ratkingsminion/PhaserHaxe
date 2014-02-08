package sat;

@:native("SAT.Response")
@:publicFields
extern class Response {
	function new();
	var a:Dynamic;
	var b:Dynamic;
	var overlapN:Vector;
	var overlapV:Vector;
	function clear():Response;
}