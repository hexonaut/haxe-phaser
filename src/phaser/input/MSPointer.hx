package phaser.input;

@:native("Phaser.MSPointer")
extern class MSPointer {
	
	/**
	 * Phaser - MSPointer constructor.
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
	 * You can disable all Input by setting disabled = true. While set all new input related events will be ignored.
	 */
	var disabled:Bool;
	
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
	function onPointerMove (a0:Dynamic):Void;
	
	/**
	 * The function that handles the PointerUp event.
	 */
	function onPointerUp (event:Dynamic):Void;
	
	/**
	 * Stop the event listeners.
	 */
	function stop ():Void;
	
}
