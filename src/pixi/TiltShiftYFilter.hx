package pixi;

@:native("PIXI.TiltShiftYFilter")
extern class TiltShiftYFilter extends AbstractFilter {

	var blur:Float;
	
	var gradientBlur:Float;
	
	var start:Float;
	
	var end:Float;
	
	function updateDelta():Void;
	
}

