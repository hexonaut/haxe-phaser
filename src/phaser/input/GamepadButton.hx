package phaser.input;

@:native("Phaser.GamepadButton")
extern class GamepadButton {
	
	/**
	 * @class Phaser.GamepadButton
	 */
	function new (game:phaser.core.Game, buttoncode:Float);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The "down" state of the button.
	 */
	var isDown:Bool;
	
	/**
	 * The "up" state of the button.
	 */
	var isUp:Bool;
	
	/**
	 * The timestamp when the button was last pressed down.
	 */
	var timeDown:Float;
	
	/**
	 * If the button is down this value holds the duration of that button press and is constantly updated.
	 * If the button is up it holds the duration of the previous down session.
	 */
	var duration:Float;
	
	/**
	 * The timestamp when the button was last released.
	 */
	var timeUp:Float;
	
	/**
	 * If a button is held down this holds down the number of times the button has 'repeated'.
	 */
	var repeats:Float;
	
	/**
	 * Button value. Mainly useful for checking analog buttons (like shoulder triggers)
	 */
	var value:Float;
	
	/**
	 * The buttoncode of this button.
	 */
	var buttonCode:Float;
	
	/**
	 * This Signal is dispatched every time this GamepadButton is pressed down. It is only dispatched once (until the button is released again).
	 */
	var onDown:phaser.core.Signal;
	
	/**
	 * This Signal is dispatched every time this GamepadButton is pressed down. It is only dispatched once (until the button is released again).
	 */
	var onUp:phaser.core.Signal;
	
	/**
	 * This Signal is dispatched every time this GamepadButton changes floating value (between (but not exactly) 0 and 1)
	 */
	var onFloat:phaser.core.Signal;
	
	/**
	 * Called automatically by Phaser.SinglePad.
	 */
	function processButtonDown (value:Dynamic):Void;
	
	/**
	 * Called automatically by Phaser.SinglePad.
	 */
	function processButtonUp (value:Dynamic):Void;
	
	/**
	 * Called automatically by Phaser.Gamepad.
	 */
	function processButtonFloat (value:Dynamic):Void;
	
	/**
	 * Returns the "just pressed" state of this button. Just pressed is considered true if the button was pressed down within the duration given (default 250ms).
	 */
	function justPressed (?duration:Float = 250):Bool;
	
}
