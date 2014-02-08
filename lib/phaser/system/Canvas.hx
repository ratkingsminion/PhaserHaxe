package phaser.system;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.HtmlElement;
import phaser.geom.Point;

@:native("Phaser.Canvas")
@:publicFields
extern class Canvas {
	static function create(?width:Float, ?height:Float, ?id:String):CanvasElement;
	static function getOffset(element:HtmlElement, ?point:Point):Point;
	static function getAspectRatio(canvas:CanvasElement):Float;
	static function setBackgroundColor(canvas:CanvasElement, ?color:String):CanvasElement;
	static function setTouchAction(canvas:CanvasElement, ?value:String):CanvasElement;
	static function setUserSelect(canvas:CanvasElement, ?value:String):CanvasElement;
	static function addToDOM(canvas:CanvasElement, ?parent:Dynamic, ?overflowHidden:Bool):CanvasElement;
	static function setTransform(context:CanvasRenderingContext2D, translateX:Float, translateY:Float, scaleX:Float, scaleY:Float, skewX:Float, skewY:Float):CanvasRenderingContext2D;
	static function setSmoothingEnabled(context:CanvasRenderingContext2D, value:Bool):CanvasRenderingContext2D;
	static function setImageRenderingCrisp(canvas:CanvasElement):CanvasElement;
	static function setImageRenderingBicubic(canvas:CanvasElement):CanvasElement;
}