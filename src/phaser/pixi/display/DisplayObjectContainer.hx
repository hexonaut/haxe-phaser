package phaser.pixi.display;

@:native("PIXI.DisplayObjectContainer")
extern class DisplayObjectContainer extends phaser.pixi.display.DisplayObject {
	
	/**
	 * [read-only] The array of children of this container.
	 */
	var children:Array<DisplayObject>;
	
	/**
	 * The width of the displayObjectContainer, setting this will actually modify the scale to achieve the value set
	 */
	var width:Float;
	
	/**
	 * The height of the displayObjectContainer, setting this will actually modify the scale to achieve the value set
	 */
	var height:Float;
	
	/**
	 * Retrieves the non-global local bounds of the displayObjectContainer as a rectangle. The calculation takes all visible children into consideration.
	 */
	function getLocalBounds():phaser.geom.Rectangle;
	
}
