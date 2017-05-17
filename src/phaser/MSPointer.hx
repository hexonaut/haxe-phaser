package phaser;

import js.html.Event;
typedef MSPointerEvent = Dynamic;

/**
* The MSPointer class handles Microsoft touch interactions with the game and the resulting Pointer objects.
* 
* It will work only in Internet Explorer 10+ and Windows Store or Windows Phone 8 apps using JavaScript.
* http://msdn.microsoft.com/en-us/library/ie/hh673557(v=vs.85).aspx
* 
* You should not normally access this class directly, but instead use a Phaser.Pointer object which
* normalises all game input for you including accurate button handling.
* 
* Please note that at the current time of writing Phaser does not yet support chorded button interactions:
* http://www.w3.org/TR/pointerevents/#chorded-button-interactions
*/
@:native("Phaser.MSPointer")
extern class MSPointer {

	/**
	* The MSPointer class handles Microsoft touch interactions with the game and the resulting Pointer objects.
	* 
	* It will work only in Internet Explorer 10+ and Windows Store or Windows Phone 8 apps using JavaScript.
	* http://msdn.microsoft.com/en-us/library/ie/hh673557(v=vs.85).aspx
	* 
	* You should not normally access this class directly, but instead use a Phaser.Pointer object which
	* normalises all game input for you including accurate button handling.
	* 
	* Please note that at the current time of writing Phaser does not yet support chorded button interactions:
	* http://www.w3.org/TR/pointerevents/#chorded-button-interactions
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* This property was removed in Phaser 2.4 and should no longer be used.
	* Instead please see the Pointer button properties such as `Pointer.leftButton`, `Pointer.rightButton` and so on.
	* Or Pointer.button holds the DOM event button value if you require that.
	*/
	var button:Float;
	
	/**
	* If true the Pointer events will have event.preventDefault applied to them, if false they will propagate fully.
	*/
	var capture:Bool;
	
	/**
	* The context under which callbacks are called (defaults to game).
	*/
	var callbackContext:Dynamic;
	
	/**
	* The browser MSPointer DOM event. Will be null if no event has ever been received.
	* Access this property only inside a Pointer event handler and do not keep references to it.
	*/
	var event:MSPointerEvent;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* A reference to the Phaser Input Manager.
	*/
	var input:phaser.Input;
	
	var onPointerDown:MSPointerEvent->Void;
	
	var onPointerMove:MSPointerEvent->Void;
	
	var onPointerUp:MSPointerEvent->Void;
	
	var mouseDownCallback:MSPointerEvent->Void;
	
	var mouseMoveCallback:MSPointerEvent->Void;
	
	var mouseUpCallback:MSPointerEvent->Void;
	
	/**
	* A callback that can be fired on a MSPointerDown event.
	*/
	var pointerDownCallback:MSPointerEvent->Void;
	
	/**
	* A callback that can be fired on a MSPointerMove event.
	*/
	var pointerMoveCallback:MSPointerEvent->Void;
	
	/**
	* A callback that can be fired on a MSPointerUp event.
	*/
	var pointerUpCallback:MSPointerEvent->Void;
	
	/**
	* Starts the event listeners running.
	*/
	function start():Void;
	
	/**
	* Stop the event listeners.
	*/
	function stop():Void;
	
}

