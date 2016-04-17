package phaser.stubs;

@:native("Phaser.DOM")
extern class DOM {
	
	/**
	 * Get the [absolute] position of the element relative to the Document.
	 * 
	 * The value may vary slightly as the page is scrolled due to rounding errors.
	 */
	function getOffset (element:Dynamic, ?point:phaser.geom.Point):phaser.geom.Point;
	
	/**
	 * A cross-browser window.scrollX.
	 */
	var scrollX(default, null):Float;
	
	/**
	 * A cross-browser window.scrollY.
	 */
	var scrollY(default, null):Float;
	
}
