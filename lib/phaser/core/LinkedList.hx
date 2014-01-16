package phaser.core;

@:native("Phaser.LinkedList")
@:publicFields
extern class LinkedList {
	function new();
	var next:Dynamic;
	var prev:Dynamic;
	var first:Dynamic;
	var last:Dynamic;
	var total:Dynamic;
	function add(child:Dynamic):Dynamic;
	function remove(child:Dynamic):Dynamic;
	function callAll(callback:Dynamic):Void;
	
}