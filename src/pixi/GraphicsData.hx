package pixi;

@:native("PIXI.GraphicsData")
extern class GraphicsData {

	function new(?lineWidth:Float, ?lineColor:Float, ?lineAlpha:Float, ?fillColor:Float, ?fillAlpha:Float, ?fill:Bool, ?shape:Dynamic);
	
	var lineWidth:Float;
	
	var lineColor:Float;
	
	var lineAlpha:Float;
	
	var fillColor:Float;
	
	var fillAlpha:Float;
	
	var fill:Bool;
	
	var shape:Dynamic;
	
	var type:Float;
	
}

