package phaser.input;
import phaser.core.Game;
import phaser.geom.Circle;
import phaser.geom.Point;

@:native("Phaser.Pointer")
@:publicFields
extern class Pointer {
	function new(game:Game, id:Int);
	var game:Game;
	var id:Int;
	var withinGame:Bool;
	var clientX:Float;
	var clientY:Float;
	var pageX:Float;
	var pageY:Float;
	var screenX:Float;
	var screenY:Float;
	var x:Float;
	var y:Float;
	var isMouse:Bool;
	var isDown:Bool;
	var isUp:Bool;
	var timeDown:Float;
	var timeUp:Float;
	var previousTapTime:Float;
	var totalTouches:Int;
	var msSinceLastClick:Int;
	var targetObject:Dynamic;
	var active:Bool;
	var position:Point;
	var positionDown:Point;
	var circle:Circle;
	function start(event:Dynamic):Pointer;
	function update():Void;
	/**
	 * @param	event can be MouseEvent, PointerEvent or TouchEvent
	 */
	function move(event:Dynamic):Void;
	/**
	 * @param	event can be MouseEvent, PointerEvent or TouchEvent
	 */
	function leave(event:Dynamic):Void;
	/**
	 * @param	event can be MouseEvent, PointerEvent or TouchEvent
	 */
	function stop(event:Dynamic):Void;
	function justPressed(?duration:Float):Bool;
	function justReleased(?duration:Float):Bool;
	function reset():Void;
	var duration(default, null):Float;
	var worldX(default, null):Float;
	var worldY(default, null):Float;
	
	private var _holdSent:Bool;
	private var _history:Dynamic;
	private var _nextDrop:Int;
	private var _stateReset:Bool;
}