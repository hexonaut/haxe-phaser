package phaser.pixi.primitives;

@:native("PIXI.Graphics")
extern class Graphics extends phaser.pixi.display.DisplayObjectContainer {
	
	/**
	 * The alpha of the fill of this graphics object
	 */
	var fillAlpha:Float;
	
	/**
	 * The width of any lines drawn
	 */
	var lineWidth:Float;
	
	/**
	 * The color of any lines drawn
	 */
	var lineColor:String;
	
	/**
	 * Graphics data
	 */
	var graphicsData:Array<Dynamic>;
	
	/**
	 * The tint applied to the graphic shape. This is a hex value
	 */
	var tint:Float;
	
	/**
	 * The blend mode to be applied to the graphic shape
	 */
	var blendMode:Float;
	
	/**
	 * Current path
	 */
	var currentPath:Dynamic;
	
	/**
	 * Array containing some WebGL-related properties used by the WebGL renderer
	 */
	var webGL:Array<Dynamic>;
	
	/**
	 * Whether this shape is being used as a mask
	 */
	var isMask:Dynamic;
	
	/**
	 * the bounds' padding used for bounds calculation
	 */
	var boundsPadding:Float;
	
}
