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
	 * The max width of this bitmap text in pixels. If the text provided is longer than the value provided, line breaks will be 
	 * automatically inserted in the last whitespace. Disable by setting value to 0.
	 */
	var maxWidth:Float;
	
	/**
	 * @property anchor
	 */
	var anchor:Dynamic;
	
	/**
	 * @property _prevAnchor
	 */
	var _prevAnchor:Dynamic;
	
	/**
	 * @property _pool
	 */
	var _pool:Dynamic;
	
	/**
	 * The dirty state of this object.
	 */
	var dirty:Bool;
	
}
