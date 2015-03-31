package phaser.input;

@:native("Phaser.Touch")
extern class Touch {
	
	/**
	 * Phaser.Touch handles touch events with your game. Note: Android 2.x only supports 1 touch event at once, no multi-touch.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Touch events will only be processed if enabled.
	 */
	var enabled:Bool;
	
	/**
	 * The context under which callbacks are called.
	 */
	var callbackContext:Dynamic;
	
	/**
	 * A callback that can be fired on a touchStart event.
	 */
	var touchStartCallback:Dynamic;
	
	/**
	 * A callback that can be fired on a touchMove event.
	 */
	var touchMoveCallback:Dynamic;
	
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
	 * A callback that can be fired on a touchCancel event.
	 */
	var touchCancelCallback:Dynamic;
	
	/**
	 * If true the TouchEvent will have prevent.default called on it.
	 */
	var preventDefault:Bool;
	
	/**
	 * The browser touch DOM event. Will be set to null if no touch event has ever been received.
	 */
	var event:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onTouchStart:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onTouchMove:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onTouchEnd:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onTouchEnter:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onTouchLeave:Dynamic;
	
	/**
	 * Internal event handler reference.
	 */
	var _onTouchCancel:Dynamic;
	
	/**
	 * Starts the event listeners running.
	 */
	function start ():Void;
	
	/**
	 * Consumes all touchmove events on the document (only enable this if you know you need it!).
	 */
	function consumeTouchMove ():Void;
	
	/**
	 * The internal method that handles the touchstart event from the browser.
	 */
	function onTouchStart (event:Dynamic):Void;
	
	/**
	 * Touch cancel - touches that were disrupted (perhaps by moving into a plugin or browser chrome).
	 * Occurs for example on iOS when you put down 4 fingers and the app selector UI appears.
	 */
	function onTouchCancel (event:Dynamic):Void;
	
	/**
	 * For touch enter and leave its a list of the touch points that have entered or left the target.
	 * Doesn't appear to be supported by most browsers on a canvas element yet.
	 */
	function onTouchEnter (event:Dynamic):Void;
	
	/**
	 * For touch enter and leave its a list of the touch points that have entered or left the target.
	 * Doesn't appear to be supported by most browsers on a canvas element yet.
	 */
	function onTouchLeave (event:Dynamic):Void;
	
	/**
	 * The handler for the touchmove events.
	 */
	function onTouchMove (event:Dynamic):Void;
	
	/**
	 * The handler for the touchend events.
	 */
	function onTouchEnd (event:Dynamic):Void;
	
	/**
	 * Stop the event listeners.
	 */
	function stop ():Void;
	
	/**
	 * If disabled all Touch events will be ignored.
	 */
	var disabled:Bool;
	
}
