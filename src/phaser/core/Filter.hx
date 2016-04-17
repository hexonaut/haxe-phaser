package phaser.core;

@:native("Phaser.Filter")
extern class Filter {
	
	/**
	 * This is a base Filter class to use for any Phaser filter development.
	 * 
	 * The vast majority of filters (including all of those that ship with Phaser) use fragment shaders, and
	 * therefore only work in WebGL and are not supported by Canvas at all.
	 */
	@:overload(function (game:phaser.core.Game, uniforms:Dynamic, fragmentSrc:Array<Dynamic>):Void {})
	function new (game:phaser.core.Game, uniforms:Dynamic, fragmentSrc:String);
	
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
	var fragmentSrc:Dynamic;
	
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
	function update (?pointer:Dynamic):Void;
	
	/**
	 * Creates a new Phaser.Image object using a blank texture and assigns 
	 * this Filter to it. The image is then added to the world.
	 * 
	 * If you don't provide width and height values then Filter.width and Filter.height are used.
	 * 
	 * If you do provide width and height values then this filter will be resized to match those
	 * values.
	 */
	function addToWorld (?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?anchorX:Float = 0, ?anchorY:Float = 0):phaser.gameobjects.Image;
	
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
