package phaser;

import haxe.extern.EitherType;
import js.html.HtmlElement as HTMLElement;
import js.html.DivElement as HTMLDivElement;

/**
* The ScaleManager object handles the the scaling, resizing, and alignment of the
* Game size and the game Display canvas.
* 
* The Game size is the logical size of the game; the Display canvas has size as an HTML element.
* 
* The calculations of these are heavily influenced by the bounding Parent size which is the computed
* dimensions of the Display canvas's Parent container/element - the _effective CSS rules of the
* canvas's Parent element play an important role_ in the operation of the ScaleManager.
* 
* The Display canvas - or Game size, depending {@link Phaser.ScaleManager#scaleMode scaleMode} - is updated to best utilize the Parent size.
* When in Fullscreen mode or with {@link Phaser.ScaleManager#parentIsWindow parentIsWindow} the Parent size is that of the visual viewport (see {@link Phaser.ScaleManager#getParentBounds getParentBounds}).
* 
* #### Parent and Display canvas containment guidelines:
* 
* - Style the Parent element (of the game canvas) to control the Parent size and
*    thus the Display canvas's size and layout.
* 
* - The Parent element's CSS styles should _effectively_ apply maximum (and minimum) bounding behavior.
* 
* - The Parent element should _not_ apply a padding as this is not accounted for.
*    If a padding is required apply it to the Parent's parent or apply a margin to the Parent.
*    If you need to add a border, margin or any other CSS around your game container, then use a parent element and
*    apply the CSS to this instead, otherwise you'll be constantly resizing the shape of the game container.
* 
* - The Display canvas layout CSS styles (i.e. margins, size) should not be altered/specified as
*    they may be updated by the ScaleManager.
* 
* #### Example Uses
* 
* -  ##### Fixed game size; scale canvas proportionally to fill its container
* 
*     Use `scaleMode` SHOW_ALL.
* 
* -  ##### Fixed game size; stretch canvas to fill its container (uncommon)
* 
*     Use `scaleMode` EXACT_FIT.
* 
* -  ##### Fixed game size; scale canvas proportionally by some other criteria
* 
*     Use `scaleMode` USER_SCALE. Examine `parentBounds` in the {@link #setResizeCallback resize callback} and call {@link Phaser.ScaleManager#setUserScale setUserScale} if necessary.
* 
* -  ##### Fluid game/canvas size
* 
*     Use `scaleMode` RESIZE. Examine the game or canvas size from the {@link onSizeChange} signal and reposition game objects.
*/
@:native("Phaser.ScaleManager")
extern class ScaleManager {

	/**
	* Create a new ScaleManager object - this is done automatically by {@link Phaser.Game}
	* 
	* The `width` and `height` constructor parameters can either be a number which represents pixels or a string that represents a percentage: e.g. `800` (for 800 pixels) or `"80%"` for 80%.
	* 
	* @param game A reference to the currently running game.
	* @param width The width of the game. See above.
	* @param height The height of the game. See above.
	*/
	function new(game:phaser.Game, width:EitherType<Float, String>, height:EitherType<Float, String>);
	
	/**
	* A scale mode that stretches content to fill all available space - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	*/
	static var EXACT_FIT:Float;
	
	/**
	* A scale mode that prevents any scaling - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	*/
	static var NO_SCALE:Float;
	
	/**
	* A scale mode that shows the entire game while maintaining proportions - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	*/
	static var SHOW_ALL:Float;
	
	/**
	* A scale mode that causes the Game size to change - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	*/
	static var RESIZE:Float;
	
	/**
	* A scale mode that allows a custom scale factor - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
	*/
	static var USER_SCALE:Float;
	
	/**
	* The aspect ratio of the scaled Display canvas.
	*/
	var aspectRatio:Float;
	
	/**
	* The bounds of the scaled game. The x/y will match the offset of the canvas element and the width/height the scaled width and height.
	*/
	var bounds:Rectangle;
	
	/**
	* The DOM element that is considered the Parent bounding element, if any.
	* 
	* This `null` if {@link Phaser.ScaleManager#parentIsWindow parentIsWindow} is true or if fullscreen mode is entered and {@link Phaser.ScaleManager#fullScreenTarget fullScreenTarget} is specified.
	* It will also be null if there is no game canvas or if the game canvas has no parent.
	*/
	var boundingParent:HTMLElement;
	
	/**
	* Various compatibility settings.
	* A value of "(auto)" indicates the setting is configured based on device and runtime information.
	* 
	* A {@link Phaser.ScaleManager#refresh refresh} may need to be performed after making changes.
	*/
	var compatibility:{canExpandParent:Bool, clickTrampoline:String, forceMinimumDocumentHeight:Bool, noMargins:Bool, orientationFallback:Bool, scrollTo:Point, supportsFullScreen:Bool};
	
	/**
	* Returns the current scale mode - for normal or fullscreen operation.
	* 
	* See {@link Phaser.ScaleManager#scaleMode scaleMode} for the different modes allowed.
	*/
	var currentScaleMode:Float;
	
	/**
	* Provides access to some cross-device DOM functions.
	*/
	var dom:phaser.DOM;
	
	/**
	* This signal is dispatched when the browser enters an incorrect orientation, as defined by {@link Phaser.ScaleManager#forceOrientation forceOrientation}.
	* 
	* This is signaled from `preUpdate` (or `pauseUpdate`) _even when_ the game is paused.
	*/
	var enterIncorrectOrientation:Signal;
	
	/**
	* The native browser events from Fullscreen API changes.
	*/
	var event:Dynamic;
	
	/**
	* If true, the game should only run in a landscape orientation.
	* Change with {@link Phaser.ScaleManager#forceOrientation forceOrientation}.
	*/
	var forceLandscape:Bool;
	
	/**
	* If true, the game should only run in a portrait
	* Change with {@link Phaser.ScaleManager#forceOrientation forceOrientation}.
	*/
	var forcePortrait:Bool;
	
	/**
	* The scaling method used by the ScaleManager when in fullscreen.
	* 
	* See {@link Phaser.ScaleManager#scaleMode scaleMode} for the different modes allowed.
	*/
	var fullScreenScaleMode:Float;
	
	/**
	* If specified, this is the DOM element on which the Fullscreen API enter request will be invoked.
	* The target element must have the correct CSS styling and contain the Display canvas.
	* 
	* The elements style will be modified (ie. the width and height might be set to 100%)
	* but it will not be added to, removed from, or repositioned within the DOM.
	* An attempt is made to restore relevant style changes when fullscreen mode is left.
	* 
	* For pre-2.2.0 behavior set `game.scale.fullScreenTarget = game.canvas`.
	*/
	var fullScreenTarget:HTMLElement;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* _EXPERIMENTAL:_ A responsive grid on which you can align game objects.
	*/
	var grid:phaser.FlexGrid;
	
	/**
	* This boolean provides you with a way to determine if the browser is in Full Screen
	* mode (via the Full Screen API), and Phaser was the one responsible for activating it.
	* 
	* It's possible that ScaleManager.isFullScreen returns `true` even if Phaser wasn't the
	* one that made the browser go full-screen, so this flag lets you determine that.
	*/
	var hasPhaserSetFullScreen:Bool;
	
	/**
	* Target height (in pixels) of the Display canvas.
	*/
	var height:Float;
	
	/**
	* True if {@link Phaser.ScaleManager#forceLandscape forceLandscape} or {@link Phaser.ScaleManager#forcePortrait forcePortrait} are set and do not agree with the browser orientation.
	* 
	* This value is not updated immediately.
	*/
	var incorrectOrientation:Bool;
	
	/**
	* Returns true if the browser is in fullscreen mode, otherwise false.
	*/
	var isFullScreen:Bool;
	
	/**
	* Returns true if the game dimensions are landscape (width > height).
	* This is especially useful to check when using the RESIZE scale mode
	* but wanting to maintain game orientation on desktop browsers,
	* where typically the screen orientation will always be landscape regardless of the browser viewport.
	*/
	var isGameLandscape:Bool;
	
	/**
	* Returns true if the game dimensions are portrait (height > width).
	* This is especially useful to check when using the RESIZE scale mode
	* but wanting to maintain game orientation on desktop browsers,
	* where typically the screen orientation will always be landscape regardless of the browser viewport.
	*/
	var isGamePortrait:Bool;
	
	/**
	* Returns true if the screen orientation is in portrait mode.
	*/
	var isPortrait:Bool;
	
	/**
	* Returns true if the screen orientation is in landscape mode.
	*/
	var isLandscape:Bool;
	
	/**
	* This signal is dispatched when the browser leaves an incorrect orientation, as defined by {@link Phaser.ScaleManager#forceOrientation forceOrientation}.
	* 
	* This is signaled from `preUpdate` (or `pauseUpdate`) _even when_ the game is paused.
	*/
	var leaveIncorrectOrientation:Signal;
	
	/**
	* The Display canvas is aligned by adjusting the margins; the last margins are stored here.
	*/
	var margin:{left:Float, top:Float, right:Float, bottom:Float, x:Float, y:Float};
	
	/**
	* Maximum height the canvas should be scaled to (in pixels).
	* If null it will scale to whatever height the browser can handle.
	* Change with {@link Phaser.ScaleManager#setMinMax setMinMax}.
	*/
	var maxHeight:Float;
	
	/**
	* Maximum width the canvas should be scaled to (in pixels).
	* If null it will scale to whatever width the browser can handle.
	* Change with {@link Phaser.ScaleManager#setMinMax setMinMax}.
	*/
	var maxWidth:Float;
	
	/**
	* Minimum height the canvas should be scaled to (in pixels).
	* Change with {@link Phaser.ScaleManager#setMinMax setMinMax}.
	*/
	var minHeight:Float;
	
	/**
	* Minimum width the canvas should be scaled to (in pixels).
	* Change with {@link Phaser.ScaleManager#setMinMax setMinMax}.
	*/
	var minWidth:Float;
	
	/**
	* The offset coordinates of the Display canvas from the top-left of the browser window.
	* The is used internally by Phaser.Pointer (for Input) and possibly other types.
	*/
	var offset:Point;
	
	/**
	* This signal is dispatched when fullscreen mode is ready to be initialized but
	* before the fullscreen request.
	* 
	* The signal is passed two arguments: `scale` (the ScaleManager), and an object in the form `{targetElement: DOMElement}`.
	* 
	* The `targetElement` is the {@link Phaser.ScaleManager#fullScreenTarget fullScreenTarget} element,
	* if such is assigned, or a new element created by {@link Phaser.ScaleManager#createFullScreenTarget createFullScreenTarget}.
	* 
	* Custom CSS styling or resets can be applied to `targetElement` as required.
	* 
	* If `targetElement` is _not_ the same element as {@link Phaser.ScaleManager#fullScreenTarget fullScreenTarget}:
	* - After initialization the Display canvas is moved onto the `targetElement` for
	*    the duration of the fullscreen mode, and restored to it's original DOM location when fullscreen is exited.
	* - The `targetElement` is moved/re-parented within the DOM and may have its CSS styles updated.
	* 
	* The behavior of a pre-assigned target element is covered in {@link Phaser.ScaleManager#fullScreenTarget fullScreenTarget}.
	*/
	var onFullScreenInit:phaser.Signal;
	
	/**
	* This signal is dispatched when the browser enters or leaves fullscreen mode, if supported.
	* 
	* The signal is supplied with a single argument: `scale` (the ScaleManager). Use `scale.isFullScreen` to determine
	* if currently running in Fullscreen mode.
	*/
	var onFullScreenChange:phaser.Signal;
	
	/**
	* This signal is dispatched when the browser fails to enter fullscreen mode;
	* or if the device does not support fullscreen mode and `startFullScreen` is invoked.
	* 
	* The signal is supplied with a single argument: `scale` (the ScaleManager).
	*/
	var onFullScreenError:phaser.Signal;
	
	/**
	* This signal is dispatched when the orientation changes _or_ the validity of the current orientation changes.
	* 
	* The signal is supplied with the following arguments:
	* - `scale` - the ScaleManager object
	* - `prevOrientation`, a string - The previous orientation as per {@link Phaser.ScaleManager#screenOrientation screenOrientation}.
	* - `wasIncorrect`, a boolean - True if the previous orientation was last determined to be incorrect.
	* 
	* Access the current orientation and validity with `scale.screenOrientation` and `scale.incorrectOrientation`.
	* Thus the following tests can be done:
	* 
	*      // The orientation itself changed:
	*      scale.screenOrientation !== prevOrientation
	*      // The orientation just became incorrect:
	*      scale.incorrectOrientation && !wasIncorrect
	* 
	* It is possible that this signal is triggered after {@link Phaser.ScaleManager#forceOrientation forceOrientation} so the orientation
	* correctness changes even if the orientation itself does not change.
	* 
	* This is signaled from `preUpdate` (or `pauseUpdate`) _even when_ the game is paused.
	*/
	var onOrientationChange:phaser.Signal;
	
	/**
	* This signal is dispatched when the size of the Display canvas changes _or_ the size of the Game changes.
	* When invoked this is done _after_ the Canvas size/position have been updated.
	* 
	* The callback is supplied with three arguments: the Scale Manager, canvas {@link Phaser.ScaleManager#width width}, and canvas {@link Phaser.ScaleManager#height height}. (Game dimensions can be found in `scale.game.width` and `scale.game.height`.)
	* 
	* This signal is _only_ called when a change occurs and a reflow may be required.
	* For example, if the canvas does not change sizes because of CSS settings (such as min-width)
	* then this signal will _not_ be triggered.
	* 
	* Use this to handle responsive game layout options.
	* 
	* This is signaled from `preUpdate` (or `pauseUpdate`) _even when_ the game is paused.
	*/
	var onSizeChange:Signal;
	
	/**
	* When enabled the Display canvas will be horizontally-aligned _in the Parent container_ (or {@link Phaser.ScaleManager#parentIsWindow window}).
	* 
	* To align horizontally across the page the Display canvas should be added directly to page;
	* or the parent container should itself be horizontally aligned.
	* 
	* Horizontal alignment is not applicable with the {@link Phaser.ScaleManager.RESIZE RESIZE} scaling mode.
	* Default: false
	*/
	var pageAlignHorizontally:Bool;
	
	/**
	* When enabled the Display canvas will be vertically-aligned _in the Parent container_ (or {@link Phaser.ScaleManager#parentIsWindow window}).
	* 
	* To align vertically the Parent element should have a _non-collapsible_ height, such that it will maintain
	* a height _larger_ than the height of the contained Game canvas - the game canvas will then be scaled vertically
	* _within_ the remaining available height dictated by the Parent element.
	* 
	* One way to prevent the parent from collapsing is to add an absolute "min-height" CSS property to the parent element.
	* If specifying a relative "min-height/height" or adjusting margins, the Parent height must still be non-collapsible (see note).
	* 
	* _Note_: In version 2.2 the minimum document height is _not_ automatically set to the viewport/window height.
	* To automatically update the minimum document height set {@link Phaser.ScaleManager#compatibility compatibility.forceMinimumDocumentHeight} to true.
	* 
	* Vertical alignment is not applicable with the {@link Phaser.ScaleManager.RESIZE RESIZE} scaling mode.
	* Default: false
	*/
	var pageAlignVertically:Bool;
	
	/**
	* The _original_ DOM element for the parent of the Display canvas.
	* This may be different in fullscreen - see {@link Phaser.ScaleManager#createFullScreenTarget createFullScreenTarget}.
	* 
	* This should only be changed after moving the Game canvas to a different DOM parent.
	*/
	var parentNode:HTMLElement;
	
	/**
	* If the parent container of the Game canvas is the browser window itself (i.e. document.body),
	* rather than another div, this should set to `true`.
	* 
	* The {@link Phaser.ScaleManager#parentNode parentNode} property is generally ignored while this is in effect.
	*/
	var parentIsWindow:Bool;
	
	/**
	* The scale of the game in relation to its parent container.
	*/
	var parentScaleFactor:Point;
	
	/**
	* The _current_ scale factor based on the game dimensions vs. the scaled dimensions.
	*/
	var scaleFactor:Point;
	
	/**
	* The _current_ inversed scale factor. The displayed dimensions divided by the game dimensions.
	*/
	var scaleFactorInversed:Point;
	
	/**
	* The scaling method used by the ScaleManager when not in fullscreen.
	* 
	* <dl>
	*    <dt>{@link Phaser.ScaleManager.NO_SCALE}</dt>
	*    <dd>
	*        The Game display area will not be scaled - even if it is too large for the canvas/screen.
	*        This mode _ignores_ any applied scaling factor and displays the canvas at the Game size.
	*    </dd>
	*    <dt>{@link Phaser.ScaleManager.EXACT_FIT}</dt>
	*    <dd>
	*        The Game display area will be _stretched_ to fill the entire size of the canvas's parent element and/or screen.
	*        Proportions are not maintained.
	*    </dd>
	*    <dt>{@link Phaser.ScaleManager.SHOW_ALL}</dt>
	*    <dd>
	*        Show the entire game display area while _maintaining_ the original aspect ratio.
	*    </dd>
	*    <dt>{@link Phaser.ScaleManager.RESIZE}</dt>
	*    <dd>
	*        The dimensions of the game display area are changed to match the size of the parent container.
	*        That is, this mode _changes the Game size_ to match the display size.
	*        <p>
	*        Any manually set Game size (see {@link Phaser.ScaleManager#setGameSize setGameSize}) is ignored while in effect.
	*    </dd>
	*    <dt>{@link Phaser.ScaleManager.USER_SCALE}</dt>
	*    <dd>
	*        The game Display is scaled according to the user-specified scale set by {@link Phaser.ScaleManager#setUserScale setUserScale}.
	*        <p>
	*        This scale can be adjusted in the {@link Phaser.ScaleManager#setResizeCallback resize callback}
	*        for flexible custom-sizing needs.
	*    </dd>
	* </dl>
	*/
	var scaleMode:Float;
	
	/**
	* The _last known_ orientation of the screen, as defined in the Window Screen Web API.
	* See {@link Phaser.DOM.getScreenOrientation} for possible values.
	*/
	var screenOrientation:String;
	
	/**
	* The aspect ratio of the original game dimensions.
	*/
	var sourceAspectRatio:Float;
	
	/**
	* The maximum time (in ms) between dimension update checks for the Canvas's parent element (or window).
	* Update checks normally happen quicker in response to other events.
	* Default: 2000
	*/
	var trackParentInterval:Float;
	
	/**
	* Target width (in pixels) of the Display canvas.
	*/
	var width:Float;
	
	/**
	* The edges on which to constrain the game Display/canvas in _addition_ to the restrictions of the parent container.
	* 
	* The properties are strings and can be '', 'visual', 'layout', or 'layout-soft'.
	* - If 'visual', the edge will be constrained to the Window / displayed screen area
	* - If 'layout', the edge will be constrained to the CSS Layout bounds
	* - An invalid value is treated as 'visual'
	* Default: {"right":"layout","bottom":""}
	*/
	var windowConstraints:{bottom:String, right:String};
	
	/**
	* Start the ScaleManager.
	*/
	function boot():Void;
	
	/**
	* Creates a fullscreen target. This is called automatically as as needed when entering
	* fullscreen mode and the resulting element is supplied to {@link Phaser.ScaleManager#onFullScreenInit onFullScreenInit}.
	* 
	* Use {@link Phaser.ScaleManager#onFullScreenInit onFullScreenInit} to customize the created object.
	*/
	function createFullScreenTarget():HTMLDivElement;
	
	/**
	* Destroys the ScaleManager and removes any event listeners.
	* This should probably only be called when the game is destroyed.
	*/
	function destroy():Void;
	
	/**
	* Force the game to run in only one orientation.
	* 
	* This enables generation of incorrect orientation signals and affects resizing but does not otherwise rotate or lock the orientation.
	* 
	* Orientation checks are performed via the Screen Orientation API, if available in browser. This means it will check your monitor
	* orientation on desktop, or your device orientation on mobile, rather than comparing actual game dimensions. If you need to check the
	* viewport dimensions instead and bypass the Screen Orientation API then set: `ScaleManager.compatibility.orientationFallback = 'viewport'`
	* 
	* @param forceLandscape true if the game should run in landscape mode only.
	* @param forcePortrait true if the game should run in portrait mode only.
	*/
	function forceOrientation(forceLandscape:Bool, ?forcePortrait:Bool):Void;
	
	/**
	* Returns the computed Parent size/bounds that the Display canvas is allowed/expected to fill.
	* 
	* If in fullscreen mode or without parent (see {@link Phaser.ScaleManager#parentIsWindow parentIsWindow}),
	* this will be the bounds of the visual viewport itself.
	* 
	* This function takes the {@link Phaser.ScaleManager#windowConstraints windowConstraints} into consideration - if the parent is partially outside
	* the viewport then this function may return a smaller than expected size.
	* 
	* Values are rounded to the nearest pixel.
	* 
	* @param target The rectangle to update; a new one is created as needed. - Default: (new Rectangle)
	* @return The established parent bounds.
	*/
	function getParentBounds(?target:Rectangle):Rectangle;
	
	/**
	* Load configuration settings.
	* 
	* @param config The game configuration object.
	*/
	function parseConfig(config:Dynamic):Void;
	
	/**
	* The ScaleManager.preUpdate is called automatically by the core Game loop.
	*/
	function preUpdate():Void;
	
	/**
	* Update method while paused.
	*/
	function pauseUpdate():Void;
	
	/**
	* The "refresh" methods informs the ScaleManager that a layout refresh is required.
	* 
	* The ScaleManager automatically queues a layout refresh (eg. updates the Game size or Display canvas layout)
	* when the browser is resized, the orientation changes, or when there is a detected change
	* of the Parent size. Refreshing is also done automatically when public properties,
	* such as {@link Phaser.ScaleManager#scaleMode scaleMode}, are updated or state-changing methods are invoked.
	* 
	* The "refresh" method _may_ need to be used in a few (rare) situtations when
	* 
	* - a device change event is not correctly detected; or
	* - the Parent size changes (and an immediate reflow is desired); or
	* - the ScaleManager state is updated by non-standard means; or
	* - certain {@link Phaser.ScaleManager#compatibility compatibility} properties are manually changed.
	* 
	* The queued layout refresh is not immediate but will run promptly in an upcoming `preRender`.
	*/
	function refresh():Void;
	
	/**
	* Set the actual Game size.
	* Use this instead of directly changing `game.width` or `game.height`.
	* 
	* The actual physical display (Canvas element size) depends on various settings including
	* - Scale mode
	* - Scaling factor
	* - Size of Canvas's parent element or CSS rules such as min-height/max-height;
	* - The size of the Window
	* 
	* @param width _Game width_, in pixels.
	* @param height _Game height_, in pixels.
	*/
	function setGameSize(width:Float, height:Float):Void;
	
	/**
	* Sets the callback that will be invoked before sizing calculations.
	* 
	* Typically this is triggered when the Scale Manager has detected a change to the canvas's boundaries:
	* the browser window has been resized, the device has been rotated, or the parent container's size has changed.
	* At this point the Scale Manager has not resized the game or canvas yet (and may not resize them at all
	* after it makes its sizing calculations). You can read the size of the parent container from the
	* `parentBounds` argument to the callback.
	* 
	* This is the appropriate place to call {@link Phaser.ScaleManager#setUserScale setUserScale} if needing custom dynamic scaling.
	* 
	* The callback is supplied with two arguments `scale` and `parentBounds` where `scale` is the ScaleManager
	* and `parentBounds`, a Phaser.Rectangle, is the size of the Parent element.
	* 
	* This callback
	* - May be invoked even though the parent container or canvas sizes have not changed
	* - Unlike {@link Phaser.ScaleManager#onSizeChange onSizeChange}, it runs _before_ the canvas is guaranteed to be updated
	* - Will be invoked from `preUpdate`, _even when_ the game is paused
	* 
	* See {@link Phaser.ScaleManager#onSizeChange onSizeChange} for a better way of reacting to layout updates.
	* 
	* @param callback The callback that will be called each time a window.resize event happens or if set, the parent container resizes.
	* @param context The context in which the callback will be called.
	*/
	function setResizeCallback(callback:ResizeCallback, context:Dynamic):Void;
	
	/**
	* Set a User scaling factor used in the USER_SCALE scaling mode.
	* 
	* The target canvas size is computed by:
	* 
	*      canvas.width = (game.width * hScale) - hTrim
	*      canvas.height = (game.height * vScale) - vTrim
	* 
	* This method can be used in the {@link Phaser.ScaleManager#setResizeCallback resize callback}. Set `queueUpdate` and `force` to false if the resize callback is being called repeatedly.
	* 
	* @param hScale Horizontal scaling factor.
	* @param vScale Vertical scaling factor.
	* @param hTrim Horizontal trim, applied after scaling.
	* @param vTrim Vertical trim, applied after scaling.
	* @param queueUpdate Queue a size/bounds check at next preUpdate - Default: true
	* @param force Force a resize during the next preUpdate - Default: true
	*/
	function setUserScale(hScale:Float, vScale:Float, ?hTrim:Float, ?vTrim:Float, ?queueUpdate:Bool, ?force:Bool):Void;
	
	/**
	* Set the min and max dimensions for the Display canvas.
	* 
	* _Note:_ The min/max dimensions are only applied in some cases
	* - When the device is not in an incorrect orientation; or
	* - The scale mode is EXACT_FIT when not in fullscreen
	* 
	* @param minWidth The minimum width the game is allowed to scale down to.
	* @param minHeight The minimum height the game is allowed to scale down to.
	* @param maxWidth The maximum width the game is allowed to scale up to; only changed if specified.
	* @param maxHeight The maximum height the game is allowed to scale up to; only changed if specified.
	*/
	function setMinMax(minWidth:Float, minHeight:Float, ?maxWidth:Float, ?maxHeight:Float):Void;
	
	/**
	* Calculates and sets the game dimensions based on the given width and height.
	* 
	* This should _not_ be called when in fullscreen mode.
	* 
	* @param width The width of the game.
	* @param height The height of the game.
	*/
	@:overload(function(width:String, height:String):Void{})
	function setupScale(width:Float, height:Float):Void;
	
	/**
	* Takes a Sprite or Image object and scales it to fit the given dimensions.
	* Scaling happens proportionally without distortion to the sprites texture.
	* The letterBox parameter controls if scaling will produce a letter-box effect or zoom the
	* sprite until it fills the given values. Note that with letterBox set to false the scaled sprite may spill out over either
	* the horizontal or vertical sides of the target dimensions. If you wish to stop this you can crop the Sprite.
	* 
	* @param sprite The sprite we want to scale.
	* @param width The target width that we want to fit the sprite in to. If not given it defaults to ScaleManager.width.
	* @param height The target height that we want to fit the sprite in to. If not given it defaults to ScaleManager.height.
	* @param letterBox True if we want the `fitted` mode. Otherwise, the function uses the `zoom` mode.
	* @return The scaled sprite.
	*/
	@:overload(function(sprite:Image, ?width:Float, ?height:Float, ?letterBox:Bool):Sprite{})
	function scaleSprite(sprite:Sprite, ?width:Float, ?height:Float, ?letterBox:Bool):Sprite;
	
	/**
	* Start the browsers fullscreen mode - this _must_ be called from a user input Pointer or Mouse event.
	* 
	* The Fullscreen API must be supported by the browser for this to work - it is not the same as setting
	* the game size to fill the browser window. See {@link Phaser.ScaleManager#compatibility compatibility.supportsFullScreen} to check if the current
	* device is reported to support fullscreen mode.
	* 
	* The {@link Phaser.ScaleManager#fullScreenFailed fullScreenFailed} signal will be dispatched if the fullscreen change request failed or the game does not support the Fullscreen API.
	* 
	* @param antialias Changes the anti-alias feature of the canvas before jumping in to fullscreen (false = retain pixel art, true = smooth art). If not specified then no change is made. Only works in CANVAS mode.
	* @param allowTrampoline Internal argument. If `false` click trampolining is suppressed.
	* @return Returns true if the device supports fullscreen mode and fullscreen mode was attempted to be started. (It might not actually start, wait for the signals.)
	*/
	function startFullScreen(?antialias:Bool, ?allowTrampoline:Bool):Bool;
	
	/**
	* Stops / exits fullscreen mode, if active.
	* 
	* @return Returns true if the browser supports fullscreen mode and fullscreen mode will be exited.
	*/
	function stopFullScreen():Bool;
	
}

