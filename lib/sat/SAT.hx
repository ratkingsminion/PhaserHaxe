package sat;

@:native("SAT")
@:publicFields
extern class SAT
{
	static function testCircleCircle(a:Circle, b:Circle, ?response:Response):Bool;
	static function testPolygonCircle(polygon:Polygon, circle:Circle, ?response:Response):Bool;
	static function testCirclePolygon(circle:Circle, polygon:Polygon, ?response:Response):Bool;
	static function testPolygonPolygon(a:Polygon, b:Polygon, ?response:Response):Bool;
}