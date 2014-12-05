package phaser.pixi.filters;

@:native("PIXI.TiltShiftFilter")
extern class TiltShiftFilter {
	
	/**
	 * A TiltShift Filter. Manages the pass of both a TiltShiftXFilter and TiltShiftYFilter.
	 */
	function new ();
	
	/**
	 * The strength of the blur.
	 */
	var blur:Float;
	
	/**
	 * The strength of the gradient blur.
	 */
	var gradientBlur:Float;
	
	/**
	 * The Y value to start the effect at.
	 */
	var start:Float;
	
	/**
	 * The Y value to end the effect at.
	 */
	var end:Float;
	
}
