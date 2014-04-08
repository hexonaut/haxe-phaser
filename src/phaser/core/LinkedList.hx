package phaser.core;

@:native("Phaser.LinkedList")
extern class LinkedList {
	function new ();
	var next:Dynamic;
	var prev:Dynamic;
	var first:Dynamic;
	var last:Dynamic;
	var total:Dynamic;
	function add (child:Dynamic):Dynamic;
	function remove (child:Dynamic):Void;
	function callAll (callback:Dynamic):Void;
}
