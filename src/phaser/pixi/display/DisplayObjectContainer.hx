package phaser.pixi.display;

@:native("PIXI.DisplayObjectContainer")
extern class DisplayObjectContainer extends phaser.pixi.display.DisplayObject {
	
	/**
	 * [read-only] The array of children of this container.
	 */
	var children:Dynamic;
	
	/**
	 * The width of the displayObjectContainer, setting this will actually modify the scale to achieve the value set
	 */
	var width:Float;
	
	/**
	 * The height of the displayObjectContainer, setting this will actually modify the scale to achieve the value set
	 */
	var height:Float;
	
}
