package phaser.pixi.geom;

@:native("PIXI.Rectangle")
extern class Rectangle {
	
	/**
	 * the Rectangle object is an area defined by its position, as indicated by its top-left corner point (x, y) and by its width and its height.
	 */
	function new (Number:Dynamic, Number:Dynamic, Number:Dynamic, Number:Dynamic);
	
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
	
}
