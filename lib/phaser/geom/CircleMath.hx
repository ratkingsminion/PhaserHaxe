package phaser.geom;

// has to be its own class because you can't overload instance methods with static functions
@:native("Phaser.Circle")
@:publicFields
extern class CircleMath {
	static function contains(a:Circle, x:Float, y:Float):Bool;
	static function equals(a:Circle, b:Circle):Bool;
	static function intersects(a:Circle, b:Circle):Bool;
	static function circumferencePoint(a:Circle, angle:Float, ?asDegrees:Bool, ?out:Point):Point;
	static function intersectsRectangle(c:Circle, r:Rectangle):Bool;
}