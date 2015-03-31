package phaser.pixi.primitives;

@:native("PIXI.Graphics")
extern class Graphics extends phaser.pixi.display.DisplayObjectContainer {
	
	/**
	 * The alpha value used when filling the Graphics object.
	 */
	var fillAlpha:Float;
	
	/**
	 * The width (thickness) of any lines drawn.
	 */
	var lineWidth:Float;
	
	/**
	 * The color of any lines drawn.
	 */
	var lineColor:String;
	
	/**
	 * Graphics data
	 */
	var graphicsData:Array<Dynamic>;
	
	/**
	 * The tint applied to the graphic shape. This is a hex value. Apply a value of 0xFFFFFF to reset the tint.
	 */
	var tint:Float;
	
	/**
	 * The blend mode to be applied to the graphic shape. Apply a value of PIXI.blendModes.NORMAL to reset the blend mode.
	 */
	var blendMode:Float;
	
	/**
	 * Current path
	 */
	var currentPath:Dynamic;
	
	/**
	 * Array containing some WebGL-related properties used by the WebGL renderer.
	 */
	var webGL:Array<Dynamic>;
	
	/**
	 * Whether this shape is being used as a mask.
	 */
	var isMask:Bool;
	
	/**
	 * The bounds' padding used for bounds calculation.
	 */
	var boundsPadding:Float;
	
	/**
	 * Used to detect if the graphics object has changed. If this is set to true then the graphics object will be recalculated.
	 */
	var dirty:Bool;
	
	/**
	 * Used to detect if the webgl graphics object has changed. If this is set to true then the graphics object will be recalculated.
	 */
	var webGLDirty:Bool;
	
	/**
	 * Used to detect if the cached sprite object needs to be updated.
	 */
	var cachedSpriteDirty:Bool;
	
	/**
	 * Draws a circle.
	 */
	function drawCircle (x:Float, y:Float, diameter:Float):Dynamic;
	
}
