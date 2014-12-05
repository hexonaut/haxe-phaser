package phaser.pixi.geom;

@:native("PIXI.RoundedRectangle")
extern class RoundedRectangle {
	
	/**
	 * The Rounded Rectangle object is an area defined by its position and has nice rounded corners, as indicated by its top-left corner point (x, y) and by its width and its height.
	 */
	function new (Number:Dynamic, Number:Dynamic, Number:Dynamic, Number:Dynamic, Number:Dynamic);
	
	/**
	 * @property x
	 */
	var x:Dynamic;
	
	/**
	 * @property y
	 */
	var y:Dynamic;
	
	/**
	 * @property width
	 */
	var width:Dynamic;
	
	/**
	 * @property height
	 */
	var height:Dynamic;
	
	/**
	 * @property radius
	 */
	var radius:Dynamic;
	
}
