package phaser;

import js.html.MouseEvent;
import js.html.Event;

/**
* The Mouse class is responsible for handling all aspects of mouse interaction with the browser.
* 
* It captures and processes mouse events that happen on the game canvas object.
* It also adds a single `mouseup` listener to `window` which is used to capture the mouse being released
* when not over the game.
* 
* You should not normally access this class directly, but instead use a Phaser.Pointer object
* which normalises all game input for you, including accurate button handling.
*/
@:native("Phaser.Mouse")
extern class Mouse {

	/**
	* The Mouse class is responsible for handling all aspects of mouse interaction with the browser.
	* 
	* It captures and processes mouse events that happen on the game canvas object.
	* It also adds a single `mouseup` listener to `window` which is used to capture the mouse being released
	* when not over the game.
	* 
	* You should not normally access this class directly, but instead use a Phaser.Pointer object
	* which normalises all game input for you, including accurate button handling.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	static var NO_BUTTON:Float;
	
	static var LEFT_BUTTON:Float;
	
	static var MIDDLE_BUTTON:Float;
	
	static var RIGHT_BUTTON:Float;
	
	static var BACK_BUTTON:Float;
	
	static var FORWARD_BUTTON:Float;
	
	static var WHEEL_DOWN:Float;
	
	static var WHEEL_UP:Float;
	
	/**
	* This property was removed in Phaser 2.4 and should no longer be used.
	* Instead please see the Pointer button properties such as `Pointer.leftButton`, `Pointer.rightButton` and so on.
	* Or Pointer.button holds the DOM event button value if you require that.
	*/
	var button:Float;
	
	/**
	* The context under which callbacks are called.
	*/
	var callbackContext:Dynamic;
	
	/**
	* If true the DOM mouse events will have event.preventDefault applied to them, if false they will propagate fully.
	*/
	var capture:Bool;
	
	/**
	* Mouse input will only be processed if enabled.
	* Default: true
	*/
	var enabled:Bool;
	
	/**
	* The browser mouse DOM event. Will be null if no mouse event has ever been received.
	* Access this property only inside a Mouse event handler and do not keep references to it.
	*/
	var event:MouseEvent;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* A reference to the Phaser Input Manager.
	*/
	var input:phaser.Input;
	
	/**
	* If the mouse has been Pointer Locked successfully this will be set to true.
	*/
	var locked:Bool;
	
	/**
	* A callback that can be fired when the mouse is pressed down.
	*/
	var mouseDownCallback:MouseEvent->Void;
	
	/**
	* A callback that can be fired when the mouse is no longer over the game canvas.
	*/
	var mouseOutCallback:MouseEvent->Void;
	
	/**
	* A callback that can be fired when the mouse enters the game canvas (usually after a mouseout).
	*/
	var mouseOverCallback:MouseEvent->Void;
	
	/**
	* A callback that can be fired when the mouse is released from a pressed down state.
	*/
	var mouseUpCallback:MouseEvent->Void;
	
	/**
	* A callback that can be fired when the mousewheel is used.
	*/
	var mouseWheelCallback:MouseEvent->Void;
	
	/**
	* Internal event handler reference.
	*/
	var _onMouseDown:MouseEvent->Void;
	
	/**
	* Internal event handler reference.
	*/
	var _onMouseMove:MouseEvent->Void;
	
	/**
	* Internal event handler reference.
	*/
	var _onMouseUp:MouseEvent->Void;
	
	/**
	* Internal event handler reference.
	*/
	var _onMouseOut:MouseEvent->Void;
	
	/**
	* Internal event handler reference.
	*/
	var _onMouseOver:MouseEvent->Void;
	
	/**
	* Internal event handler reference.
	*/
	var _onMouseWheel:MouseEvent->Void;
	
	/**
	* Wheel proxy event object, if required. Shared for all wheel events for this mouse.
	*/
	var _wheelEvent:WheelEventProxy;
	
	/**
	* This event is dispatched when the browser enters or leaves pointer lock state.
	*/
	var pointerLock:phaser.Signal;
	
	/**
	* If true Pointer.stop will be called if the mouse leaves the game canvas.
	*/
	var stopOnGameOut:Bool;
	
	/**
	* The direction of the _last_ mousewheel usage 1 for up -1 for down.
	*/
	var wheelDelta:Float;
	
	/**
	* The internal method that handles the mouse down event from the browser.
	* 
	* @param event The native event from the browser. This gets stored in Mouse.event.
	*/
	function onMouseDown(event:MouseEvent):Void;
	
	/**
	* The internal method that handles the mouse move event from the browser.
	* 
	* @param event The native event from the browser. This gets stored in Mouse.event.
	*/
	function onMouseMove(event:MouseEvent):Void;
	
	/**
	* The internal method that handles the mouse out event from the browser.
	* 
	* @param event The native event from the browser. This gets stored in Mouse.event.
	*/
	function onMouseOut(event:MouseEvent):Void;
	
	/**
	* The internal method that handles the mouse over event from the browser.
	* 
	* @param event The native event from the browser. This gets stored in Mouse.event.
	*/
	function onMouseOver(event:MouseEvent):Void;
	
	/**
	* The internal method that handles the mouse up event from the browser.
	* 
	* @param event The native event from the browser. This gets stored in Mouse.event.
	*/
	function onMouseUp(event:MouseEvent):Void;
	
	/**
	* The internal method that handles the mouse up event from the window.
	* 
	* @param event The native event from the browser. This gets stored in Mouse.event.
	*/
	function onMouseUpGlobal(event:MouseEvent):Void;
	
	/**
	* The internal method that handles the mouse wheel event from the browser.
	* 
	* @param event The native event from the browser.
	*/
	function onMouseWheel(event:MouseEvent):Void;
	
	/**
	* Internal pointerLockChange handler.
	* 
	* @param event The native event from the browser. This gets stored in Mouse.event.
	*/
	function pointerLockChange(event:MouseEvent):Void;
	
	/**
	* Internal release pointer lock handler.
	*/
	function releasePointerLock():Void;
	
	/**
	* If the browser supports it you can request that the pointer be locked to the browser window.
	* This is classically known as 'FPS controls', where the pointer can't leave the browser until the user presses an exit key.
	* If the browser successfully enters a locked state the event Phaser.Mouse.pointerLock will be dispatched and the first parameter will be 'true'.
	*/
	function requestPointerLock():Void;
	
	/**
	* Starts the event listeners running.
	*/
	function start():Void;
	
	/**
	* Stop the event listeners.
	*/
	function stop():Void;
	
}

