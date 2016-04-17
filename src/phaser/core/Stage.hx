package phaser.core;

@:native("Phaser.Stage")
extern class Stage extends phaser.pixi.display.DisplayObjectContainer {
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The name of this object.
	 */
	var name:String;
	
	/**
	 * By default if the browser tab loses focus the game will pause.
	 * You can stop that behavior by setting this property to true.
	 * Note that the browser can still elect to pause your game if it wishes to do so,
	 * for example swapping to another browser tab. This will cause the RAF callback to halt,
	 * effectively pausing your game, even though no in-game pause event is triggered if you enable this property.
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
	 * The blur/focus event handler.
	 */
	var _onChange:Dynamic;
	
	/**
	 * Stage background color object. Populated by setBackgroundColor.
	 */
	var _bgColor:Float;
	
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
	 * Updates the transforms for all objects on the display list.
	 * This overrides the Pixi default as we don't need the interactionManager, but do need the game property check.
	 */
	function updateTransform ():Void;
	
	/**
	 * Starts a page visibility event listener running, or window.onpagehide/onpageshow if not supported by the browser.
	 * Also listens for window.onblur and window.onfocus.
	 */
	function checkVisibility ():Void;
	
	/**
	 * This method is called when the document visibility is changed.
	 */
	function visibilityChange (event:Dynamic):Void;
	
	/**
	 * Sets the background color for the Stage.
	 * 
	 * The color can be given as a hex string ('#RRGGBB'), a CSS color string ('rgb(r,g,b)'), or a numeric value (0xRRGGBB).
	 * 
	 * An alpha channel is <em>not</em> supported and will be ignored.
	 * 
	 * If you've set your game to be transparent then calls to setBackgroundColor are ignored.
	 */
	@:overload(function (color:Float):Void {})
	function setBackgroundColor (color:String):Void;
	
	/**
	 * Destroys the Stage and removes event listeners.
	 */
	function destroy ():Void;
	
	/**
	 * @name Phaser.Stage#backgroundColor
	 */
	var backgroundColor:Dynamic;
	
	/**
	 * Enable or disable texture smoothing for all objects on this Stage. Only works for bitmap/image textures. Smoothing is enabled by default.
	 */
	var smoothed:Bool;
	
}
