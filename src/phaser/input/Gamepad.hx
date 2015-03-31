package phaser.input;

@:native("Phaser.Gamepad")
extern class Gamepad {
	
	/**
	 * The Gamepad class handles gamepad input and dispatches gamepad events.
	 * 
	 * Remember to call gamepad.start().
	 * 
	 * HTML5 GAMEPAD API SUPPORT IS AT AN EXPERIMENTAL STAGE!
	 * At moment of writing this (end of 2013) only Chrome supports parts of it out of the box. Firefox supports it
	 * via prefs flags (about:config, search gamepad). The browsers map the same controllers differently.
	 * This class has constants for Windows 7 Chrome mapping of XBOX 360 controller.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Maps the browsers gamepad indices to our Phaser Gamepads
	 */
	var _gamepadIndexMap:Dynamic;
	
	/**
	 * The raw state of the gamepads from the browser
	 */
	var _rawPads:Array<Dynamic>;
	
	/**
	 * Private flag for whether or not the API is polled
	 */
	var _active:Bool;
	
	/**
	 * Gamepad input will only be processed if enabled.
	 */
	var enabled:Bool;
	
	/**
	 * Whether or not gamepads are supported in the current browser. Note that as of Dec. 2013 this check is actually not accurate at all due to poor implementation.
	 */
	var gamepadSupportAvailable:Bool;
	
	/**
	 * Used to check for differences between earlier polls and current state of gamepads.
	 */
	var prevRawGamepadTypes:Array<Dynamic>;
	
	/**
	 * Used to check for differences between earlier polls and current state of gamepads.
	 */
	var prevTimestamps:Array<Dynamic>;
	
	/**
	 * The context under which the callbacks are run.
	 */
	var callbackContext:Dynamic;
	
	/**
	 * This callback is invoked every time any gamepad is connected
	 */
	var onConnectCallback:Dynamic;
	
	/**
	 * This callback is invoked every time any gamepad is disconnected
	 */
	var onDisconnectCallback:Dynamic;
	
	/**
	 * This callback is invoked every time any gamepad button is pressed down.
	 */
	var onDownCallback:Dynamic;
	
	/**
	 * This callback is invoked every time any gamepad button is released.
	 */
	var onUpCallback:Dynamic;
	
	/**
	 * This callback is invoked every time any gamepad axis is changed.
	 */
	var onAxisCallback:Dynamic;
	
	/**
	 * This callback is invoked every time any gamepad button is changed to a value where value > 0 and value &lt; 1.
	 */
	var onFloatCallback:Dynamic;
	
	/**
	 * Private callback for Firefox gamepad connection handling
	 */
	var _ongamepadconnected:Dynamic;
	
	/**
	 * Private callback for Firefox gamepad connection handling
	 */
	var _gamepaddisconnected:Dynamic;
	
	/**
	 * The four Phaser Gamepads.
	 */
	var _gamepads:Dynamic;
	
	/**
	 * Add callbacks to the main Gamepad handler to handle connect/disconnect/button down/button up/axis change/float value buttons.
	 */
	function addCallbacks (context:Dynamic, callbacks:Dynamic):Void;
	
	/**
	 * Starts the Gamepad event handling.
	 * This MUST be called manually before Phaser will start polling the Gamepad API.
	 */
	function start ():Void;
	
	/**
	 * Main gamepad update loop. Should not be called manually.
	 */
	function update ():Void;
	
	/**
	 * Updating connected gamepads (for Google Chrome). Should not be called manually.
	 */
	function _pollGamepads ():Void;
	
	/**
	 * Sets the deadZone variable for all four gamepads
	 */
	function setDeadZones ():Void;
	
	/**
	 * Stops the Gamepad event handling.
	 */
	function stop ():Void;
	
	/**
	 * Reset all buttons/axes of all gamepads
	 */
	function reset ():Void;
	
	/**
	 * Returns the "just pressed" state of a button from ANY gamepad connected. Just pressed is considered true if the button was pressed down within the duration given (default 250ms).
	 */
	function justPressed (buttonCode:Float, ?duration:Float = 250):Bool;
	
	/**
	 * Returns true if the button is currently pressed down, on ANY gamepad.
	 */
	function isDown (buttonCode:Float):Bool;
	
	/**
	 * Destroys this object and the associated event listeners.
	 */
	function destroy ():Void;
	
	/**
	 * If disabled all Gamepad input will be ignored.
	 */
	var disabled:Bool;
	
	/**
	 * If the gamepad input is active or not - if not active it should not be updated from Input.js
	 */
	var active(default, null):Bool;
	
	/**
	 * Whether or not gamepads are supported in current browser.
	 */
	var supported(default, null):Bool;
	
	/**
	 * How many live gamepads are currently connected.
	 */
	var padsConnected(default, null):Float;
	
	/**
	 * Gamepad #1
	 */
	var pad1(default, null):phaser.input.SinglePad;
	
	/**
	 * Gamepad #2
	 */
	var pad2(default, null):phaser.input.SinglePad;
	
	/**
	 * Gamepad #3
	 */
	var pad3(default, null):phaser.input.SinglePad;
	
	/**
	 * Gamepad #4
	 */
	var pad4(default, null):phaser.input.SinglePad;
	
}
