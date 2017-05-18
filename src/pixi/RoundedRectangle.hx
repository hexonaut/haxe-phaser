package pixi;

@:native("PIXI.RoundedRectangle")
extern class RoundedRectangle implements HitArea {

	function new(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?radius:Float);
	
	var x:Float;
	
	var y:Float;
	
	var width:Float;
	
	var height:Float;
	
	var radius:Float;
	
	function clone():RoundedRectangle;
	
	function contains(x:Float, y:Float):Bool;
	
}

