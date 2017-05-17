package pixi;

@:native("PIXI.TiltShiftXFilter")
extern class TiltShiftXFilter extends AbstractFilter {

	var blur:Float;
	
	var gradientBlur:Float;
	
	var start:Float;
	
	var end:Float;
	
	function updateDelta():Void;
	
}

