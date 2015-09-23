package phaser.input;

@:native("Phaser.MSPointer")
extern class MSPointer {
	
	/**
	 * The MSPointer class handles Microsoft touch interactions with the game and the resulting Pointer objects.
	 * 
	 * It will work only in Internet Explorer 10+ and Windows Store or Windows Phone 8 apps using JavaScript.
	 * <a href='http://msdn.microsoft.com/en-us/library/ie/hh673557(v=vs.85).aspx'>http://msdn.microsoft.com/en-us/library/ie/hh673557(v=vs.85).aspx</a>
	 * 
	 * You should not normally access this class directly, but instead use a Phaser.Pointer object which 
	 * normalises all game input for you including accurate button handling.
	 * 
	 * Please note that at the current time of writing Phaser does not yet support chorded button interactions:
	 * <a href='http://www.w3.org/TR/pointerevents/#chorded-button-interactions'>http://www.w3.org/TR/pointerevents/#chorded-button-interactions</a>
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
	 * This property was removed in Phaser 2.4 and should no longer be used.
	 * Instead please see the Pointer button properties such as Pointer.leftButton, Pointer.rightButton and so on.
	 * Or Pointer.button holds the DOM event button value if you require that.
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
	 * Internal function to handle MSPointer events.
	 */
	var _onMSPointerUpGlobal:Dynamic;
	
	/**
	 * Internal function to handle MSPointer events.
	 */
	var _onMSPointerOut:Dynamic;
	
	/**
	 * Internal function to handle MSPointer events.
	 */
	var _onMSPointerOver:Dynamic;
	
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
	 * The internal method that handles the mouse up event from the window.
	 */
	function onPointerUpGlobal (event:Dynamic):Void;
	
	/**
	 * The internal method that handles the pointer out event from the browser.
	 */
	function onPointerOut (event:Dynamic):Void;
	
	/**
	 * Stop the event listeners.
	 */
	function stop ():Void;
	
}
