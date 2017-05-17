package pixi;

@:native("PIXI.Rectangle")
extern class Rectangle implements HitArea {

	function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
	
	var x:Float;
	
	var y:Float;
	
	var width:Float;
	
	var height:Float;
	
	function clone():Rectangle;
	
	function contains(x:Float, y:Float):Bool;
	
}

