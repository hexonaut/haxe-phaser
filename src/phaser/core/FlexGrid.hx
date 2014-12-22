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
	var positionCustom(default, null):phaser.geom.Point;
	
	/**
	 * The scale factor based on the game dimensions vs. the scaled dimensions.
	 */
	var scaleCustom(default, null):phaser.geom.Point;
	
	/**
	 * Sets the core game size. This resets the w/h parameters and bounds.
	 */
	function setSize (width:Float, height:Float):Void;
	
	/**
	 * A custom layer is centered on the game and maintains its aspect ratio as it scales up and down.
	 */
	function createCustomLayer (width:Float, height:Float, ?children:Dynamic):phaser.core.FlexLayer;
	
	/**
	 * A fluid layer is centered on the game and maintains its aspect ratio as it scales up and down.
	 */
	function createFluidLayer (?children:Array<Dynamic>):phaser.core.FlexLayer;
	
	/**
	 * A full layer is placed at 0,0 and extends to the full size of the game. Children are scaled according to the fluid ratios.
	 */
	function createFullLayer (?children:Array<Dynamic>):phaser.core.FlexLayer;
	
	/**
	 * A fixed layer is centered on the game and is the size of the required dimensions and is never scaled.
	 */
	function createFixedLayer (?children:Dynamic):phaser.core.FlexLayer;
	
	/**
	 * Resets the layer children references
	 */
	function reset ():Void;
	
	/**
	 * Called when the game container changes dimensions.
	 */
	function onResize (width:Float, height:Float):Void;
	
	/**
	 * Updates all internal vars such as the bounds and scale values.
	 */
	function refresh ():Void;
	
	/**
	 * Fits a sprites width to the bounds.
	 */
	function fitSprite (sprite:phaser.gameobjects.Sprite):Void;
	
	/**
	 * Call in the render function to output the bounds rects.
	 */
	function debug ():Void;
	
}
