package phaser.math;

@:native("Phaser.Math")
@:publicFields
extern class Math {
	// call these functions via myGame.math or myState.math!
	var PI2(default, null):Float;
	function fuzzyEqual(a:Float, b:Float, epsilon:Float):Bool;
	function fuzzyLessThan(a:Float, b:Float, epsilon:Float):Bool;
	function fuzzyGreaterThan(a:Float, b:Float, epsilon:Float):Bool;
	function fuzzyCeil(a:Float, b:Float, epsilon:Float):Bool;
	function fuzzyFloor(a:Float, b:Float, epsilon:Float):Bool;
	function average(?param1:Float, ?param2:Float, ?param3:Float, ?param4:Float, ?param5:Float, ?param6:Float, ?param7:Float, ?param8:Float, ?param9:Float, ?param10:Float):Float;
	function truncate(n:Float):Float;
	function shear(n:Float):Float;
	function snapTo(input:Float, gap:Float, ?start:Float):Float;
	function snapToFloor(input:Float, gap:Float, ?start:Float):Float;
	function snapToCeil(input:Float, gap:Float, ?start:Float):Float;
	function snapToInArray(input:Float, arr:Array<Float>, ?sort:Bool):Float;
	function roundTo(value:Float, ?place:Float, ?base:Float):Float;
	function floorTo(value:Float, ?place:Float, ?base:Float):Float;
	function ceilTo(value:Float, ?place:Float, ?base:Float):Float;
	function interpolateFloat(a:Float, b:Float, weight:Float):Float;
	function angleBetween(x1:Float, y1:Float, x2:Float, y2:Float):Float;
	function normalizeAngle(angle:Float, ?radian:Bool):Float;
	function nearestAngleBetween(a:Float, b:Float, ?radians:Bool):Float;
	function interpolateAngles(a1:Float, a2:Float, weight:Float, ?radians:Bool, ?ease:Float->Float->Float->Float->Float):Float;
	function chanceRoll(?chance:Float):Bool;
	@:overload(function (min:Int, max:Int):Array<Int> { })
	function numberArray(min:Float, max:Float):Array<Float>;
	function maxAdd(value:Float, amount:Float, max:Float):Float;
	function minSub(value:Float, amount:Float, max:Float):Float;
	function wrap(value:Float, min:Float, max:Float):Float;
	function wrapValue(value:Float, amount:Float, max:Float):Float;
	function randomSign():Float;
	function isOdd(n:Int):Bool;
	function isEven(n:Int):Bool;
	function max(?param1:Float, ?param2:Float, ?param3:Float, ?param4:Float, ?param5:Float, ?param6:Float, ?param7:Float, ?param8:Float, ?param9:Float, ?param10:Float):Float;
	function min(?param1:Float, ?param2:Float, ?param3:Float, ?param4:Float, ?param5:Float, ?param6:Float, ?param7:Float, ?param8:Float, ?param9:Float, ?param10:Float):Float;
	function wrapAngle(angle:Float):Float;
	function angleLimit(angle:Float, min:Float, max:Float):Float;
	function linearInterpolation(v:Float, k:Float):Float;
	function bezierInterpolation(v:Float, k:Float):Float;
	function catmullRomInterpolation(v:Float, k:Float):Float;
	function linear(p0:Float, p1:Float, t:Float):Float;
	function bernstein(n:Float, i:Float):Float;
	function catmullRom(p1:Float, p1:Float, p2:Float, p3:Float, t:Float):Float;
	function difference(a:Float, b:Float):Float;
	function getRandom(objects:Dynamic, ?startIndex:Int, ?length:Int):Dynamic;
	function floor(value:Float):Float;
	function ceil(value:Float):Float;
	function sinCosGenerator(length:Float, ?sinAmplitude:Float, ?cosAmplitude:Float, ?frequency:Float): { sin:Array<Float>, cos:Array<Float>, length:Int };
	function shift(stack:Dynamic):Dynamic;
	function shuffleArray(array:Dynamic):Dynamic;
	function distance(x1:Float, y1:Float, x2:Float, y2:Float):Float;
	function distanceRounded(x1:Float, y1:Float, x2:Float, y2:Float):Float;
	function clamp(x:Float, a:Float, b:Float):Float;
	function clampBottom(x:Float, a:Float):Float;
	function within(a:Float, b:Float, tolerance:Float):Float;
	function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float):Float;
	function smoothstep(x:Float, min:Float, max:Float):Float;
	function smootherstep(x:Float, min:Float, max:Float):Float;
	function sign(x:Float):Float;
	//function degToRad():Float; // seem broken
	//function radToDeg():Float; // seem broken
}