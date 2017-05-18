package phaser;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;

/**
* Phaser.Input is the Input Manager for all types of Input across Phaser, including mouse, keyboard, touch and MSPointer.
* The Input manager is updated automatically by the core game loop.
*/
@:native("Phaser.Input")
extern class Input {

	/**
	* Phaser.Input is the Input Manager for all types of Input across Phaser, including mouse, keyboard, touch and MSPointer.
	* The Input manager is updated automatically by the core game loop.
	* 
	* @param game Current game instance.
	*/
	function new(game:phaser.Game);
	
	/**
	* The maximum number of pointers that can be added. This excludes the mouse pointer.
	*/
	static var MAX_POINTERS:Float;
	
	static var MOUSE_OVERRIDES_TOUCH:Float;
	
	static var MOUSE_TOUCH_COMBINE:Float;
	
	static var TOUCH_OVERRIDES_MOUSE:Float;
	
	/**
	* The most recently active Pointer object.
	* 
	* When you've limited max pointers to 1 this will accurately be either the first finger touched or mouse.
	*/
	var activePointer:phaser.Pointer;
	
	/**
	* A Circle object centered on the x/y screen coordinates of the Input.
	* Default size of 44px (Apples recommended "finger tip" size) but can be changed to anything.
	*/
	var circle:phaser.Circle;
	
	/**
	* When enabled, input (eg. Keyboard, Mouse, Touch) will be processed - as long as the individual sources are enabled themselves.
	* 
	* When not enabled, _all_ input sources are ignored. To disable just one type of input; for example, the Mouse, use `input.mouse.enabled = false`.
	* Default: true
	*/
	var enabled:Bool;
	
	/**
	* The number of milliseconds between taps of the same Pointer for it to be considered a double tap / click.
	* Default: 300
	*/
	var doubleTapRate:Float;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* The Gamepad Input manager.
	*/
	var gamepad:phaser.Gamepad;
	
	/**
	* The canvas to which single pixels are drawn in order to perform pixel-perfect hit detection.
	*/
	var hitCanvas:HTMLCanvasElement;
	
	/**
	* The context of the pixel perfect hit canvas.
	*/
	var hitContext:CanvasRenderingContext2D;
	
	/**
	* The number of milliseconds that the Pointer has to be pressed down for it to fire a onHold event.
	* Default: 2000
	*/
	var holdRate:Float;
	
	/**
	* A list of interactive objects. The InputHandler components add and remove themselves from this list.
	*/
	var interactiveItems:phaser.ArraySet;
	
	/**
	* The number of milliseconds below which the Pointer is considered justPressed.
	* Default: 200
	*/
	var justPressedRate:Float;
	
	/**
	* The number of milliseconds below which the Pointer is considered justReleased .
	* Default: 200
	*/
	var justReleasedRate:Float;
	
	/**
	* The Keyboard Input manager.
	*/
	var keyboard:phaser.Keyboard;
	
	/**
	* The maximum number of Pointers allowed to be active at any one time. A value of -1 is only limited by the total number of pointers. For lots of games it's useful to set this to 1.
	* Default: -1 (Limited by total pointers.)
	*/
	var maxPointers:Float;
	
	/**
	* You can tell all Pointers to ignore any Game Object with a `priorityID` lower than this value.
	* This is useful when stacking UI layers. Set to zero to disable.
	*/
	var minPriorityID:Float;
	
	/**
	* The Mouse Input manager.
	* 
	* You should not usually access this manager directly, but instead use Input.mousePointer or Input.activePointer
	* which normalizes all the input values for you, regardless of browser.
	*/
	var mouse:phaser.Mouse;
	
	/**
	* The mouse has its own unique Phaser.Pointer object which you can use if making a desktop specific game.
	*/
	var mousePointer:phaser.Pointer;
	
	/**
	* An array of callbacks that will be fired every time the activePointer receives a move event from the DOM.
	* To add a callback to this array please use `Input.addMoveCallback`.
	*/
	var moveCallbacks:phaser.Pointer->Float->Float->Array<Void>;
	
	/**
	* The MSPointer Input manager.
	* 
	* You should not usually access this manager directly, but instead use Input.activePointer
	* which normalizes all the input values for you, regardless of browser.
	*/
	var mspointer:phaser.MSPointer;
	
	/**
	* Controls the expected behavior when using a mouse and touch together on a multi-input device.
	*/
	var multiInputOverride:Float;
	
	/**
	* A Signal that is dispatched each time a pointer is pressed down.
	*/
	var onDown:phaser.Signal;
	
	/**
	* A Signal that is dispatched each time a pointer is held down.
	*/
	var onHold:phaser.Signal;
	
	/**
	* A Signal that is dispatched each time a pointer is tapped.
	*/
	var onTap:phaser.Signal;
	
	/**
	* A Signal that is dispatched each time a pointer is released.
	*/
	var onUp:phaser.Signal;
	
	/**
	* A Pointer object.
	*/
	var pointer1:phaser.Pointer;
	
	/**
	* A Pointer object.
	*/
	var pointer2:phaser.Pointer;
	
	/**
	* A Pointer object.
	*/
	var pointer3:phaser.Pointer;
	
	/**
	* A Pointer object.
	*/
	var pointer4:phaser.Pointer;
	
	/**
	* A Pointer object.
	*/
	var pointer5:phaser.Pointer;
	
	/**
	* A Pointer object.
	*/
	var pointer6:phaser.Pointer;
	
	/**
	* A Pointer object.
	*/
	var pointer7:phaser.Pointer;
	
	/**
	* A Pointer object.
	*/
	var pointer8:phaser.Pointer;
	
	/**
	* A Pointer object.
	*/
	var pointer9:phaser.Pointer;
	
	/**
	* A Pointer object.
	*/
	var pointer10:phaser.Pointer;
	
	/**
	* True if the Input is currently poll rate locked.
	*/
	var pollLocked:Bool;
	
	/**
	* How often should the input pointers be checked for updates? A value of 0 means every single frame (60fps); a value of 1 means every other frame (30fps) and so on.
	*/
	var pollRate:Float;
	
	/**
	* A point object representing the current position of the Pointer.
	*/
	var position:phaser.Point;
	
	var pointer:Array<phaser.Pointer>;
	
	/**
	* The total number of entries that can be recorded into the Pointer objects tracking history.
	* If the Pointer is tracking one event every 100ms; then a trackLimit of 100 would store the last 10 seconds worth of history.
	* Default: 100
	*/
	var recordLimit:Float;
	
	/**
	* Sets if the Pointer objects should record a history of x/y coordinates they have passed through.
	* The history is cleared each time the Pointer is pressed down.
	* The history is updated at the rate specified in Input.pollRate
	*/
	var recordPointerHistory:Bool;
	
	/**
	* The rate in milliseconds at which the Pointer objects should update their tracking history.
	* Default: 100
	*/
	var recordRate:Float;
	
	/**
	* If the Input Manager has been reset locked then all calls made to InputManager.reset,
	* such as from a State change, are ignored.
	*/
	var resetLocked:Bool;
	
	/**
	* The scale by which all input coordinates are multiplied; calculated by the ScaleManager. In an un-scaled game the values will be x = 1 and y = 1.
	*/
	var scale:phaser.Point;
	
	/**
	* A point object representing the speed of the Pointer. Only really useful in single Pointer games; otherwise see the Pointer objects directly.
	*/
	var speed:phaser.Point;
	
	/**
	* The number of milliseconds that the Pointer has to be pressed down and then released to be considered a tap or click.
	* Default: 200
	*/
	var tapRate:Float;
	
	/**
	* The total number of active Pointers, not counting the mouse pointer.
	*/
	var totalActivePointers:Float;
	
	/**
	* The total number of inactive Pointers.
	*/
	var totalInactivePointers:Float;
	
	/**
	* The Touch Input manager.
	* 
	* You should not usually access this manager directly, but instead use Input.activePointer
	* which normalizes all the input values for you, regardless of browser.
	*/
	var touch:phaser.Touch;
	
	/**
	* The world X coordinate of the most recently active pointer.
	*/
	var worldX:Float;
	
	/**
	* The world Y coordinate of the most recently active pointer.
	*/
	var worldY:Float;
	
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
	* Add a new Pointer object to the Input Manager.
	* By default Input creates 3 pointer objects: `mousePointer` (not include in part of general pointer pool), `pointer1` and `pointer2`.
	* This method adds an additional pointer, up to a maximum of Phaser.Input.MAX_POINTERS (default of 10).
	* 
	* @return The new Pointer object that was created; null if a new pointer could not be added.
	*/
	function addPointer():phaser.Pointer;
	
	/**
	* Adds a callback that is fired every time the activePointer receives a DOM move event such as a mousemove or touchmove.
	* 
	* The callback will be sent 4 parameters:
	* 
	* A reference to the Phaser.Pointer object that moved,
	* The x position of the pointer,
	* The y position,
	* A boolean indicating if the movement was the result of a 'click' event (such as a mouse click or touch down).
	* 
	* It will be called every time the activePointer moves, which in a multi-touch game can be a lot of times, so this is best
	* to only use if you've limited input to a single pointer (i.e. mouse or touch).
	* 
	* The callback is added to the Phaser.Input.moveCallbacks array and should be removed with Phaser.Input.deleteMoveCallback.
	* 
	* @param callback The callback that will be called each time the activePointer receives a DOM move event.
	* @param context The context in which the callback will be called.
	*/
	function addMoveCallback(callback:Dynamic, context:Dynamic):Float;
	
	/**
	* Starts the Input Manager running.
	*/
	function boot():Void;
	
	function countActivePointers(?limit:Float):Float;
	
	/**
	* Removes the callback from the Phaser.Input.moveCallbacks array.
	* 
	* @param callback The callback to be removed.
	* @param context The context in which the callback exists.
	*/
	function deleteMoveCallback(callback:Dynamic, ?context:Dynamic):Void;
	
	/**
	* Stops all of the Input Managers from running.
	*/
	function destroy():Void;
	
	/**
	* This will return the local coordinates of the specified displayObject based on the given Pointer.
	* 
	* @param displayObject The DisplayObject to get the local coordinates for.
	* @param pointer The Pointer to use in the check against the displayObject.
	* @return A point containing the coordinates of the Pointer position relative to the DisplayObject.
	*/
	function getLocalPosition(displayObject:Dynamic, pointer:phaser.Pointer):phaser.Point;
	
	/**
	* Get the first Pointer with the given active state.
	* 
	* @param isActive The state the Pointer should be in - active or inactive?
	* @return A Pointer object or null if no Pointer object matches the requested state.
	*/
	function getPointer(?isActive:Bool):phaser.Pointer;
	
	/**
	* Get the Pointer object whos `pointerId` property matches the given value.
	* 
	* The pointerId property is not set until the Pointer has been used at least once, as its populated by the DOM event.
	* Also it can change every time you press the pointer down if the browser recycles it.
	* 
	* @param pointerId The `pointerId` (not 'id') value to search for.
	* @return A Pointer object or null if no Pointer object matches the requested identifier.
	*/
	function getPointerFromId(pointerID:Float):phaser.Pointer;
	
	/**
	* Get the Pointer object whos `identifier` property matches the given identifier value.
	* 
	* The identifier property is not set until the Pointer has been used at least once, as its populated by the DOM event.
	* Also it can change every time you press the pointer down, and is not fixed once set.
	* Note: Not all browsers set the identifier property and it's not part of the W3C spec, so you may need getPointerFromId instead.
	* 
	* @param identifier The Pointer.identifier value to search for.
	* @return A Pointer object or null if no Pointer object matches the requested identifier.
	*/
	function getPointerFromIdentifier(identifier:Float):phaser.Pointer;
	
	/**
	* Tests if the pointer hits the given object.
	* 
	* @param displayObject The displayObject to test for a hit.
	* @param pointer The pointer to use for the test.
	* @param localPoint The local translated point.
	*/
	function hitTest(displayObject:pixi.DisplayObject, pointer:phaser.Pointer, localPoint:phaser.Point):Void;
	
	/**
	* Reset all of the Pointers and Input states.
	* 
	* The optional `hard` parameter will reset any events or callbacks that may be bound.
	* Input.reset is called automatically during a State change or if a game loses focus / visibility.
	* To control control the reset manually set {@link Phaser.InputManager.resetLocked} to `true`.
	* 
	* @param hard A soft reset won't reset any events or callbacks that are bound. A hard reset will.
	*/
	function reset(?hard:Bool):Void;
	
	/**
	* Resets the speed and old position properties.
	* 
	* @param x Sets the oldPosition.x value.
	* @param y Sets the oldPosition.y value.
	*/
	function resetSpeed(x:Float, y:Float):Void;
	
	/**
	* Adds a callback that is fired every time `Pointer.processInteractiveObjects` is called.
	* The purpose of `processInteractiveObjects` is to work out which Game Object the Pointer is going to
	* interact with. It works by polling all of the valid game objects, and then slowly discounting those
	* that don't meet the criteria (i.e. they aren't under the Pointer, are disabled, invisible, etc).
	* 
	* Eventually a short-list of 'candidates' is created. These are all of the Game Objects which are valid
	* for input and overlap with the Pointer. If you need fine-grained control over which of the items is
	* selected then you can use this callback to do so.
	* 
	* The callback will be sent 3 parameters:
	* 
	* 1) A reference to the Phaser.Pointer object that is processing the Items.
	* 2) An array containing all potential interactive candidates. This is an array of `InputHandler` objects, not Sprites.
	* 3) The current 'favorite' candidate, based on its priorityID and position in the display list.
	* 
	* Your callback MUST return one of the candidates sent to it.
	* 
	* @param callback The callback that will be called each time `Pointer.processInteractiveObjects` is called. Set to `null` to disable.
	* @param context The context in which the callback will be called.
	*/
	function setInteractiveCandidateHandler(callback:Dynamic, ?context:Dynamic):Void;
	
	/**
	* Find the first free Pointer object and start it, passing in the event data.
	* This is called automatically by Phaser.Touch and Phaser.MSPointer.
	* 
	* @param event The event data from the Touch event.
	* @return The Pointer object that was started or null if no Pointer object is available.
	*/
	function startPointer(event:Dynamic):phaser.Pointer;
	
	/**
	* Stops the matching Pointer object, passing in the event data.
	* 
	* @param event The event data from the Touch event.
	* @return The Pointer object that was stopped or null if no Pointer object is available.
	*/
	function stopPointer(event:Dynamic):phaser.Pointer;
	
	/**
	* Updates the Input Manager. Called by the core Game loop.
	*/
	function update():Void;
	
	/**
	* Updates the matching Pointer object, passing in the event data.
	* This is called automatically and should not normally need to be invoked.
	* 
	* @param event The event data from the Touch event.
	* @return The Pointer object that was updated; null if no pointer was updated.
	*/
	function updatePointer(event:Dynamic):phaser.Pointer;
	
}

