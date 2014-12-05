package phaser.pixi.filters;

@:native("PIXI.ConvolutionFilter")
extern class ConvolutionFilter extends phaser.pixi.filters.AbstractFilter {
	
	/**
	 * An array of values used for matrix transformation. Specified as a 9 point Array.
	 */
	var matrix:Array<Dynamic>;
	
	/**
	 * Width of the object you are transforming
	 */
	var width:Float;
	
	/**
	 * Height of the object you are transforming
	 */
	var height:Float;
	
}
