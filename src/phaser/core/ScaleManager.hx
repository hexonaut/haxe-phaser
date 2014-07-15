package phaser.core;

@:native("Phaser.ScaleManager")
extern class ScaleManager {
	
	/**
	 * The ScaleManager object is responsible for helping you manage the scaling, resizing and alignment of your game within the browser.
	 */
	function new (game:phaser.core.Game, width:Float, height:Float);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Width of the stage after calculation.
	 */
	var width:Float;
	
	/**
	 * Height of the stage after calculation.
	 */
	var height:Float;
	
	/**
	 * Minimum width the canvas should be scaled to (in pixels).
	 */
	var minWidth:Float;
	
	/**
	 * Maximum width the canvas should be scaled to (in pixels). If null it will scale to whatever width the browser can handle.
	 */
	var maxWidth:Float;
	
	/**
	 * Minimum height the canvas should be scaled to (in pixels).
	 */
	var minHeight:Float;
	
	/**
	 * Maximum height the canvas should be scaled to (in pixels). If null it will scale to whatever height the browser can handle.
	 */
	var maxHeight:Float;
	
	/**
	 * If the game should be forced to use Landscape mode, this is set to true by Game.Stage
	 */
	var forceLandscape:Bool;
	
	/**
	 * If the game should be forced to use Portrait mode, this is set to true by Game.Stage
	 */
	var forcePortrait:Bool;
	
	/**
	 * If the game should be forced to use a specific orientation and the device currently isn't in that orientation this is set to true.
	 */
	var incorrectOrientation:Bool;
	
	/**
	 * If you wish to align your game in the middle of the page then you can set this value to true.
	 * It will place a re-calculated margin-left pixel value onto the canvas element which is updated on orientation/resizing.
	 * It doesn't care about any other DOM element that may be on the page, it literally just sets the margin.
	 */
	var pageAlignHorizontally:Bool;
	
	/**
	 * If you wish to align your game in the middle of the page then you can set this value to true.
	 * It will place a re-calculated margin-left pixel value onto the canvas element which is updated on orientation/resizing.
	 * It doesn't care about any other DOM element that may be on the page, it literally just sets the margin.
	 */
	var pageAlignVertically:Bool;
	
	/**
	 * The maximum number of times it will try to resize the canvas to fill the browser.
	 */
	var maxIterations:Float;
	
	/**
	 * The Sprite that is optionally displayed if the browser enters an unsupported orientation.
	 */
	var orientationSprite:phaser.pixi.display.Sprite;
	
	/**
	 * The event that is dispatched when the browser enters landscape orientation.
	 */
	var enterLandscape:phaser.core.Signal;
	
	/**
	 * The event that is dispatched when the browser enters horizontal orientation.
	 */
	var enterPortrait:phaser.core.Signal;
	
	/**
	 * The event that is dispatched when the browser enters an incorrect orientation, as defined by forceOrientation.
	 */
	var enterIncorrectOrientation:phaser.core.Signal;
	
	/**
	 * The event that is dispatched when the browser leaves an incorrect orientation, as defined by forceOrientation.
	 */
	var leaveIncorrectOrientation:phaser.core.Signal;
	
	/**
	 * The event that is dispatched when the game scale changes.
	 */
	var hasResized:phaser.core.Signal;
	
	/**
	 * This is the DOM element that will have the Full Screen mode called on it. It defaults to the game canvas, but can be retargetted to any valid DOM element.
	 * If you adjust this property it's up to you to see it has the correct CSS applied, and that you have contained the game canvas correctly.
	 * Note that if you use a scale property of EXACT_FIT then fullScreenTarget will have its width and height style set to 100%.
	 */
	var fullScreenTarget:Dynamic;
	
	/**
	 * The event that is dispatched when the browser enters full screen mode (if it supports the FullScreen API).
	 */
	var enterFullScreen:phaser.core.Signal;
	
	/**
	 * The event that is dispatched when the browser leaves full screen mode (if it supports the FullScreen API).
	 */
	var leaveFullScreen:phaser.core.Signal;
	
	/**
	 * The orientation value of the game (as defined by window.orientation if set). 90 = landscape. 0 = portrait.
	 */
	var orientation:Float;
	
	/**
	 * The scale factor based on the game dimensions vs. the scaled dimensions.
	 */
	var scaleFactor(default, null):Dynamic;
	
	/**
	 * The inversed scale factor. The displayed dimensions divided by the game dimensions.
	 */
	var scaleFactorInversed(default, null):Dynamic;
	
	/**
	 * If the game canvas is set to align by adjusting the margin, the margin calculation values are stored in this Point.
	 */
	var margin(default, null):Dynamic;
	
	/**
	 * The bounds of the scaled game. The x/y will match the offset of the canvas element and the width/height the scaled width and height.
	 */
	var bounds(default, null):phaser.geom.Rectangle;
	
	/**
	 * The aspect ratio of the scaled game.
	 */
	var aspectRatio(default, null):Float;
	
	/**
	 * The aspect ratio (width / height) of the original game dimensions.
	 */
	var sourceAspectRatio(default, null):Float;
	
	/**
	 * The native browser events from full screen API changes.
	 */
	var event:Dynamic;
	
	/**
	 * The current scaleMode.
	 */
	var scaleMode:Float;
	
	/**
	 * Scale mode to be used in fullScreen
	 */
	var fullScreenScaleMode:Float;
	
	/**
	 * Internal cache var. Stage height when starting the game.
	 */
	var _startHeight:Float;
	
	/**
	 * Cached stage width for full screen mode.
	 */
	var _width:Float;
	
	/**
	 * Cached stage height for full screen mode.
	 */
	var _height:Float;
	
	/**
	 * Cached size interval var.
	 */
	var _check:Float;
	
	/**
	 * @constant
	 */
	static var EXACT_FIT:Float;
	
	/**
	 * @constant
	 */
	static var NO_SCALE:Float;
	
	/**
	 * @constant
	 */
	static var SHOW_ALL:Float;
	
	/**
	 * Tries to enter the browser into full screen mode.
	 * Please note that this needs to be supported by the web browser and isn't the same thing as setting your game to fill the browser.
	 */
	function startFullScreen (antialias:Bool):Void;
	
	/**
	 * Stops full screen mode if the browser is in it.
	 */
	function stopFullScreen ():Void;
	
	/**
	 * Called automatically when the browser enters of leaves full screen mode.
	 */
	function fullScreenChange (event:Dynamic):Void;
	
	/**
	 * If you need your game to run in only one orientation you can force that to happen.
	 * The optional orientationImage is displayed when the game is in the incorrect orientation.
	 */
	function forceOrientation (forceLandscape:Bool, ?forcePortrait:Bool = false, ?orientationImage:String = ''):Void;
	
	/**
	 * Checks if the browser is in the correct orientation for your game (if forceLandscape or forcePortrait have been set)
	 */
	function checkOrientationState ():Void;
	
	/**
	 * Handle window.orientationchange events
	 */
	function checkOrientation (event:Dynamic):Void;
	
	/**
	 * Handle window.resize events
	 */
	function checkResize (event:Dynamic):Void;
	
	/**
	 * Re-calculate scale mode and update screen size.
	 */
	function refresh ():Void;
	
	/**
	 * Sets the canvas style width and height values based on minWidth/Height and maxWidth/Height.
	 */
	function setSize ():Void;
	
	/**
	 * Sets this.width equal to window.innerWidth and this.height equal to window.innerHeight
	 */
	function setMaximum ():Void;
	
	/**
	 * Calculates the multiplier needed to scale the game proportionally.
	 */
	function setShowAll ():Void;
	
	/**
	 * Sets the width and height values of the canvas, no larger than the maxWidth/Height.
	 */
	function setExactFit ():Void;
	
	/**
	* Set screen size automatically based on the scaleMode.
	*/
	function setScreenSize(force:Bool):Void;
	
	/**
	 * @name Phaser.ScaleManager#isFullScreen
	 */
	var isFullScreen(default, null):Bool;
	
	/**
	 * @name Phaser.ScaleManager#isPortrait
	 */
	var isPortrait(default, null):Bool;
	
	/**
	 * @name Phaser.ScaleManager#isLandscape
	 */
	var isLandscape(default, null):Bool;
	
}
