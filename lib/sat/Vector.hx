package sat;

@:native("SAT.Vector")
@:publicFields
extern class Vector {
	function new(?x:Float, ?y:Float);
	var x:Float;
	var y:Float;
	function copy(other: { x:Float, y:Float } ):Vector;
	function perp():Vector;
	function rotate(angle:Float):Vector;
	function rotatePrecalc(sin:Float, cos:Float):Vector;
	function reverse():Vector;
	function normalize():Vector;
	function add(other: { x:Float, y:Float } ):Vector;
	function sub(other: { x:Float, y:Float } ):Vector;
	function scale(x:Float, y:Float):Vector;
	function project(other: { x:Float, y:Float } ):Vector;
	function projectN(other: { x:Float, y:Float } ):Vector;
	function reflect(axis: { x:Float, y:Float } ):Vector;
	function reflectN(axis: { x:Float, y:Float } ):Vector;
	function dot(other: { x:Float, y:Float } ):Vector;
	function len2():Float;
	function len():Float;
}