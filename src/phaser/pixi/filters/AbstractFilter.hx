package phaser.pixi.filters;

@:native("PIXI.AbstractFilter")
extern class AbstractFilter {
	
	/**
	 * This is the base class for creating a PIXI filter. Currently only webGL supports filters.
	 * If you want to make a custom filter this should be your base class.
	 */
	function new (Array:Dynamic, Object:Dynamic);
	
	/**
	 * An array of passes - some filters contain a few steps this array simply stores the steps in a liniear fashion.
	 * For example the blur filter has two passes blurX and blurY.
	 */
	var passes:Dynamic;
	
	/**
	 * @property shaders
	 */
	var shaders:Dynamic;
	
	/**
	 * @property dirty
	 */
	var dirty:Dynamic;
	
	/**
	 * @property padding
	 */
	var padding:Dynamic;
	
	/**
	 * @property uniforms
	 */
	var uniforms:Dynamic;
	
	/**
	 * @property fragmentSrc
	 */
	var fragmentSrc:Dynamic;
	
}
