package phaser.input;

@:native("Phaser.Pointer")
extern class Pointer {
	
	/**
	 * A Pointer object is used by the Mouse, Touch and MSPoint managers and represents a single finger on the touch screen.
	 */
	function new (game:phaser.core.Game, id:Float);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The ID of the Pointer object within the game. Each game can have up to 10 active pointers.
	 */
	var id:Float;
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * A Pointer object that exists is allowed to be checked for physics collisions and overlaps.
	 */
	var exists:Bool;
	
	/**
	 * The identifier property of the Pointer as set by the DOM event when this Pointer is started.
	 */
	var identifier:Float;
	
	/**
	 * The pointerId property of the Pointer as set by the DOM event when this Pointer is started. The browser can and will recycle this value.
	 */
	var pointerId:Float;
	
	/**
	 * The target property of the Pointer as set by the DOM event when this Pointer is started.
	 */
	var target:Dynamic;
	
	/**
	 * The button property of the Pointer as set by the DOM event when this Pointer is started.
	 */
	var button:Dynamic;
	
	/**
	 * Local private variable to store the status of dispatching a hold event.
	 */
	var _holdSent:Bool;
	
	/**
	 * Local private variable storing the short-term history of pointer movements.
	 */
	var _history:Array<Dynamic>;
	
	/**
	 * Local private variable storing the time at which the next history drop should occur.
	 */
	var _nextDrop:Float;
	
	/**
	 * Monitor events outside of a state reset loop.
	 */
	var _stateReset:Bool;
	
	/**
	 * true if the Pointer is over the game canvas, otherwise false.
	 */
	var withinGame:Bool;
	
	/**
	 * The horizontal coordinate of the Pointer within the application's client area at which the event occurred (as opposed to the coordinates within the page).
	 */
	var clientX:Float;
	
	/**
	 * The vertical coordinate of the Pointer within the application's client area at which the event occurred (as opposed to the coordinates within the page).
	 */
	var clientY:Float;
	
	/**
	 * The horizontal coordinate of the Pointer relative to whole document.
	 */
	var pageX:Float;
	
	/**
	 * The vertical coordinate of the Pointer relative to whole document.
	 */
	var pageY:Float;
	
	/**
	 * The horizontal coordinate of the Pointer relative to the screen.
	 */
	var screenX:Float;
	
	/**
	 * The vertical coordinate of the Pointer relative to the screen.
	 */
	var screenY:Float;
	
	/**
	 * The horizontal raw relative movement of the Pointer in pixels since last event.
	 */
	var rawMovementX:Float;
	
	/**
	 * The vertical raw relative movement of the Pointer in pixels since last event.
	 */
	var rawMovementY:Float;
	
	/**
	 * The horizontal processed relative movement of the Pointer in pixels since last event.
	 */
	var movementX:Float;
	
	/**
	 * The vertical processed relative movement of the Pointer in pixels since last event.
	 */
	var movementY:Float;
	
	/**
	 * The horizontal coordinate of the Pointer. This value is automatically scaled based on the game scale.
	 */
	var x:Float;
	
	/**
	 * The vertical coordinate of the Pointer. This value is automatically scaled based on the game scale.
	 */
	var y:Float;
	
	/**
	 * If the Pointer is a mouse this is true, otherwise false.
	 */
	var isMouse:Bool;
	
	/**
	 * If the Pointer is touching the touchscreen, or the mouse button is held down, isDown is set to true.
	 */
	var isDown:Bool;
	
	/**
	 * If the Pointer is not touching the touchscreen, or the mouse button is up, isUp is set to true.
	 */
	var isUp:Bool;
	
	/**
	 * A timestamp representing when the Pointer first touched the touchscreen.
	 */
	var timeDown:Float;
	
	/**
	 * A timestamp representing when the Pointer left the touchscreen.
	 */
	var timeUp:Float;
	
	/**
	 * A timestamp representing when the Pointer was last tapped or clicked.
	 */
	var previousTapTime:Float;
	
	/**
	 * The total number of times this Pointer has been touched to the touchscreen.
	 */
	var totalTouches:Float;
	
	/**
	 * The number of milliseconds since the last click or touch event.
	 */
	var msSinceLastClick:Float;
	
	/**
	 * The Game Object this Pointer is currently over / touching / dragging.
	 */
	var targetObject:Dynamic;
	
	/**
	 * An active pointer is one that is currently pressed down on the display. A Mouse is always active.
	 */
	var active:Bool;
	
	/**
	 * A dirty pointer needs to re-poll any interactive objects it may have been over, regardless if it has moved or not.
	 */
	var dirty:Bool;
	
	/**
	 * A Phaser.Point object containing the current x/y values of the pointer on the display.
	 */
	var position:phaser.geom.Point;
	
	/**
	 * A Phaser.Point object containing the x/y values of the pointer when it was last in a down state on the display.
	 */
	var positionDown:phaser.geom.Point;
	
	/**
	 * A Phaser.Point object containing the x/y values of the pointer when it was last released.
	 */
	var positionUp:phaser.geom.Point;
	
	/**
	 * A Phaser.Circle that is centered on the x/y coordinates of this pointer, useful for hit detection.
	 * The Circle size is 44px (Apples recommended "finger tip" size).
	 */
	var circle:phaser.geom.Circle;
	
	/**
	 * Click trampolines associated with this pointer. See addClickTrampoline.
	 */
	var clickTrampolines:Dynamic;
	
	/**
	 * When the Pointer has click trampolines the last target object is stored here
	 * so it can be used to check for validity of the trampoline in a post-Up/'stop'.
	 */
	var trampolineTargetObject:Dynamic;
	
	/**
	 * Called when the Pointer is pressed onto the touchscreen.
	 */
	function start (event:Dynamic):Void;
	
	/**
	 * Called by the Input Manager.
	 */
	function update ():Void;
	
	/**
	 * Called when the Pointer is moved.
	 */
	@:overload(function (event:Dynamic, ?fromClick:Bool = false):Void {})
	@:overload(function (event:Dynamic, ?fromClick:Bool = false):Void {})
	function move (event:Dynamic, ?fromClick:Bool = false):Void;
	
	/**
	 * Process all interactive objects to find out which ones were updated in the recent Pointer move.
	 */
	function processInteractiveObjects (?fromClick:Bool = false):Bool;
	
	/**
	 * Called when the Pointer leaves the target area.
	 */
	@:overload(function (event:Dynamic):Void {})
	@:overload(function (event:Dynamic):Void {})
	function leave (event:Dynamic):Void;
	
	/**
	 * Called when the Pointer leaves the touchscreen.
	 */
	@:overload(function (event:Dynamic):Void {})
	@:overload(function (event:Dynamic):Void {})
	function stop (event:Dynamic):Void;
	
	/**
	 * The Pointer is considered justPressed if the time it was pressed onto the touchscreen or clicked is less than justPressedRate.
	 * Note that calling justPressed doesn't reset the pressed status of the Pointer, it will return true for as long as the duration is valid.
	 * If you wish to check if the Pointer was pressed down just once then see the Sprite.events.onInputDown event.
	 */
	function justPressed (?duration:Float):Bool;
	
	/**
	 * The Pointer is considered justReleased if the time it left the touchscreen is less than justReleasedRate.
	 * Note that calling justReleased doesn't reset the pressed status of the Pointer, it will return true for as long as the duration is valid.
	 * If you wish to check if the Pointer was released just once then see the Sprite.events.onInputUp event.
	 */
	function justReleased (?duration:Float):Bool;
	
	/**
	 * Add a click trampoline to this pointer.
	 * 
	 * A click trampoline is a callback that is run on the DOM 'click' event; this is primarily
	 * needed with certain browsers (ie. IE11) which restrict some actions like requestFullscreen
	 * to the DOM 'click' event and reject it for 'pointer<em>' and 'mouse</em>' events.
	 * 
	 * This is used internally by the ScaleManager; click trampoline usage is uncommon.
	 * Click trampolines can only be added to pointers that are currently down.
	 */
	@:overload(function (name:String, callback:Dynamic, callbackContext:Dynamic, callbackArgs:Dynamic):Void {})
	function addClickTrampoline (name:String, callback:Dynamic, callbackContext:Dynamic, callbackArgs:Dynamic):Void;
	
	/**
	 * Fire all click trampolines for which the pointers are still refering to the registered object.
	 */
	function processClickTrampolines ():Void;
	
	/**
	 * Resets the Pointer properties. Called by InputManager.reset when you perform a State change.
	 */
	function reset ():Void;
	
	/**
	 * Resets the movementX and movementY properties. Use in your update handler after retrieving the values.
	 */
	function resetMovement ():Void;
	
	/**
	 * How long the Pointer has been depressed on the touchscreen. If not currently down it returns -1.
	 */
	var duration(default, null):Float;
	
}
