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
	 * If cacheAsBitmap is true the graphics object will then be rendered as if it was a sprite.
	 * This is useful if your graphics element does not change often as it will speed up the rendering of the object
	 * It is also usful as the graphics object will always be antialiased because it will be rendered using canvas
	 * Not recommended if you are constanly redrawing the graphics element.
	 */
	var cacheAsBitmap:Bool;
	
}
