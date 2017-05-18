package phaser;

import js.html.Event;
import js.html.KeyboardEvent;

/**
* If you need more fine-grained control over the handling of specific keys you can create and use Phaser.Key objects.
*/
@:native("Phaser.Key")
extern class Key {

	/**
	* If you need more fine-grained control over the handling of specific keys you can create and use Phaser.Key objects.
	* 
	* @param game Current game instance.
	* @param keycode The key code this Key is responsible for. See {
	* @link Phaser.KeyCode}.
	*/
	function new(game:phaser.Game, keycode:Float);
	
	/**
	* The down state of the ALT key, if pressed at the same time as this key.
	*/
	var altKey:Bool;
	
	/**
	* The down state of the CTRL key, if pressed at the same time as this key.
	*/
	var ctrlKey:Bool;
	
	/**
	* If the key is down this value holds the duration of that key press and is constantly updated.
	* If the key is up it holds the duration of the previous down session. The number of milliseconds this key has been held down for.
	*/
	var duration:Float;
	
	/**
	* An enabled key processes its update and dispatches events.
	* A key can be disabled momentarily at runtime instead of deleting it.
	* Default: true
	*/
	var enabled:Bool;
	
	/**
	* Stores the most recent DOM event.
	*/
	var event:Dynamic;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* The "down" state of the key. This will remain `true` for as long as the keyboard thinks this key is held down.
	*/
	var isDown:Bool;
	
	/**
	* The "up" state of the key. This will remain `true` for as long as the keyboard thinks this key is up.
	* Default: true
	*/
	var isUp:Bool;
	
	/**
	* True if the key has just been pressed (NOTE: requires to be reset, see justDown getter)
	*/
	var _justDown:Bool;
	
	/**
	* The justDown value allows you to test if this Key has just been pressed down or not.
	* When you check this value it will return `true` if the Key is down, otherwise `false`.
	* You can only call justDown once per key press. It will only return `true` once, until the Key is released and pressed down again.
	* This allows you to use it in situations where you want to check if this key is down without using a Signal, such as in a core game loop.
	* Default: false
	*/
	var justDown:Bool;
	
	/**
	* True if the key has just been pressed (NOTE: requires to be reset, see justDown getter)
	*/
	var _justUp:Bool;
	
	/**
	* The justUp value allows you to test if this Key has just been released or not.
	* When you check this value it will return `true` if the Key is up, otherwise `false`.
	* You can only call justUp once per key release. It will only return `true` once, until the Key is pressed down and released again.
	* This allows you to use it in situations where you want to check if this key is up without using a Signal, such as in a core game loop.
	* Default: false
	*/
	var justUp:Bool;
	
	/**
	* The keycode of this key.
	*/
	var keyCode:Float;
	
	/**
	* This Signal is dispatched every time this Key is pressed down. It is only dispatched once (until the key is released again).
	*/
	var onDown:phaser.Signal;
	
	/**
	* A callback that is called while this Key is held down. Warning: Depending on refresh rate that could be 60+ times per second.
	*/
	var onHoldCallback:Dynamic;
	
	/**
	* The context under which the onHoldCallback will be called.
	*/
	var onHoldContext:Dynamic;
	
	/**
	* This Signal is dispatched every time this Key is released. It is only dispatched once (until the key is pressed and released again).
	*/
	var onUp:phaser.Signal;
	
	/**
	* If a key is held down this holds down the number of times the key has 'repeated'.
	*/
	var repeats:Float;
	
	/**
	* The down state of the SHIFT key, if pressed at the same time as this key.
	*/
	var shiftKey:Bool;
	
	/**
	* The timestamp when the key was last pressed down. This is based on Game.time.now.
	*/
	var timeDown:Float;
	
	/**
	* The timestamp when the key was last released. This is based on Game.time.now.
	*/
	var timeUp:Float;
	
	/**
	* Returns `true` if the Key was pressed down within the `duration` value given, or `false` if it either isn't down,
	* or was pressed down longer ago than then given duration.
	* 
	* @param duration The duration within which the key is considered as being just pressed. Given in ms. - Default: 50
	* @return True if the key was pressed down within the given duration.
	*/
	function downDuration(?duration:Float):Bool;
	
	/**
	* Called automatically by Phaser.Keyboard.
	* 
	* @param event The DOM event that triggered this.
	*/
	function processKeyDown(event:KeyboardEvent):Void;
	
	/**
	* Called automatically by Phaser.Keyboard.
	* 
	* @param event The DOM event that triggered this.
	*/
	function processKeyUp(event:KeyboardEvent):Void;
	
	/**
	* Resets the state of this Key.
	* 
	* This sets isDown to false, isUp to true, resets the time to be the current time, and _enables_ the key.
	* In addition, if it is a "hard reset", it clears clears any callbacks associated with the onDown and onUp events and removes the onHoldCallback.
	* 
	* @param hard A soft reset won't reset any events or callbacks; a hard reset will. - Default: true
	*/
	function reset(?hard:Bool):Void;
	
	/**
	* Called automatically by Phaser.Keyboard.
	*/
	function update():Void;
	
	/**
	* Returns `true` if the Key was pressed down within the `duration` value given, or `false` if it either isn't down,
	* or was pressed down longer ago than then given duration.
	* 
	* @param duration The duration within which the key is considered as being just released. Given in ms. - Default: 50
	* @return True if the key was released within the given duration.
	*/
	function upDuration(?duration:Float):Bool;
	
}

