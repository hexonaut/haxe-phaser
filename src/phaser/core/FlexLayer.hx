package phaser.core;

@:native("Phaser.FlexLayer")
extern class FlexLayer extends phaser.core.Group {
	
	/**
	 * A reference to the ScaleManager.
	 */
	var manager:phaser.core.ScaleManager;
	
	/**
	 * A reference to the FlexGrid that owns this layer.
	 */
	var grid:phaser.core.FlexGrid;
	
	/**
	 * Should the FlexLayer remain through a State swap?
	 */
	var persist:Dynamic;
	
	/**
	 * @property {Phaser.Point} topLeft
	 */
	var topLeft:phaser.geom.Point;
	
	/**
	 * @property {Phaser.Point} topMiddle
	 */
	var topMiddle:phaser.geom.Point;
	
	/**
	 * @property {Phaser.Point} topRight
	 */
	var topRight:phaser.geom.Point;
	
	/**
	 * @property {Phaser.Point} bottomLeft
	 */
	var bottomLeft:phaser.geom.Point;
	
	/**
	 * @property {Phaser.Point} bottomMiddle
	 */
	var bottomMiddle:phaser.geom.Point;
	
	/**
	 * @property {Phaser.Point} bottomRight
	 */
	var bottomRight:phaser.geom.Point;
	
	/**
	 * Resize.
	 */
	function resize ():Void;
	
	/**
	 * Debug.
	 */
	function debug ():Void;
	
}
