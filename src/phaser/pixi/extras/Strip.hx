package phaser.pixi.extras;

@:native("PIXI.Strip")
extern class Strip extends phaser.pixi.display.DisplayObjectContainer {
	
	/**
	 * The texture of the strip
	 */
	var texture:Dynamic;
	
	/**
	 * Whether the strip is dirty or not
	 */
	var dirty:Bool;
	
	/**
	 * The blend mode to be applied to the sprite. Set to PIXI.blendModes.NORMAL to remove any blend mode.
	 */
	var blendMode:Float;
	
	/**
	 * Triangles in canvas mode are automatically antialiased, use this value to force triangles to overlap a bit with each other.
	 */
	var canvasPadding:Float;
	
	/**
	 * Different drawing buffer modes supported
	 */
	static var a0:Dynamic;
	
}
