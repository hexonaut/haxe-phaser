package phaser.core;

@:native("Phaser.ScaleManager")
extern class ScaleManager {
	
	/**
	 * The ScaleManager object is responsible for helping you manage the scaling, resizing and alignment of your game within the browser.
	 */
	@:overload(function (game:phaser.core.Game, width:Float, height:Float):Void {})
	@:overload(function (game:phaser.core.Game, width:String, height:Float):Void {})
	@:overload(function (game:phaser.core.Game, width:Float, height:String):Void {})
	function new (game:phaser.core.Game, width:String, height:String);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * EXPERIMENTAL: A responsive grid on which you can align game objects.
	 */
	var grid:phaser.core.FlexGrid;
	
	/**
	 * Width of the game after calculation.
	 */
	var width:Float;
	
	/**
	 * Height of the game after calculation.
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
	 * Holds the offset coordinates of the Game.canvas from the top-left of the browser window (used by Input and other classes)
	 */
	var offset:Dynamic;
	
	/**
	 * Set to true if the game should only run in a landscape orientation.
	 */
	var forceLandscape:Bool;
	
	/**
	 * Set to true if the game should only run in a portrait orientation.
	 */
	var forcePortrait:Bool;
	
	/**
	 * If forceLandscape or forcePortrait are true and the browser doesn't match that orientation this is set to true.
	 */
	var incorrectOrientation:Bool;
	
	/**
	 * If you wish to align your game in the middle of the page then you can set this value to true.
	 * It will place a re-calculated margin-left pixel value onto the canvas element which is updated on orientation/resizing events.
	 * It doesn't care about any other DOM element that may be on the page, it literally just sets the margin.
	 */
	var pageAlignHorizontally:Bool;
	
	/**
	 * If you wish to align your game in the middle of the page then you can set this value to true.
	 * It will place a re-calculated margin-left pixel value onto the canvas element which is updated on orientation/resizing events.
	 * It doesn't care about any other DOM element that may be on the page, it literally just sets the margin.
	 */
	var pageAlignVertically:Bool;
	
	/**
	 * The maximum number of times it will try to resize the canvas to fill the browser.
	 */
	var maxIterations:Float;
	
	/**
	 * The event that is dispatched when the browser enters landscape orientation having been in portrait.
	 */
	var enterLandscape:phaser.core.Signal;
	
	/**
	 * The event that is dispatched when the browser enters portrait orientation having been in landscape.
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
	 * Scale mode to be used in fullScreen
	 */
	var fullScreenScaleMode:Float;
	
	/**
	 * If the parent container of the game is the browser window, rather than a div, this is set to true.
	 */
	var parentIsWindow(default, null):Bool;
	
	/**
	 * The fully parsed parent container of the game. If the parent is the browser window this will be null.
	 */
	var parentNode(default, null):Dynamic;
	
	/**
	 * The scale of the game in relation to its parent container.
	 */
	var parentScaleFactor(default, null):Dynamic;
	
	/**
	 * The interval (in ms) upon which the ScaleManager checks if the parent has changed dimensions. Only applies if scaleMode = RESIZE and the game is contained within another html element.
	 */
	var trackParentInterval:Float;
	
	/**
	 * The callback that will be called each time a window.resize event happens or if set, the parent container resizes.
	 */
	var onResize:Dynamic;
	
	/**
	 * The context in which the callback will be called.
	 */
	var onResizeContext:Dynamic;
	
	/**
	 * The current scaling method being used.
	 */
	var _scaleMode:Float;
	
	/**
	 * Cached game width for full screen mode.
	 */
	var _width:Float;
	
	/**
	 * Cached game height for full screen mode.
	 */
	var _height:Float;
	
	/**
	 * Cached size interval var.
	 */
	var _check:Float;
	
	/**
	 * The time to run the next parent bounds check.
	 */
	var _nextParentCheck:Float;
	
	/**
	 * The cached result of getBoundingClientRect from the parent.
	 */
	var _parentBounds:Dynamic;
	
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
	 * @constant
	 */
	static var RESIZE:Float;
	
	/**
	 * Parses the Game configuration object.
	 */
	function parseConfig (config:Dynamic):Void;
	
	/**
	 * Calculates and sets the game dimensions based on the given width and height.
	 */
	@:overload(function (width:Float, height:Float):Void {})
	@:overload(function (width:String, height:Float):Void {})
	@:overload(function (width:Float, height:String):Void {})
	function setupScale (width:String, height:String):Void;
	
	/**
	 * Calculates and sets the game dimensions based on the given width and height.
	 */
	function boot ():Void;
	
	/**
	 * Sets the callback that will be called when the window resize event occurs, or if set the parent container changes dimensions.
	 * Use this to handle responsive game layout options.
	 * Note that the callback will only be called if the ScaleManager.scaleMode is set to RESIZE.
	 */
	function setResizeCallback (callback:Dynamic, context:Dynamic):Void;
	
	/**
	 * The ScaleManager.preUpdate is called automatically by the core Game loop.
	 */
	function preUpdate ():Void;
	
	/**
	 * If you need your game to run in only one orientation you can force that to happen.
	 */
	function forceOrientation (forceLandscape:Bool, ?forcePortrait:Bool = false):Void;
	
	/**
	 * Checks if the browser is in the correct orientation for your game (if forceLandscape or forcePortrait have been set)
	 */
	function checkOrientationState ():Void;
	
	/**
	 * window.orientationchange event handler.
	 */
	function checkOrientation (event:Dynamic):Void;
	
	/**
	 * window.resize event handler.
	 */
	function checkResize (event:Dynamic):Void;
	
	/**
	 * Re-calculate scale mode and update screen size. This only applies if ScaleMode is not set to RESIZE.
	 */
	function refresh ():Void;
	
	/**
	 * Sets the canvas style width and height values based on minWidth/Height and maxWidth/Height.
	 */
	function setSize ():Void;
	
	/**
	 * Sets this.width equal to window.innerWidth and this.height equal to window.innerHeight.
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
	 * @name Phaser.ScaleManager#scaleMode
	 */
	var scaleMode:Float;
	
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