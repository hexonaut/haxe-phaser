package phaser.core;

@:native("Phaser.FlexGrid")
extern class FlexGrid {
	
	/**
	 * WARNING: This is an EXPERIMENTAL class. The API will change significantly in the coming versions and is incomplete.
	 * Please try to avoid using in production games with a long time to build.
	 * This is also why the documentation is incomplete.
	 * 
	 * FlexGrid is a a responsive grid manager that works in conjunction with the ScaleManager RESIZE scaling mode and FlexLayers
	 * to provide for game object positioning in a responsive manner.
	 */
	function new (manager:phaser.core.ScaleManager, width:Float, height:Float);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A reference to the ScaleManager.
	 */
	var manager:phaser.core.ScaleManager;
	
	/**
	 * 
	 */
	var positionFluid(default, null):Dynamic;
	
	/**
	 * The scale factor based on the game dimensions vs. the scaled dimensions.
	 */
	var scaleFluid(default, null):Dynamic;
	
}
