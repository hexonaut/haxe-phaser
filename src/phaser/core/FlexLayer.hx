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
	
}
