package phaser.pixi.filters;

@:native("PIXI.TiltShiftYFilter")
extern class TiltShiftYFilter extends phaser.pixi.filters.AbstractFilter {
	
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
