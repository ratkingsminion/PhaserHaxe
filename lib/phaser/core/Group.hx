package phaser.core;
import phaser.gameobjects.Sprite;
import phaser.geom.Point;

@:native("Phaser.Group")
@:publicFields
extern class Group {
	function new(game:Game, ?parent:Dynamic, ?name:String, ?useStage:Bool);
	var game:Game;
	var name:String;
	var alive:Bool;
	var exists:Bool;
	var group:Group;
	var scale:Point;
	var pivot:Point;
	var cursor:Dynamic;
	static var RETURN_NONE(default, null):Int;
	static var RETURN_TOTAL(default, null):Int;
	static var RETURN_CHILD(default, null):Int;
	static var SORT_ASCENDING(default, null):Int;
	static var SORT_DESCENDING(default, null):Int;
	function add(child:Dynamic):Dynamic;
	function addAt(child:Dynamic, index:Int):Dynamic;
	function getAt(index:Int):Dynamic;
	/**
	 * @param	frame can be Int or String
	 */
	function create(x:Float, y:Float, key:String, frame:Dynamic, ?exists:Bool):Sprite;
	/**
	 * @param	frame can be Int or String
	 */
	function createMultiple(quantity:Int, key:String, ?frame:Dynamic, ?exists:Bool):Void;
	function next():Void;
	function previous():Void;
	function childText():Void;
	function swapIndex(index1:Int, index2:Int):Void;
	function swap(child1:Dynamic, child2:Dynamic):Bool;
	function bringToTop(child:Dynamic):Dynamic;
	function getIndex(child:Dynamic):Int;
	function replace(oldChild:Dynamic, newChild:Dynamic):Void;
	function setProperty(child:Dynamic, key:Array<String>, value:Dynamic, ?operation:Int):Void;
	function set(child:Sprite, key:Array<String>, value:Dynamic, ?checkAlive:Bool, ?checkVisible:Bool, ?operation:Int):Void;
	function setAll(key:String, value:Dynamic, ?checkAlive:Bool, ?checkVisible:Bool, ?operation:Int):Void;
	function addAll(property:String, amount:Int, ?checkAlive:Bool, ?checkVisible:Bool):Void;
	function subAll(property:String, amount:Int, ?checkAlive:Bool, ?checkVisible:Bool):Void;
	function multiplyAll(property:String, amount:Int, ?checkAlive:Bool, ?checkVisible:Bool):Void;
	function divideAll(property:String, amount:Int, ?checkAlive:Bool, ?checkVisible:Bool):Void;
	function callAllExists(callback:Dynamic, existsValue:Bool, ?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic):Void; // if you want more parameters, just add them.
	function callAll(method:String, ?context:String, ?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic):Void;
	function forEach(callback:Dynamic, callbackContext:Dynamic, ?checkExists:Bool, ?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic):Void;
	function forEachExists(callback:Dynamic, callbackContext:Dynamic, ?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic):Void;
	function forEachAlive(callback:Dynamic, callbackContext:Dynamic, ?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic):Void;
	function forEachDead(callback:Dynamic, callbackContext:Dynamic, ?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic):Void;
	function sort(index:String, ?order:Int):Void;
	function iterate(key:String, value:Dynamic, returnType:Int, ?callback:Dynamic, ?callbackContext:Dynamic, ?param1:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic, ?param6:Dynamic):Dynamic;
	function getFirstExists(state:Bool):Dynamic;
	function getFirstAlive():Dynamic;
	function getFirstDead():Dynamic;
	function countLiving():Int;
	function countDead():Int;
	function getRandom(?startIndex:Int, ?length:Int):Dynamic;
	function remove(child:Dynamic):Bool;
	function removeAll():Void;
	function removeBetween(startIndex:Int, endIndex:Int):Void;
	function destroy():Void;
	function dump(?full:Bool):Void;
	var total(default, null):Int;
	var length(default, null):Int;
	var x(default, default):Float;
	var y(default, default):Float;
	var angle(default, default):Float;
	var rotation(default, default):Float;
	var visible(default, default):Bool;
	var alpha(default, default):Float;
	
	private var _container:Dynamic;
	private var type:Int;
	private function callbackFromArray(child:Dynamic, callback:Array<String>, length:Int):Void;
	private function validate():Bool;
}