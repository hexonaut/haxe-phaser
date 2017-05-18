package pixi;

@:native("PIXI.Point")
extern class Point {

	function new(?x:Float, ?y:Float);
	
	var x:Float;
	
	var y:Float;
	
	function clone():Point;
	
	function set(x:Float, y:Float):Void;
	
}

