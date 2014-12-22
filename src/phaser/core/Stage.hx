package phaser.core;

@:native("Phaser.Stage")
extern class Stage extends phaser.pixi.display.Stage {
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The name of this object.
	 */
	var name:String;
	
	/**
	 * By default if the browser tab loses focus the game will pause. You can stop that behaviour by setting this property to true.
	 */
	var disableVisibilityChange:Bool;
	
	/**
	 * If exists is true the Stage and all children are updated, otherwise it is skipped.
	 */
	var exists:Bool;
	
	/**
	 * Reset each frame, keeps a count of the total number of objects updated.
	 */
	var currentRenderOrderID:Float;
	
	/**
	 * The page visibility API event name.
	 */
	var _hiddenVar:String;
	
	/**
	 * Stage background color.
	 */
	var _backgroundColor:Float;
	
	/**
	 * Parses a Game configuration object.
	 */
	function parseConfig (config:Dynamic):Void;
	
	/**
	 * Initialises the stage and adds the event listeners.
	 */
	function boot ():Void;
	
	/**
	 * This is called automatically after the plugins preUpdate and before the State.update.
	 * Most objects have preUpdate methods and it's where initial movement and positioning is done.
	 */
	function preUpdate ():Void;
	
	/**
	 * This is called automatically after the State.update, but before particles or plugins update.
	 */
	function update ():Void;
	
	/**
	 * This is called automatically before the renderer runs and after the plugins have updated.
	 * In postUpdate this is where all the final physics calculatations and object positioning happens.
	 * The objects are processed in the order of the display list.
	 * The only exception to this is if the camera is following an object, in which case that is updated first.
	 */
	function postUpdate ():Void;
	
	/**
	 * Starts a page visibility event listener running, or window.blur/focus if not supported by the browser.
	 */
	function checkVisibility ():Void;
	
	/**
	 * This method is called when the document visibility is changed.
	 */
	function visibilityChange (event:Dynamic):Void;
	
	/**
	 * @name Phaser.Stage#backgroundColor
	 */
	var backgroundColor:Dynamic;
	
	/**
	 * Enable or disable texture smoothing for all objects on this Stage. Only works for bitmap/image textures. Smoothing is enabled by default.
	 */
	var smoothed:Bool;
	
}
