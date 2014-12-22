package phaser.core;

@:native("Phaser.ScaleManager")
extern class ScaleManager {
	
	/**
	 * @classdesc
	 * The ScaleManager object handles the the scaling, resizing, and alignment of the
	 * Game size and the game Display canvas.
	 *
	 * The Game size is the logical size of the game; the Display canvas has size as an HTML element.
	 *
	 * The calculations of these are heavily influenced by the bounding Parent size which is the computed
	 * dimenstions of the Display canvas's Parent container/element - the _effective CSS rules of the
	 * canvas's Parent element play an important role_ in the operation of the ScaleManager. 
	 *
	 * The Display canvas - or Game size, depending {@link Phaser.ScaleManager#scaleMode scaleMode} - is updated to best utilize the Parent size.
	 * When in Fullscreen mode or with `parentIsWindow` the Parent size is that of the visual viewport (see {@link Phaser.ScaleManager#getParentBounds getParentBounds}).
	 *
	 * Parent and Display canvas containment guidelines:
	 *
	 * - Style the Parent element (of the game canvas) to control the Parent size and
	 *   thus the Display canvas's size and layout.
	 *
	 * - The Parent element's CSS styles should _effectively_ apply maximum (and minimum) bounding behavior.
	 *
	 * - The Parent element should _not_ apply a padding as this is not accounted for.
	 *   If a padding is required apply it to the Parent's parent or apply a margin to the Parent.
	 *
	 * - The Display canvas layout CSS styles (ie. margins, size) should not be altered/specified as
	 *   they may be updated by the ScaleManager.
	 *
	 * @description
	 * Create a new ScaleManager object - this is done automatically by {@link Phaser.Game}
	 *
	 * The `width` and `height` constructor parameters can either be a number which represents pixels or a string that represents a percentage: e.g. `800` (for 800 pixels) or `"80%"` for 80%.
	 *
	 * @class
	 * @param {Phaser.Game} game - A reference to the currently running game.
	 * @param {number|string} width - The width of the game. See above.
	 * @param {number|string} height - The height of the game. See above.
	 */
	function new (game:phaser.core.Game, width:Dynamic, height:Dynamic);
	
	/**
	 * A reference to the currently running game.
	 */
	var game(default, null):phaser.core.Game;
	
	/**
	 * Provides access to some cross-device DOM functions.
	 */
	var dom(default, null):phaser.system.DOM;
	
	/**
	 * <em>EXPERIMENTAL:</em> A responsive grid on which you can align game objects.
	 */
	var grid:phaser.core.FlexGrid;
	
	/**
	 * Target width (in pixels) of the Display canvas.
	 */
	var width(default, null):Float;
	
	/**
	 * Target height (in pixels) of the Display canvas.
	 */
	var height(default, null):Float;
	
	/**
	 * Minimum width the canvas should be scaled to (in pixels).
	 * Change with setMinMax.
	 */
	var minWidth(default, null):Float;
	
	/**
	 * Maximum width the canvas should be scaled to (in pixels).
	 * If null it will scale to whatever width the browser can handle.
	 * Change with setMinMax.
	 */
	var maxWidth(default, null):Float;
	
	/**
	 * Minimum height the canvas should be scaled to (in pixels).
	 * Change with setMinMax.
	 */
	var minHeight(default, null):Float;
	
	/**
	 * Maximum height the canvas should be scaled to (in pixels).
	 * If null it will scale to whatever height the browser can handle.
	 * Change with setMinMax.
	 */
	var maxHeight(default, null):Float;
	
	/**
	 * The offset coordinates of the Display canvas from the top-left of the browser window.
	 * The is used internally by Phaser.Pointer (for Input) and possibly other types.
	 */
	var offset(default, null):phaser.geom.Point;
	
	/**
	 * If true, the game should only run in a landscape orientation.
	 * Change with forceOrientation.
	 */
	var forceLandscape(default, null):Bool;
	
	/**
	 * If true, the game should only run in a portrait 
	 * Change with forceOrientation.
	 */
	var forcePortrait(default, null):Bool;
	
	/**
	 * True if the forceLandscape or forcePortrait are set and do not agree with the browser orientation.
	 * 
	 * This value is not updated immediately.
	 */
	var incorrectOrientation(default, null):Bool;
	
	/**
	 * See pageAlignHorizontally.
	 */
	var pageAlignHorizontally:Bool;
	
	/**
	 * See pageAlignVertically.
	 */
	var pageAlignVertically:Bool;
	
	/**
	 * The maximum number of times a canvas will be resized (in a row) in order to fill the browser.
	 */
	var maxIterations:Float;
	
	/**
	 * This signal is dispatched when the orientation changes <em>or</em> the validity of the current orientation changes.
	 * 
	 * The signal is supplied with the following arguments:
	 * - scale - the ScaleManager object
	 * - prevOrientation, a string - The previous orientation as per {@link Phaser.ScaleManager#screenOrientation screenOrientation}.
	 * - wasIncorrect, a boolean - True if the previous orientation was last determined to be incorrect.
	 * 
	 * Access the current orientation and validity with scale.screenOrientation and scale.incorrectOrientation.
	 * Thus the following tests can be done:
	 * 
	 * <pre>// The orientation itself changed:
	 * scale.screenOrientation !== prevOrientation
	 * // The orientation just became incorrect:
	 * scale.incorrectOrientation &amp;&amp; !wasIncorrect
	 * </pre>
	 * 
	 * It is possible that this signal is triggered after forceOrientation so the orientation
	 * correctness changes even if the orientation itself does not change.
	 * 
	 * This is signaled from preUpdate (or pauseUpdate) <em>even when</em> the game is paused.
	 */
	var onOrientationChange:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the browser enters landscape orientation, having been in portrait.
	 * 
	 * This is signaled from  preUpdate (or pauseUpdate) <em>even when</em> the game is paused.
	 */
	var enterLandscape:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the browser enters portrait orientation, having been in landscape.
	 * 
	 * This is signaled from preUpdate (or pauseUpdate) <em>even when</em> the game is paused.
	 */
	var enterPortrait:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the browser enters an incorrect orientation, as defined by forceOrientation.
	 * 
	 * This is signaled from preUpdate (or pauseUpdate) <em>even when</em> the game is paused.
	 */
	var enterIncorrectOrientation:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the browser leaves an incorrect orientation, as defined by forceOrientation.
	 * 
	 * This is signaled from preUpdate (or pauseUpdate) <em>even when</em> the game is paused.
	 */
	var leaveIncorrectOrientation:phaser.core.Signal;
	
	/**
	 * If specified, this is the DOM element on which the Fullscreen API enter request will be invoked.
	 * The target element must have the correct CSS styling and contain the Display canvas.
	 * 
	 * The elements style will be modified (ie. the width and height might be set to 100%)
	 * but it will not be added to, removed from, or repositioned within the DOM.
	 * An attempt is made to restore relevant style changes when fullscreen mode is left.
	 * 
	 * For pre-2.2.0 behavior set game.scale.fullScreenTarget = game.canvas.
	 */
	var fullScreenTarget:Dynamic;
	
	/**
	 * The fullscreen target, as created by createFullScreenTarget.
	 * This is not set if fullScreenTarget is used and is cleared when fullscreen mode ends.
	 */
	var createdFullScreenTarget:Dynamic;
	
	/**
	 * This signal is dispatched when fullscreen mode is ready to be initialized but
	 * before the fullscreen request.
	 * 
	 * The signal is passed two arguments: scale (the ScaleManager), and an object in the form {targetElement: DOMElement}.
	 * 
	 * The targetElement is the {@link Phaser.ScaleManager#fullScreenTarget fullScreenTarget} element,
	 * if such is assigned, or a new element created by {@link Phaser.ScaleManager#createFullScreenTarget createFullScreenTarget}.
	 * 
	 * Custom CSS styling or resets can be applied to targetElement as required.
	 * 
	 * If targetElement is <em>not</em> the same element as {@link Phaser.ScaleManager.fullScreenTarget}:
	 * - After initialization the Display canvas is moved onto the targetElement for
	 *   the duration of the fullscreen mode, and restored to it's original DOM location when fullscreen is exited.
	 * - The targetElement is moved/reparanted within the DOM and may have its CSS styles updated.
	 * 
	 * The behavior of a pre-assigned target element is covered in {@link Phaser.ScaleManager#fullScreenTarget fullScreenTarget}.
	 */
	var onFullScreenInit:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the browser enters or leaves fullscreen mode, if supported.
	 * 
	 * The signal is supplied with a single argument: scale (the ScaleManager). Use scale.isFullScreen to determine
	 * if currently running in Fullscreen mode.
	 */
	var onFullScreenChange:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the browser fails to enter fullscreen mode;
	 * or if the device does not support fullscreen mode and startFullScreen is invoked.
	 * 
	 * The signal is supplied with a single argument: scale (the ScaleManager).
	 */
	var onFullScreenError:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the browser enters fullscreen mode, if supported.
	 */
	var enterFullScreen:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the browser leaves fullscreen mode.
	 */
	var leaveFullScreen:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the browser fails to enter fullscreen mode;
	 * or if the device does not support fullscreen mode and startFullScreen is invoked.
	 */
	var fullScreenFailed:phaser.core.Signal;
	
	/**
	 * The <em>last known</em> orientation of the screen, as defined in the Window Screen Web API.
	 * See {@link Phaser.DOM.getScreenOrientation} for possible values.
	 */
	var screenOrientation(default, null):String;
	
	/**
	 * The <em>current</em> scale factor based on the game dimensions vs. the scaled dimensions.
	 */
	var scaleFactor(default, null):phaser.geom.Point;
	
	/**
	 * The <em>current</em> inversed scale factor. The displayed dimensions divided by the game dimensions.
	 */
	var scaleFactorInversed(default, null):phaser.geom.Point;
	
	/**
	 * The Display canvas is aligned by adjusting the margins; the last margins are stored here.
	 */
	var margin(default, null):Dynamic;
	
	/**
	 * The bounds of the scaled game. The x/y will match the offset of the canvas element and the width/height the scaled width and height.
	 */
	var bounds(default, null):phaser.geom.Rectangle;
	
	/**
	 * The aspect ratio of the scaled Display canvas.
	 */
	var aspectRatio(default, null):Float;
	
	/**
	 * The aspect ratio of the original game dimensions.
	 */
	var sourceAspectRatio(default, null):Float;
	
	/**
	 * The native browser events from Fullscreen API changes.
	 */
	var event(default, null):Dynamic;
	
	/**
	 * The edges on which to constrain the game Display/canvas in <em>addition</em> to the restrictions of the parent container.
	 * 
	 * The properties are strings and can be '', 'visual', 'layout', or 'layout-soft'.
	 * - If 'visual', the edge will be constrained to the Window / displayed screen area
	 * - If 'layout', the edge will be constrained to the CSS Layout bounds
	 * - An invalid value is treated as 'visual'
	 */
	var right:String;
	
	/**
	 * Various compatibility settings.
	 * The (auto) value indicates the setting is configured based on device and runtime information.
	 */
	var canExpandParent:Bool;
	
	/**
	 * Scale mode to be used when not in fullscreen.
	 */
	var scaleMode:Float;
	
	/**
	 * Scale mode to be used in fullscreen.
	 */
	var fullScreenScaleMode:Float;
	
	/**
	 * If the parent container of the game is the browser window (ie. document.body), rather than a div, this should set to true.
	 */
	var parentIsWindow(default, null):Bool;
	
	/**
	 * The <em>original</em> DOM element for the parent of the Display canvas.
	 * This may be different in fullscreen - see createFullScreenTarget.
	 */
	var parentNode(default, null):Dynamic;
	
	/**
	 * The scale of the game in relation to its parent container.
	 */
	var parentScaleFactor(default, null):phaser.geom.Point;
	
	/**
	 * The maximum time (in ms) between dimension update checks for the Canvas's parent element (or window).
	 * Update checks normally happen quicker in response to other events.
	 */
	var trackParentInterval:Int;
	
	/**
	 * This signal is dispatched when the size of the Display canvas changes <em>or</em> the size of the Game changes. 
	 * When invoked this is done <em>after</em> the Canvas size/position have been updated.
	 * 
	 * This signal is <em>only</em> called when a change occurs and a reflow may be required.
	 * For example, if the canvas does not change sizes because of CSS settings (such as min-width)
	 * then this signal will <em>not</em> be triggered.
	 * 
	 * Use this to handle responsive game layout options.
	 * 
	 * This is signaled from preUpdate (or pauseUpdate) <em>even when</em> the game is paused.
	 */
	var onSizeChange:phaser.core.Signal;
	
	/**
	 * The callback that will be called each the parent container resizes.
	 */
	var onResize:Dynamic;
	
	/**
	 * The context in which the onResize callback will be called.
	 */
	var onResizeContext:Dynamic;
	
	/**
	 * Information saved when fullscreen mode is started.
	 */
	var fullScreenRestore:Dynamic;
	
	/**
	 * The <em>actual</em> game dimensions, as initially set or set by setGameSize.
	 */
	var gameSize:phaser.geom.Rectangle;
	
	/**
	 * The user-supplied scale factor, used with the USER_SCALE scaling mode.
	 */
	var userScaleFactor:phaser.geom.Point;
	
	/**
	 * The user-supplied scale trim, used with the USER_SCALE scaling mode.
	 */
	var userScaleTrim:phaser.geom.Point;
	
	/**
	 * The last time the bounds were checked in preUpdate.
	 */
	var lastUpdate:Float;
	
	/**
	 * Size checks updates are delayed according to the throttle.
	 * The throttle increases to trackParentInterval over time and is used to more
	 * rapidly detect changes in certain browsers (eg. IE) while providing back-off safety.
	 */
	var updateThrottle:Int;
	
	/**
	 * The minimum throttle allowed until it has slowed down sufficiently.
	 */
	var updateThrottleReset:Int;
	
	/**
	 * The cached result of the parent (possibly window) bounds; used to invalidate sizing.
	 */
	var parentBounds:phaser.geom.Rectangle;
	
	/**
	 * The Canvas size at which the last onSizeChange signal was triggered.
	 */
	var lastReportedCanvasSize:phaser.geom.Rectangle;
	
	/**
	 * The Game size at which the last onSizeChange signal was triggered.
	 */
	var lastReportedGameSize:phaser.geom.Rectangle;
	
	/**
	 * A scale mode that stretches content to fill all available space - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	 */
	static var EXACT_FIT:Int;
	
	/**
	 * A scale mode that prevents any scaling - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	 */
	static var NO_SCALE:Int;
	
	/**
	 * A scale mode that shows the entire game while maintaining proportions - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	 */
	static var SHOW_ALL:Int;
	
	/**
	 * A scale mode that causes the Game size to change - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	 */
	static var RESIZE:Int;
	
	/**
	 * A scale mode that allows a custom scale factor - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	 */
	static var USER_SCALE:Int;
	
	/**
	 * Start the ScaleManager.
	 */
	function boot ():Void;
	
	/**
	 * Load configuration settings.
	 */
	function parseConfig (config:Dynamic):Void;
	
	/**
	 * Calculates and sets the game dimensions based on the given width and height.
	 * 
	 * This should <em>not</em> be called when in fullscreen mode.
	 */
	@:overload(function (width:Float, height:Float):Void {})
	@:overload(function (width:String, height:Float):Void {})
	@:overload(function (width:Float, height:String):Void {})
	function setupScale (width:String, height:String):Void;
	
	/**
	 * Invoked when the game is resumed.
	 */
	function _gameResumed ():Void;
	
	/**
	 * Set the actual Game size.
	 * Use this instead of directly changing game.width or game.height.
	 * 
	 * The actual physical display (Canvas element size) depends on various settings including
	 * - Scale mode
	 * - Scaling factor
	 * - Size of Canvas's parent element or CSS rules such as min-height/max-height;
	 * - The size of the Window
	 */
	function setGameSize (width:Int, height:Int):Void;
	
	/**
	 * Set a User scaling factor used in the USER_SCALE scaling mode.
	 * 
	 * The target canvas size is computed by:
	 * 
	 * <pre>canvas.width = (game.width * hScale) - hTrim
	 * canvas.height = (game.height * vScale) - vTrim
	 * </pre>
	 * 
	 * This method can be used in the {@link Phaser.ScaleManager#setResizeCallback resize callback}.
	 */
	function setUserScale (hScale:Float, vScale:Dynamic, ?hTrim:Int = 0, ?vTrim:Int = 0):Void;
	
	/**
	 * Sets the callback that will be invoked before sizing calculations.
	 * 
	 * This is the appropriate place to call setUserScale if needing custom dynamic scaling.
	 * 
	 * The callback is supplied with two arguments scale and parentBounds where scale is the ScaleManager
	 * and parentBounds, a Phaser.Rectangle, is the size of the Parent element.
	 * 
	 * This callback
	 * - May be invoked even though the parent container or canvas sizes have not changed
	 * - Unlike onSizeChange, it runs <em>before</em> the canvas is guaranteed to be updated
	 * - Will be invoked from preUpdate, <em>even when</em> the game is paused    
	 * 
	 * See onSizeChange for a better way of reacting to layout updates.
	 */
	function setResizeCallback (callback:Dynamic, context:Dynamic):Void;
	
	/**
	 * Signals a resize - IF the canvas or Game size differs from the last signal.
	 * 
	 * This also triggers updates on grid (FlexGrid) and, if in a RESIZE mode, game.state (StateManager).
	 */
	function signalSizeChange ():Void;
	
	/**
	 * Set the min and max dimensions for the Display canvas.
	 * 
	 * <em>Note:</em> The min/max dimensions are only applied in some cases
	 * - When the device is not in an incorrect orientation; or
	 * - The scale mode is EXACT_FIT when not in fullscreen
	 */
	function setMinMax (minWidth:Float, minHeight:Float, ?maxWidth:Float, ?maxHeight:Float):Void;
	
	/**
	 * The ScaleManager.preUpdate is called automatically by the core Game loop.
	 */
	function preUpdate ():Void;
	
	/**
	 * Update method while paused.
	 */
	function pauseUpdate ():Void;
	
	/**
	 * Update the dimensions taking the parent scaling factor into account.
	 */
	function updateDimensions (width:Float, height:Float, resize:Bool):Void;
	
	/**
	 * Update relevant scaling values based on the ScaleManager dimension and game dimensions,
	 * which should already be set. This does not change sourceAspectRatio.
	 */
	function updateScalingAndBounds ():Void;
	
	/**
	 * Force the game to run in only one orientation.
	 * 
	 * This enables generation of incorrect orientation signals and affects resizing but does not otherwise rotate or lock the orientation.
	 */
	function forceOrientation (forceLandscape:Bool, ?forcePortrait:Bool = false):Void;
	
	/**
	 * Classify the orientation, per getScreenOrientation.
	 */
	function classifyOrientation (orientation:String):Dynamic;
	
	/**
	 * Updates the current orientation and dispatches orientation change events.
	 */
	function updateOrientationState ():Bool;
	
	/**
	 * window.orientationchange event handler.
	 */
	function orientationChange (event:Dynamic):Void;
	
	/**
	 * window.resize event handler.
	 */
	function windowResize (event:Dynamic):Void;
	
	/**
	 * Scroll to the top - in some environments. See compatibility.scrollTo.
	 */
	function scrollTop ():Void;
	
	/**
	 * The refresh methods informs the ScaleManager that a layout refresh is required.
	 * 
	 * The ScaleManager automatically queues a layout refresh (eg. updates the Game size or Display canvas layout)
	 * when the browser is resized, the orientation changes, or when there is a detected change
	 * of the Parent size. Refreshing is also done automatically when public properties,
	 * such as scaleMode, are updated or state-changing methods are invoked.
	 * 
	 * The refresh method <em>may</em> need to be used in a few (rare) situtations when
	 * 
	 * <ul>
	 * <li>a device change event is not correctly detected; or</li>
	 * <li>the Parent size changes (and an immediate reflow is desired); or</li>
	 * <li>the ScaleManager state is updated by non-standard means.</li>
	 * </ul>
	 * 
	 * The queued layout refresh is not immediate but will run promptly in an upcoming preRender.
	 */
	function refresh ():Void;
	
	/**
	 * Updates the game / canvas position and size.
	 */
	function updateLayout ():Void;
	
	/**
	 * Returns the computed Parent size/bounds that the Display canvas is allowed/expected to fill.
	 * 
	 * If in fullscreen mode or without parent (see {@link Phaser.ScaleManager#parentIsWindow parentIsWindow}),
	 * this will be the bounds of the visual viewport itself.
	 * 
	 * This function takes the windowConstraints into consideration - if the parent is partially outside
	 * the viewport then this function may return a smaller than expected size.
	 * 
	 * Values are rounded to the nearest pixel.
	 */
	function getParentBounds (target:phaser.geom.Rectangle):phaser.geom.Rectangle;
	
	/**
	 * Update the canvas position/margins - for alignment within the parent container.
	 * 
	 * The canvas margins <em>must</em> be reset/cleared prior to invoking this.
	 */
	function alignCanvas (horizontal:Bool, vertical:Bool):Void;
	
	/**
	 * Updates the Game state / size.
	 * 
	 * The canvas margins may always be adjusted, even if alignment is not in effect.
	 */
	function reflowGame ():Void;
	
	/**
	 * Updates the Display canvas size.
	 * 
	 * The canvas margins may always be adjusted, even alignment is not in effect.
	 */
	function reflowCanvas ():Void;
	
	/**
	 * "Reset" the Display canvas and set the specified width/height.
	 */
	function resetCanvas (cssWidth:String, cssHeight:String):Void;
	
	/**
	 * Queues/marks a size/bounds check as needing to occur (from preUpdate).
	 */
	function queueUpdate (force:Bool):Void;
	
	/**
	 * Reset internal data/state.
	 */
	function reset ():Void;
	
	/**
	 * Updates the width/height to that of the window.
	 */
	function setMaximum ():Void;
	
	/**
	 * Updates the width/height such that the game is scaled proportionally.
	 */
	function setShowAll (expanding:Bool):Void;
	
	/**
	 * Updates the width/height such that the game is stretched to the available size.
	 * Honors maxWidth and maxHeight when <em>not</em> in fullscreen.
	 */
	function setExactFit ():Void;
	
	/**
	 * Creates a fullscreen target. This is called automatically as as needed when entering
	 * fullscreen mode and the resulting element is supplied to onFullScreenInit.
	 * 
	 * Use {@link Phaser.ScaleManager#onFullScreenInit onFullScreenInit} to customize the created object.
	 */
	function createFullScreenTarget ():Void;
	
	/**
	 * Start the browsers fullscreen mode - this <em>must</em> be called from a user input Pointer or Mouse event.
	 * 
	 * The Fullscreen API must be supported by the browser for this to work - it is not the same as setting
	 * the game size to fill the browser window. See compatibility.supportsFullScreen to check if the current
	 * device is reported to support fullscreen mode.
	 * 
	 * The fullScreenFailed signal will be dispatched if the fullscreen change request failed or the game does not support the Fullscreen API.
	 */
	function startFullScreen (?antialias:Bool, ?allowTrampoline:Bool):Bool;
	
	/**
	 * Stops / exits fullscreen mode, if active.
	 */
	function stopFullScreen ():Bool;
	
	/**
	 * Cleans up the previous fullscreen target, if such was automatically created.
	 * This ensures the canvas is restored to its former parent, assuming the target didn't move.
	 */
	function cleanupCreatedTarget ():Void;
	
	/**
	 * Used to prepare/restore extra fullscreen mode settings.
	 * (This does move any elements within the DOM tree.)
	 */
	function prepScreenMode (enteringFullscreen:Bool):Void;
	
	/**
	 * Called automatically when the browser enters of leaves fullscreen mode.
	 */
	function fullScreenChange (?event:Dynamic):Void;
	
	/**
	 * Called automatically when the browser fullscreen request fails;
	 * or called when a fullscreen request is made on a device for which it is not supported.
	 */
	function fullScreenError (?event:Dynamic):Void;
	
	/**
	 * Takes a Sprite or Image object and scales it to fit the given dimensions.
	 * Scaling happens proportionally without distortion to the sprites texture.
	 * The letterBox parameter controls if scaling will produce a letter-box effect or zoom the
	 * sprite until it fills the given values. Note that with letterBox set to false the scaled sprite may spill out over either
	 * the horizontal or vertical sides of the target dimensions. If you wish to stop this you can crop the Sprite.
	 */
	@:overload(function (sprite:phaser.gameobjects.Sprite, ?width:Int, ?height:Int, ?letterBox:Bool = false):Dynamic {})
	function scaleSprite (sprite:phaser.gameobjects.Image, ?width:Int, ?height:Int, ?letterBox:Bool = false):Dynamic;
	
	/**
	 * Destroys the ScaleManager and removes any event listeners.
	 * This should probably only be called when the game is destroyed.
	 */
	function destroy ():Void;
	
	/**
	 * Updates the size of the Game or the size/position of the Display canvas based on internal state.
	 * 
	 * Do not call this directly. To "refresh" the layout use {@link Phaser.ScaleManager#refresh refresh}.
	 * To precisely control the scaling/size, apply appropriate rules to the bounding Parent container or
	 * use the {@link Phaser.ScaleManager#scaleMode USER_SCALE scale mode}.
	 */
	function setScreenSize ():Void;
	
	/**
	 * The DOM element that is considered the Parent bounding element, if any.
	 * 
	 * This null if parentIsWindow is true or if fullscreen mode is entered and fullScreenTarget is specified.
	 * It will also be null if there is no game canvas or if the game canvas has no parent.
	 */
	var boundingParent(default, null):Dynamic;
	
	/**
	 * Returns the current scale mode - for normal or fullscreen operation.
	 * 
	 * See {@link Phaser.ScaleManager#scaleMode scaleMode} for the different modes allowed.
	 */
	var currentScaleMode(default, null):Float;
	
	/**
	 * Returns true if the browser is in fullscreen mode, otherwise false.
	 */
	var isFullScreen(default, null):Bool;
	
	/**
	 * Returns true if the browser is in portrait mode.
	 */
	var isPortrait(default, null):Bool;
	
	/**
	 * Returns true if the browser is in landscape mode.
	 */
	var isLandscape(default, null):Bool;
	
	/**
	 * The <em>last known</em> orientation value of the game. A value of 90 is landscape and 0 is portrait.
	 */
	var orientation(default, null):Int;
	
}
