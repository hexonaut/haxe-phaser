package phaser.pixi.renderers.canvas.utils;

@:native("PIXI.CanvasTinter")
extern class CanvasTinter {
	
	/**
	 * Number of steps which will be used as a cap when rounding colors.
	 */
	static var cacheStepsPerColorChannel:Float;
	
	/**
	 * Tint cache boolean flag.
	 */
	static var convertTintToImage:Bool;
	
	/**
	 * Whether or not the Canvas BlendModes are supported, consequently the ability to tint using the multiply method.
	 */
	static var canUseMultiply:Bool;
	
}
