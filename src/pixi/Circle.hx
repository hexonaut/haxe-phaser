package pixi;

@:native("PIXI.Circle")
extern class Circle implements HitArea {

	function new(x:Float, y:Float, radius:Float);
	
	var x:Float;
	
	var y:Float;
	
	var radius:Float;
	
	function clone():Circle;
	
	function contains(x:Float, y:Float):Bool;
	
	function getBounds():Rectangle;
	
}

