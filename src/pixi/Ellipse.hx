package pixi;

@:native("PIXI.Ellipse")
extern class Ellipse implements HitArea {

	function new(x:Float, y:Float, width:Float, height:Float);
	
	var x:Float;
	
	var y:Float;
	
	var width:Float;
	
	var height:Float;
	
	function clone():Ellipse;
	
	function contains(x:Float, y:Float):Bool;
	
	function getBounds():Rectangle;
	
}

