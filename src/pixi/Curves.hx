package pixi;

@:native("PIXI.Curves")
extern class Curves {

	function new(frameCount:Float);
	
	var curves:Array<Float>;
	
	function setLinear(frameIndex:Float):Void;
	
	function setStepped(frameIndex:Float):Void;
	
	function setCurve(frameIndex:Float, cx1:Float, cy1:Float, cx2:Float, cy2:Float):Void;
	
	function getCurvePercent(frameIndex:Float, percent:Float):Float;
	
}

