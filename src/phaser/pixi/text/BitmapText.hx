package phaser.pixi.text;

@:native("PIXI.BitmapText")
extern class BitmapText extends phaser.pixi.display.DisplayObjectContainer {
	
	/**
	 * [read-only] The width of the overall text, different from fontSize,
	 * which is defined in the style object
	 */
	var textWidth:Float;
	
	/**
	 * [read-only] The height of the overall text, different from fontSize,
	 * which is defined in the style object
	 */
	var textHeight:Float;
	
	/**
	 * @property _pool
	 */
	var _pool:Dynamic;
	
	/**
	 * The dirty state of this object.
	 */
	var dirty:Bool;
	
}
