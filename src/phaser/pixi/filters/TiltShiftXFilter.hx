package phaser.pixi.filters;

@:native("PIXI.TiltShiftXFilter")
extern class TiltShiftXFilter extends phaser.pixi.filters.AbstractFilter {
	
	/**
	 * The strength of the blur.
	 */
	var blur:Float;
	
	/**
	 * The strength of the gradient blur.
	 */
	var gradientBlur:Float;
	
	/**
	 * The X value to start the effect at.
	 */
	var start:Float;
	
	/**
	 * The X value to end the effect at.
	 */
	var end:Float;
	
}
