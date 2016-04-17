package phaser.input;

@:native("Phaser.Mouse")
extern class Mouse {
	
	/**
	 * The Mouse class is responsible for handling all aspects of mouse interaction with the browser.
	 * 
	 * It captures and processes mouse events that happen on the game canvas object.
	 * It also adds a single mouseup listener to window which is used to capture the mouse being released 
	 * when not over the game.
	 * 
	 * You should not normally access this class directly, but instead use a Phaser.Pointer object 
	 * which normalises all game input for you, including accurate button handling.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A reference to the Phaser Input Manager.
	 */
	var input:phaser.input.Input;
	
	/**
	 * The context under which callbacks are called.
	 */
	var callbackContext:Dynamic;
	
	/**
	 * A callback that can be fired when the mouse is pressed down.
	 */
	var mouseDownCallback:Dynamic;
	
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
	 * If true the DOM mouse events will have event.preventDefault applied to them, if false they will propagate fully.
	 */
	var capture:Bool;
	
	/**
	 * This property was removed in Phaser 2.4 and should no longer be used.
	 * Instead please see the Pointer button properties such as Pointer.leftButton, Pointer.rightButton and so on.
	 * Or Pointer.button holds the DOM event button value if you require that.
	 */
	var button:Float;
	
	/**
	 * The direction of the <em>last</em> mousewheel usage 1 for up -1 for down.
	 */
	var wheelDelta:Float;
	
	/**
	 * Mouse input will only be processed if enabled.
	 */
	var enabled:Bool;
	
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
	 * The browser mouse DOM event. Will be null if no mouse event has ever been received.
	 * Access this property only inside a Mouse event handler and do not keep references to it.
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
	 * Wheel proxy event object, if required. Shared for all wheel events for this mouse.
	 */
	var wheelEvent:Dynamic;
	
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
	static var BACK_BUTTON:Float;
	
	/**
	 * @constant
	 */
	static var FORWARD_BUTTON:Float;
	
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
	 * The internal method that handles the mouse out event from the window.
	 */
	function onMouseOutGlobal (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the mouse out event from the browser.
	 */
	function onMouseOut (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the mouse over event from the browser.
	 */
	function onMouseOver (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the mouse wheel event from the browser.
	 */
	function onMouseWheel (event:Dynamic):Void;
	
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
	
	/**
	 * A purely internal event support class to proxy 'wheelscroll' and 'DOMMouseWheel'
	 * events to 'wheel'-like events.
	 * 
	 * See <a href='https://developer.mozilla.org/en-US/docs/Web/Events/mousewheel'>https://developer.mozilla.org/en-US/docs/Web/Events/mousewheel</a> for choosing a scale and delta mode.
	 */
	function WheelEventProxy (scaleFactor:Float, deltaMode:Int):Void;
	
	/**
	 * Scale factor as applied to wheelDelta/wheelDeltaX or details.
	 */
	var _scaleFactor:Float;
	
	/**
	 * The reported delta mode.
	 */
	var _deltaMode:Float;
	
	/**
	 * The original event <em>currently</em> being proxied; the getters will follow suit.
	 */
	var originalEvent:Dynamic;
	
}
