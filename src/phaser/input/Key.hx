package phaser.input;

@:native("Phaser.Key")
extern class Key {
	
	/**
	 * @class Phaser.Key
	 */
	function new (game:phaser.core.Game, keycode:Float);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * An enabled key processes its update and dispatches events. You can toggle this at run-time to disable a key without deleting it.
	 */
	var enabled:Bool;
	
	/**
	 * Stores the most recent DOM event.
	 */
	var event(default, null):Dynamic;
	
	/**
	 * The "down" state of the key.
	 */
	var isDown:Bool;
	
	/**
	 * The "up" state of the key.
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
	 * Called automatically by Phaser.Keyboard.
	 */
	function processKeyDown (event:Dynamic):Void;
	
	/**
	 * Called automatically by Phaser.Keyboard.
	 */
	function processKeyUp (event:Dynamic):Void;
	
	/**
	 * Resets the state of this Key. This sets isDown to false, isUp to true, resets the time to be the current time and clears any callbacks
	 * associated with the onDown and onUp events and nulls the onHoldCallback if set.
	 */
	function reset (?hard:Bool = true):Void;
	
	/**
	 * Returns the "just pressed" state of the Key. Just pressed is considered true if the key was pressed down within the duration given.
	 */
	function justPressed (?duration:Float = 50):Bool;
	
	/**
	 * Returns the "just released" state of the Key. Just released is considered as being true if the key was released within the duration given.
	 */
	function justReleased (?duration:Float = 50):Bool;
	
}
