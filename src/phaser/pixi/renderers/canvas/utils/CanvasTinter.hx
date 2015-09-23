package phaser.pixi.renderers.canvas.utils;

@:native("PIXI.CanvasTinter")
extern class CanvasTinter {
	
	/**
	 * If the browser isn't capable of handling tinting with alpha this will be false.
	 * This property is only applicable if using tintWithPerPixel.
	 */
	static var canHandleAlpha:Bool;
	
	/**
	 * Whether or not the Canvas BlendModes are supported, consequently the ability to tint using the multiply method.
	 */
	static var canUseMultiply:Bool;
	
}
