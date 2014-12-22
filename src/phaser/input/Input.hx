package phaser.input;

@:native("Phaser.Input")
extern class Input {
	
	/**
	 * Phaser.Input is the Input Manager for all types of Input across Phaser, including mouse, keyboard, touch and MSPointer.
	 * The Input manager is updated automatically by the core game loop.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The canvas to which single pixels are drawn in order to perform pixel-perfect hit detection.
	 */
	var hitCanvas:Dynamic;
	
	/**
	 * The context of the pixel perfect hit canvas.
	 */
	var hitContext:Dynamic;
	
	/**
	 * An array of callbacks that will be fired every time the activePointer receives a move event from the DOM.
	 */
	var moveCallbacks:Array<Dynamic>;
	
	/**
	 * An optional callback that will be fired every time the activePointer receives a move event from the DOM. Set to null to disable.
	 */
	var moveCallback:Dynamic;
	
	/**
	 * The context in which the moveCallback will be sent. Defaults to Phaser.Input but can be set to any valid JS object.
	 */
	var moveCallbackContext:Dynamic;
	
	/**
	 * How often should the input pointers be checked for updates? A value of 0 means every single frame (60fps); a value of 1 means every other frame (30fps) and so on.
	 */
	var pollRate:Float;
	
	/**
	 * When enabled, input (eg. Keyboard, Mouse, Touch) will be processed - as long as the individual sources are enabled themselves.
	 * 
	 * When not enabled, <em>all</em> input sources are ignored. To disable just one type of input; for example, the Mouse, use input.mouse.enabled = false.
	 */
	var enabled:Bool;
	
	/**
	 * Controls the expected behaviour when using a mouse and touch together on a multi-input device.
	 */
	var multiInputOverride:Float;
	
	/**
	 * A point object representing the current position of the Pointer.
	 */
	var position:phaser.geom.Point;
	
	/**
	 * A point object representing the speed of the Pointer. Only really useful in single Pointer games; otherwise see the Pointer objects directly.
	 */
	var speed:phaser.geom.Point;
	
	/**
	 * A Circle object centered on the x/y screen coordinates of the Input.
	 * Default size of 44px (Apples recommended "finger tip" size) but can be changed to anything.
	 */
	var circle:phaser.geom.Circle;
	
	/**
	 * The scale by which all input coordinates are multiplied; calculated by the ScaleManager. In an un-scaled game the values will be x = 1 and y = 1.
	 */
	var scale:phaser.geom.Point;
	
	/**
	 * The maximum number of Pointers allowed to be active at any one time. A value of -1 is only limited by the total number of pointers. For lots of games it's useful to set this to 1.
	 */
	var maxPointers:Int;
	
	/**
	 * The current number of active Pointers.
	 */
	var currentPointers:Float;
	
	/**
	 * The number of milliseconds that the Pointer has to be pressed down and then released to be considered a tap or click.
	 */
	var tapRate:Float;
	
	/**
	 * The number of milliseconds between taps of the same Pointer for it to be considered a double tap / click.
	 */
	var doubleTapRate:Float;
	
	/**
	 * The number of milliseconds that the Pointer has to be pressed down for it to fire a onHold event.
	 */
	var holdRate:Float;
	
	/**
	 * The number of milliseconds below which the Pointer is considered justPressed.
	 */
	var justPressedRate:Float;
	
	/**
	 * The number of milliseconds below which the Pointer is considered justReleased .
	 */
	var justReleasedRate:Float;
	
	/**
	 * Sets if the Pointer objects should record a history of x/y coordinates they have passed through.
	 * The history is cleared each time the Pointer is pressed down.
	 * The history is updated at the rate specified in Input.pollRate
	 */
	var recordPointerHistory:Bool;
	
	/**
	 * The rate in milliseconds at which the Pointer objects should update their tracking history.
	 */
	var recordRate:Float;
	
	/**
	 * The total number of entries that can be recorded into the Pointer objects tracking history.
	 * If the Pointer is tracking one event every 100ms; then a trackLimit of 100 would store the last 10 seconds worth of history.
	 */
	var recordLimit:Float;
	
	/**
	 * A Pointer object.
	 */
	var pointer1:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer2:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer3:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer4:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer5:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer6:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer7:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer8:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer9:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer10:phaser.input.Pointer;
	
	/**
	 * An array of non-mouse pointers that have been added to the game.
	 * The properties pointer1..N are aliases for pointers[0..N-1].
	 */
	var pointers(default, null):Dynamic;
	
	/**
	 * The most recently active Pointer object.
	 * When you've limited max pointers to 1 this will accurately be either the first finger touched or mouse.
	 */
	var activePointer:phaser.input.Pointer;
	
	/**
	 * The mouse has its own unique Phaser.Pointer object which you can use if making a desktop specific game.
	 */
	var mousePointer:Dynamic;
	
	/**
	 * The Mouse Input manager.
	 */
	var mouse:phaser.input.Mouse;
	
	/**
	 * The Keyboard Input manager.
	 */
	var keyboard:phaser.input.Keyboard;
	
	/**
	 * the Touch Input manager.
	 */
	var touch:phaser.input.Touch;
	
	/**
	 * The MSPointer Input manager.
	 */
	var mspointer:phaser.input.MSPointer;
	
	/**
	 * The Gamepad Input manager.
	 */
	var gamepad:phaser.input.Gamepad;
	
	/**
	 * If the Input Manager has been reset locked then all calls made to InputManager.reset, such as from a State change, are ignored.
	 */
	var resetLocked:Bool;
	
	/**
	 * A Signal that is dispatched each time a pointer is pressed down.
	 */
	var onDown:phaser.core.Signal;
	
	/**
	 * A Signal that is dispatched each time a pointer is released.
	 */
	var onUp:phaser.core.Signal;
	
	/**
	 * A Signal that is dispatched each time a pointer is tapped.
	 */
	var onTap:phaser.core.Signal;
	
	/**
	 * A Signal that is dispatched each time a pointer is held down.
	 */
	var onHold:phaser.core.Signal;
	
	/**
	 * You can tell all Pointers to ignore any object with a priorityID lower than the minPriorityID. Useful when stacking UI layers. Set to zero to disable.
	 */
	var minPriorityID:Float;
	
	/**
	 * A list of interactive objects. The InputHandler components add and remove themselves from this list.
	 */
	var interactiveItems:Dynamic;
	
	/**
	 * Internal cache var.
	 */
	var _localPoint:phaser.geom.Point;
	
	/**
	 * Internal var holding the current poll counter.
	 */
	var _pollCounter:Float;
	
	/**
	 * A point object representing the previous position of the Pointer.
	 */
	var _oldPosition:phaser.geom.Point;
	
	/**
	 * x coordinate of the most recent Pointer event
	 */
	var _x:Float;
	
	/**
	 * Y coordinate of the most recent Pointer event
	 */
	var _y:Float;
	
	/**
	 * @constant
	 */
	static var MOUSE_OVERRIDES_TOUCH:Float;
	
	/**
	 * @constant
	 */
	static var TOUCH_OVERRIDES_MOUSE:Float;
	
	/**
	 * @constant
	 */
	static var MOUSE_TOUCH_COMBINE:Float;
	
	/**
	 * Starts the Input Manager running.
	 */
	function boot ():Void;
	
	/**
	 * Stops all of the Input Managers from running.
	 */
	function destroy ():Void;
	
	/**
	 * Adds a callback that is fired every time the activePointer receives a DOM move event such as a mousemove or touchmove.
	 * 
	 * The callback will be sent 4 parameters: The Pointer that moved, the x position of the pointer, the y position and the down state.
	 * 
	 * It will be called every time the activePointer moves, which in a multi-touch game can be a lot of times, so this is best
	 * to only use if you've limited input to a single pointer (i.e. mouse or touch).
	 * The callback is added to the Phaser.Input.moveCallbacks array and should be removed with Phaser.Input.deleteMoveCallback.
	 */
	function addMoveCallback (callback:Dynamic, context:Dynamic):Float;
	
	/**
	 * Removes the callback at the defined index from the Phaser.Input.moveCallbacks array
	 */
	function deleteMoveCallback (index:Float):Void;
	
	/**
	 * Add a new Pointer object to the Input Manager.
	 * By default Input creates 3 pointer objects: mousePointer (not include in part of general pointer pool), pointer1 and pointer2.
	 * This method adds an additional pointer, up to a maximum of Phaser.Input.MAX_POINTERS (default of 10).
	 */
	function addPointer ():Dynamic;
	
	/**
	 * Updates the Input Manager. Called by the core Game loop.
	 */
	function update ():Void;
	
	/**
	 * Reset all of the Pointers and Input states.
	 * 
	 * The optional hard parameter will reset any events or callbacks that may be bound.
	 * Input.reset is called automatically during a State change or if a game loses focus / visibility.
	 * To control control the reset manually set {@link Phaser.InputManager.resetLocked} to true.
	 */
	function reset (?hard:Bool = false):Void;
	
	/**
	 * Resets the speed and old position properties.
	 */
	function resetSpeed (x:Float, y:Float):Void;
	
	/**
	 * Find the first free Pointer object and start it, passing in the event data.
	 * This is called automatically by Phaser.Touch and Phaser.MSPointer.
	 */
	function startPointer (event:Dynamic):phaser.input.Pointer;
	
	/**
	 * Updates the matching Pointer object, passing in the event data.
	 * This is called automatically and should not normally need to be invoked.
	 */
	function updatePointer (event:Dynamic):phaser.input.Pointer;
	
	/**
	 * Stops the matching Pointer object, passing in the event data.
	 */
	function stopPointer (event:Dynamic):phaser.input.Pointer;
	
	/**
	 * Returns the total number of active pointers, not exceeding the specified limit
	 */
	var limit:Int;
	
	/**
	 * Get the first Pointer with the given active state.
	 */
	function getPointer (?isActive:Bool = false):phaser.input.Pointer;
	
	/**
	 * Get the Pointer object whos identifier property matches the given identifier value.
	 * 
	 * The identifier property is not set until the Pointer has been used at least once, as its populated by the DOM event.
	 * Also it can change every time you press the pointer down, and is not fixed once set.
	 * Note: Not all browsers set the identifier property and it's not part of the W3C spec, so you may need getPointerFromId instead.
	 */
	function getPointerFromIdentifier (identifier:Float):phaser.input.Pointer;
	
	/**
	 * Get the Pointer object whos pointerId property matches the given value.
	 * 
	 * The pointerId property is not set until the Pointer has been used at least once, as its populated by the DOM event.
	 * Also it can change every time you press the pointer down if the browser recycles it.
	 */
	function getPointerFromId (pointerId:Float):phaser.input.Pointer;
	
	/**
	 * This will return the local coordinates of the specified displayObject based on the given Pointer.
	 */
	@:overload(function (displayObject:phaser.gameobjects.Sprite, pointer:phaser.input.Pointer):phaser.geom.Point {})
	function getLocalPosition (displayObject:phaser.gameobjects.Image, pointer:phaser.input.Pointer):phaser.geom.Point;
	
	/**
	 * Tests if the pointer hits the given object.
	 */
	function hitTest (displayObject:Dynamic, pointer:phaser.input.Pointer, localPoint:phaser.geom.Point):Void;
	
	/**
	 * Used for click trampolines. See {@link Phaser.Pointer.addClickTrampoline}.
	 */
	function onClickTrampoline ():Void;
	
	/**
	 * The X coordinate of the most recently active pointer.
	 * This value takes game scaling into account automatically. See Pointer.screenX/clientX for source values.
	 */
	var x:Float;
	
	/**
	 * The Y coordinate of the most recently active pointer.
	 * This value takes game scaling into account automatically. See Pointer.screenY/clientY for source values.
	 */
	var y:Float;
	
	/**
	 * True if the Input is currently poll rate locked.
	 */
	var pollLocked(default, null):Bool;
	
	/**
	 * The total number of inactive Pointers.
	 */
	var totalInactivePointers(default, null):Float;
	
	/**
	 * The total number of active Pointers, not counting the mouse pointer.
	 */
	var totalActivePointers(default, null):Dynamic;
	
	/**
	 * The world X coordinate of the most recently active pointer.
	 */
	var worldX(default, null):Float;
	
	/**
	 * The world Y coordinate of the most recently active pointer.
	 */
	var worldY(default, null):Float;
	
	/**
	 * <em>All</em> input sources (eg. Mouse, Keyboard, Touch) are ignored when Input is disabled.
	 * To disable just one type of input; for example, the Mouse, use input.mouse.enabled = false.
	 */
	var disabled:Bool;
	
}
