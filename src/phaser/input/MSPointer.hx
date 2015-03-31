package phaser.input;

@:native("Phaser.MSPointer")
extern class MSPointer {
	
	/**
	 * The MSPointer class handles Microsoft touch interactions with the game and the resulting Pointer objects.
	 * 
	 * It will work only in Internet Explorer 10 and Windows Store or Windows Phone 8 apps using JavaScript.
	 * <a href='http://msdn.microsoft.com/en-us/library/ie/hh673557(v=vs.85).aspx'>http://msdn.microsoft.com/en-us/library/ie/hh673557(v=vs.85).aspx</a>
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The context under which callbacks are called (defaults to game).
	 */
	var callbackContext:Dynamic;
	
	/**
	 * A callback that can be fired on a MSPointerDown event.
	 */
	var pointerDownCallback:Dynamic;
	
	/**
	 * A callback that can be fired on a MSPointerMove event.
	 */
	var pointerMoveCallback:Dynamic;
	
	/**
	 * A callback that can be fired on a MSPointerUp event.
	 */
	var pointerUpCallback:Dynamic;
	
	/**
	 * If true the Pointer events will have event.preventDefault applied to them, if false they will propagate fully.
	 */
	var capture:Bool;
	
	/**
	 * The type of click, either: Phaser.Mouse.NO_BUTTON, Phaser.Mouse.LEFT_BUTTON, Phaser.Mouse.MIDDLE_BUTTON or Phaser.Mouse.RIGHT_BUTTON.
	 */
	var button:Float;
	
	/**
	 * The browser MSPointer DOM event. Will be null if no event has ever been received.
	 * Access this property only inside a Pointer event handler and do not keep references to it.
	 */
	var event:Dynamic;
	
	/**
	 * MSPointer input will only be processed if enabled.
	 */
	var enabled:Bool;
	
	/**
	 * Internal function to handle MSPointer events.
	 */
	var _onMSPointerDown:Dynamic;
	
	/**
	 * Internal function to handle MSPointer events.
	 */
	var _onMSPointerMove:Dynamic;
	
	/**
	 * Internal function to handle MSPointer events.
	 */
	var _onMSPointerUp:Dynamic;
	
	/**
	 * Starts the event listeners running.
	 */
	function start ():Void;
	
	/**
	 * The function that handles the PointerDown event.
	 */
	function onPointerDown (event:Dynamic):Void;
	
	/**
	 * The function that handles the PointerMove event.
	 */
	function onPointerMove (event:Dynamic):Void;
	
	/**
	 * The function that handles the PointerUp event.
	 */
	function onPointerUp (event:Dynamic):Void;
	
	/**
	 * Stop the event listeners.
	 */
	function stop ():Void;
	
	/**
	 * If disabled all MSPointer input will be ignored.
	 */
	var disabled:Bool;
	
}
