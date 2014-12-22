package phaser.input;

@:native("Phaser.Key")
extern class Key {
	
	/**
	 * If you need more fine-grained control over the handling of specific keys you can create and use Phaser.Key objects.
	 */
	function new (game:phaser.core.Game, keycode:Float);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The enabled state of the key - see enabled.
	 */
	var enabled:Bool;
	
	/**
	 * Stores the most recent DOM event.
	 */
	var event(default, null):Dynamic;
	
	/**
	 * The "down" state of the key. This will remain true for as long as the keyboard thinks this key is held down.
	 */
	var isDown:Bool;
	
	/**
	 * The "up" state of the key. This will remain true for as long as the keyboard thinks this key is up.
	 */
	var isUp:Bool;
	
	/**
	 * The down state of the ALT key, if pressed at the same time as this key.
	 */
	var altKey:Bool;
	
	/**
	 * The down state of the CTRL key, if pressed at the same time as this key.
	 */
	var ctrlKey:Bool;
	
	/**
	 * The down state of the SHIFT key, if pressed at the same time as this key.
	 */
	var shiftKey:Bool;
	
	/**
	 * The timestamp when the key was last pressed down. This is based on Game.time.now.
	 */
	var timeDown:Float;
	
	/**
	 * If the key is down this value holds the duration of that key press and is constantly updated.
	 * If the key is up it holds the duration of the previous down session.
	 */
	var duration:Float;
	
	/**
	 * The timestamp when the key was last released. This is based on Game.time.now.
	 */
	var timeUp:Float;
	
	/**
	 * If a key is held down this holds down the number of times the key has 'repeated'.
	 */
	var repeats:Float;
	
	/**
	 * The keycode of this key.
	 */
	var keyCode:Float;
	
	/**
	 * This Signal is dispatched every time this Key is pressed down. It is only dispatched once (until the key is released again).
	 */
	var onDown:phaser.core.Signal;
	
	/**
	 * A callback that is called while this Key is held down. Warning: Depending on refresh rate that could be 60+ times per second.
	 */
	var onHoldCallback:Dynamic;
	
	/**
	 * The context under which the onHoldCallback will be called.
	 */
	var onHoldContext:Dynamic;
	
	/**
	 * This Signal is dispatched every time this Key is pressed down. It is only dispatched once (until the key is released again).
	 */
	var onUp:phaser.core.Signal;
	
	/**
	 * True if the key has just been pressed (NOTE: requires to be reset, see justDown getter)
	 */
	var _justDown:Bool;
	
	/**
	 * True if the key has just been pressed (NOTE: requires to be reset, see justDown getter)
	 */
	var _justUp:Bool;
	
	/**
	 * Called automatically by Phaser.Keyboard.
	 */
	function update ():Void;
	
	/**
	 * Called automatically by Phaser.Keyboard.
	 */
	function processKeyDown (event:Dynamic):Void;
	
	/**
	 * Called automatically by Phaser.Keyboard.
	 */
	function processKeyUp (event:Dynamic):Void;
	
	/**
	 * Resets the state of this Key.
	 * 
	 * This sets isDown to false, isUp to true, resets the time to be the current time, and <em>enables</em> the key.
	 * In addition, if it is a "hard reset", it clears clears any callbacks associated with the onDown and onUp events and removes the onHoldCallback.
	 */
	function reset (?hard:Bool = true):Void;
	
	/**
	 * Returns true if the Key was pressed down within the duration value given, or false if it either isn't down,
	 * or was pressed down longer ago than then given duration.
	 */
	function downDuration (?duration:Float = 50):Bool;
	
	/**
	 * Returns true if the Key was pressed down within the duration value given, or false if it either isn't down,
	 * or was pressed down longer ago than then given duration.
	 */
	function upDuration (?duration:Float = 50):Bool;
	
	/**
	 * The justDown value allows you to test if this Key has just been pressed down or not.
	 * When you check this value it will return true if the Key is down, otherwise false.
	 * You can only call justDown once per key press. It will only return true once, until the Key is released and pressed down again.
	 * This allows you to use it in situations where you want to check if this key is down without using a Signal, such as in a core game loop.
	 */
	var justDown:Bool;
	
	/**
	 * The justUp value allows you to test if this Key has just been released or not.
	 * When you check this value it will return true if the Key is up, otherwise false.
	 * You can only call justUp once per key release. It will only return true once, until the Key is pressed down and released again.
	 * This allows you to use it in situations where you want to check if this key is up without using a Signal, such as in a core game loop.
	 */
	var justUp:Bool;
	
}
