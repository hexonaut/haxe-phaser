package phaser;

import haxe.extern.EitherType;
import js.html.Event;

/**
* The Stage controls root level display objects upon which everything is displayed.
* It also handles browser visibility handling and the pausing due to loss of focus.
*/
@:native("Phaser.Stage")
extern class Stage extends pixi.DisplayObjectContainer {

	/**
	* The Stage controls root level display objects upon which everything is displayed.
	* It also handles browser visibility handling and the pausing due to loss of focus.
	* 
	* @param game Game reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* The name of this object.
	* Default: _stage_root
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
	* Default: true
	*/
	var exists:Bool;
	
	/**
	* Reset each frame, keeps a count of the total number of objects updated.
	*/
	var currentRenderOrderID:Float;
	
	/**
	* Gets and sets the background color of the stage. The color can be given as a number: 0xff0000 or a hex string: '#ff0000'
	*/
	var backgroundColor:Dynamic;
	
	/**
	* Enable or disable texture smoothing for all objects on this Stage. Only works for bitmap/image textures. Smoothing is enabled by default. Set to true to smooth all sprites rendered on this Stage, or false to disable smoothing (great for pixel art)
	*/
	var smoothed:Bool;
	
	/**
	* Parses a Game configuration object.
	* 
	* @param config The configuration object to parse.
	*/
	function parseConfig(config:Dynamic):Void;
	
	/**
	* This is called automatically after the plugins preUpdate and before the State.update.
	* Most objects have preUpdate methods and it's where initial movement and positioning is done.
	*/
	function preUpdate():Void;
	
	/**
	* This is called automatically after the State.update, but before particles or plugins update.
	*/
	function update():Void;
	
	/**
	* This is called automatically before the renderer runs and after the plugins have updated.
	* In postUpdate this is where all the final physics calculations and object positioning happens.
	* The objects are processed in the order of the display list.
	*/
	function postUpdate():Void;
	
	/**
	* Updates the transforms for all objects on the display list.
	* This overrides the Pixi default as we don't need the interactionManager, but do need the game property check.
	*/
	@:native("updateTransform")
	function Stage_updateTransform():Void;
	
	/**
	* Starts a page visibility event listener running, or window.onpagehide/onpageshow if not supported by the browser.
	* Also listens for window.onblur and window.onfocus.
	*/
	function checkVisibility():Void;
	
	/**
	* This method is called when the document visibility is changed.
	* 
	* @param event Its type will be used to decide whether the game should be paused or not.
	*/
	function visibilityChange(event:Event):Void;
	
	/**
	* Sets the background color for the Stage.
	* 
	* The color can be given as a hex string (`'#RRGGBB'`), a CSS color string (`'rgb(r,g,b)'`), or a numeric value (`0xRRGGBB`).
	* 
	* An alpha channel is _not_ supported and will be ignored.
	* 
	* If you've set your game to be transparent then calls to setBackgroundColor are ignored.
	* 
	* @param color The color of the background.
	*/
	function setBackgroundColor(backgroundColor:EitherType<Float, String>):Void;
	
	/**
	* Destroys the Stage and removes event listeners.
	*/
	function destroy():Void;
	
}

