package phaser;

/**
* Phaser.Touch handles touch events with your game. Note: Android 2.x only supports 1 touch event at once, no multi-touch.
* 
* You should not normally access this class directly, but instead use a Phaser.Pointer object which normalises all game input for you.
*/
@:native("Phaser.Touch")
extern class Touch {

	/**
	* Phaser.Touch handles touch events with your game. Note: Android 2.x only supports 1 touch event at once, no multi-touch.
	* 
	* You should not normally access this class directly, but instead use a Phaser.Pointer object which normalises all game input for you.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* The context under which callbacks are called.
	*/
	var callbackContext:Dynamic;
	
	/**
	* Touch events will only be processed if enabled.
	* Default: true
	*/
	var enabled:Bool;
	
	/**
	* The browser touch DOM event. Will be set to null if no touch event has ever been received.
	*/
	var event:Dynamic;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* If true the TouchEvent will have prevent.default called on it.
	* Default: true
	*/
	var preventDefault:Bool;
	
	/**
	* A callback that can be fired on a touchCancel event.
	*/
	var touchCancelCallback:Dynamic;
	
	/**
	* A callback that can be fired on a touchEnd event.
	*/
	var touchEndCallback:Dynamic;
	
	/**
	* A callback that can be fired on a touchEnter event.
	*/
	var touchEnterCallback:Dynamic;
	
	/**
	* A callback that can be fired on a touchLeave event.
	*/
	var touchLeaveCallback:Dynamic;
	
	/**
	* A callback that can be fired on a touchMove event.
	*/
	var touchMoveCallback:Dynamic;
	
	/**
	* A callback that can be fired on a touchStart event.
	*/
	var touchStartCallback:Dynamic;
	
	/**
	* An array of callbacks that will be fired every time a native touch start or touch end event is received from the browser.
	* This is used internally to handle audio and video unlocking on mobile devices.
	* To add a callback to this array please use `Touch.addTouchLockCallback`.
	*/
	var touchLockCallbacks:Array<Dynamic>;
	
	/**
	* Adds a callback that is fired when a browser touchstart or touchend event is received.
	* 
	* This is used internally to handle audio and video unlocking on mobile devices.
	* 
	* If the callback returns 'true' then the callback is automatically deleted once invoked.
	* 
	* The callback is added to the Phaser.Touch.touchLockCallbacks array and should be removed with Phaser.Touch.removeTouchLockCallback.
	* 
	* @param callback The callback that will be called when a touchstart event is received.
	* @param context The context in which the callback will be called.
	* @param onEnd Will the callback fire on a touchstart (default) or touchend event?
	*/
	function addTouchLockCallback(callback:Dynamic, ?context:Dynamic, ?onEnd:Bool):Void;
	
	/**
	* Removes the callback at the defined index from the Phaser.Touch.touchLockCallbacks array
	* 
	* @param callback The callback to be removed.
	* @param context The context in which the callback exists.
	* @return True if the callback was deleted, otherwise false.
	*/
	function removeTouchLockCallback(callback:Dynamic, ?context:Dynamic):Bool;
	
	/**
	* Consumes all touchmove events on the document (only enable this if you know you need it!).
	*/
	function consumeTouchMove():Void;
	
	/**
	* Touch cancel - touches that were disrupted (perhaps by moving into a plugin or browser chrome).
	* Occurs for example on iOS when you put down 4 fingers and the app selector UI appears.
	* 
	* @param event The native event from the browser. This gets stored in Touch.event.
	*/
	function onTouchCancel(event:Dynamic):Void;
	
	/**
	* The handler for the touchend events.
	* 
	* @param event The native event from the browser. This gets stored in Touch.event.
	*/
	function onTouchEnd(event:Dynamic):Void;
	
	/**
	* For touch enter and leave its a list of the touch points that have entered or left the target.
	* Doesn't appear to be supported by most browsers on a canvas element yet.
	* 
	* @param event The native event from the browser. This gets stored in Touch.event.
	*/
	function onTouchEnter(event:Dynamic):Void;
	
	/**
	* For touch enter and leave its a list of the touch points that have entered or left the target.
	* Doesn't appear to be supported by most browsers on a canvas element yet.
	* 
	* @param event The native event from the browser. This gets stored in Touch.event.
	*/
	function onTouchLeave(event:Dynamic):Void;
	
	/**
	* The handler for the touchmove events.
	* 
	* @param event The native event from the browser. This gets stored in Touch.event.
	*/
	function onTouchMove(event:Dynamic):Void;
	
	/**
	* The internal method that handles the touchstart event from the browser.
	* 
	* @param event The native event from the browser. This gets stored in Touch.event.
	*/
	function onTouchStart(event:Dynamic):Void;
	
	/**
	* Starts the event listeners running.
	*/
	function start():Void;
	
	/**
	* Stop the event listeners.
	*/
	function stop():Void;
	
}

