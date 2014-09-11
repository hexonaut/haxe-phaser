package phaser.input;

@:native("Phaser.Mouse")
extern class Mouse {
	
	/**
	 * Phaser.Mouse is responsible for handling all aspects of mouse interaction with the browser.
	 * It captures and processes mouse events that happen on the game canvas object. It also adds a single mouseup listener to window which
	 * is used to capture the mouse being released when not over the game.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The context under which callbacks are called.
	 */
	var callbackContext:Dynamic;
	
	/**
	 * A callback that can be fired when the mouse is pressed down.
	 */
	var mouseDownCallback:Dynamic;
	
	/**
	 * A callback that can be fired when the mouse is moved while pressed down.
	 */
	var mouseMoveCallback:Dynamic;
	
	/**
	 * A callback that can be fired when the mouse is released from a pressed down state.
	 */
	var mouseUpCallback:Dynamic;
	
	/**
	 * A callback that can be fired when the mouse is no longer over the game canvas.
	 */
	var mouseOutCallback:Dynamic;
	
	/**
	 * A callback that can be fired when the mouse enters the game canvas (usually after a mouseout).
	 */
	var mouseOverCallback:Dynamic;
	
	/**
	 * A callback that can be fired when the mousewheel is used.
	 */
	var mouseWheelCallback:Dynamic;
	
	/**
	 * If true the DOM mouse events will have event.preventDefault applied to them, if false they will propogate fully.
	 */
	var capture:Bool;
	
	/**
	 * The type of click, either: Phaser.Mouse.NO_BUTTON, Phaser.Mouse.LEFT_BUTTON, Phaser.Mouse.MIDDLE_BUTTON or Phaser.Mouse.RIGHT_BUTTON.
	 */
	var button:Float;
	
	/**
	 * The direction of the mousewheel usage 1 for up -1 for down
	 */
	var wheelDelta:Float;
	
	/**
	 * You can disable all Input by setting disabled = true. While set all new input related events will be ignored.
	 */
	var disabled:Bool;
	
	/**
	 * If the mouse has been Pointer Locked successfully this will be set to true.
	 */
	var locked:Bool;
	
	/**
	 * If true Pointer.stop will be called if the mouse leaves the game canvas.
	 */
	var stopOnGameOut:Bool;
	
	/**
	 * This event is dispatched when the browser enters or leaves pointer lock state.
	 */
	var pointerLock:phaser.core.Signal;
	
	/**
	 * The browser mouse DOM event. Will be set to null if no mouse event has ever been received.
	 */
	var event:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onMouseDown:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onMouseMove:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onMouseUp:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onMouseOut:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onMouseOver:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onMouseWheel:Dynamic;
	
	/**
	 * @constant
	 */
	static var NO_BUTTON:Float;
	
	/**
	 * @constant
	 */
	static var LEFT_BUTTON:Float;
	
	/**
	 * @constant
	 */
	static var MIDDLE_BUTTON:Float;
	
	/**
	 * @constant
	 */
	static var RIGHT_BUTTON:Float;
	
	/**
	 * @constant
	 */
	static var WHEEL_UP:Float;
	
	/**
	 * @constant
	 */
	static var WHEEL_DOWN:Float;
	
	/**
	 * Starts the event listeners running.
	 */
	function start ():Void;
	
	/**
	 * The internal method that handles the mouse down event from the browser.
	 */
	function onMouseDown (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the mouse move event from the browser.
	 */
	function onMouseMove (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the mouse up event from the browser.
	 */
	function onMouseUp (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the mouse up event from the window.
	 */
	function onMouseUpGlobal (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the mouse out event from the browser.
	 */
	function onMouseOut (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the mouse wheel event from the browser.
	 */
	function onMouseWheel (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the mouse over event from the browser.
	 */
	function onMouseOver (event:Dynamic):Void;
	
	/**
	 * If the browser supports it you can request that the pointer be locked to the browser window.
	 * This is classically known as 'FPS controls', where the pointer can't leave the browser until the user presses an exit key.
	 * If the browser successfully enters a locked state the event Phaser.Mouse.pointerLock will be dispatched and the first parameter will be 'true'.
	 */
	function requestPointerLock ():Void;
	
	/**
	 * Internal pointerLockChange handler.
	 */
	function pointerLockChange (event:Dynamic):Void;
	
	/**
	 * Internal release pointer lock handler.
	 */
	function releasePointerLock ():Void;
	
	/**
	 * Stop the event listeners.
	 */
	function stop ():Void;
	
}
