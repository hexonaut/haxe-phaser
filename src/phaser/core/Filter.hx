package phaser.core;

@:native("Phaser.Filter")
extern class Filter {
	
	/**
	 * This is a base Filter class to use for any Phaser filter development.
	 */
	function new (game:phaser.core.Game, uniforms:Dynamic, fragmentSrc:Array<Dynamic>);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The const type of this object, either Phaser.WEBGL_FILTER or Phaser.CANVAS_FILTER.
	 */
	var type:Float;
	
	/**
	 * An array of passes - some filters contain a few steps this array simply stores the steps in a linear fashion.
	 * For example the blur filter has two passes blurX and blurY.
	 */
	var passes:Array<Dynamic>;
	
	/**
	 * Array an array of shaders.
	 */
	var shaders:Array<Dynamic>;
	
	/**
	 * Internal PIXI var.
	 */
	var dirty:Bool;
	
	/**
	 * Internal PIXI var.
	 */
	var padding:Float;
	
	/**
	 * The previous position of the pointer (we don't update the uniform if the same)
	 */
	var prevPoint:phaser.geom.Point;
	
	/**
	 * Default uniform mappings. Compatible with ShaderToy and GLSLSandbox.
	 */
	var uniforms:Dynamic;
	
	/**
	 * The fragment shader code.
	 */
	var fragmentSrc:Array<Dynamic>;
	
	/**
	 * Should be over-ridden.
	 */
	function init ():Void;
	
	/**
	 * Set the resolution uniforms on the filter.
	 */
	function setResolution (width:Float, height:Float):Void;
	
	/**
	 * Updates the filter.
	 */
	function update (?pointer:phaser.input.Pointer):Void;
	
	/**
	 * Clear down this Filter and null out references
	 */
	function destroy ():Void;
	
	/**
	 * @name Phaser.Filter#width
	 */
	var width:Float;
	
	/**
	 * @name Phaser.Filter#height
	 */
	var height:Float;
	
}
