package phaser.geom;

@:native("Phaser.Line")
@:publicFields
extern class LineMath {
	static function intersectsPoints(a:Point, b:Point, e:Point, f:Point, ?asSegment:Bool, ?result:Point):Point;
	static function intersects(a:Line, b:Line, ?asSegment:Bool, ?result:Point):Point;
}