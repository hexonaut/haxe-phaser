package phaser.input;

@:native("Phaser.SinglePad")
extern class SinglePad {
	
	/**
	 * A single Phaser Gamepad
	 */
	function new (game:phaser.core.Game, padParent:Dynamic);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The gamepad index as per browsers data
	 */
	var index(default, null):Float;
	
	/**
	 * Whether or not this particular gamepad is connected or not.
	 */
	var connected(default, null):Bool;
	
	/**
	 * The context under which the callbacks are run.
	 */
	var callbackContext:Dynamic;
	
	/**
	 * This callback is invoked every time this gamepad is connected
	 */
	var onConnectCallback:Dynamic;
	
	/**
	 * This callback is invoked every time this gamepad is disconnected
	 */
	var onDisconnectCallback:Dynamic;
	
	/**
	 * This callback is invoked every time a button is pressed down.
	 */
	var onDownCallback:Dynamic;
	
	/**
	 * This callback is invoked every time a gamepad button is released.
	 */
	var onUpCallback:Dynamic;
	
	/**
	 * This callback is invoked every time an axis is changed.
	 */
	var onAxisCallback:Dynamic;
	
	/**
	 * This callback is invoked every time a button is changed to a value where value > 0 and value &lt; 1.
	 */
	var onFloatCallback:Dynamic;
	
	/**
	 * Dead zone for axis feedback - within this value you won't trigger updates.
	 */
	var deadZone:Float;
	
	/**
	 * Main Phaser Gamepad object
	 */
	var _padParent:phaser.input.Gamepad;
	
	/**
	 * The 'raw' gamepad data.
	 */
	var _rawPad:Dynamic;
	
	/**
	 * Used to check for differences between earlier polls and current state of gamepads.
	 */
	var _prevTimestamp:Float;
	
	/**
	 * Array of Phaser.GamepadButton objects. This array is populated when the gamepad is connected.
	 */
	var _buttons:Array<Dynamic>;
	
	/**
	 * Length of the _buttons array.
	 */
	var _buttonsLen:Float;
	
	/**
	 * Current axes state.
	 */
	var _axes:Array<Dynamic>;
	
	/**
	 * Length of the _axes array.
	 */
	var _axesLen:Float;
	
	/**
	 * Add callbacks to this Gamepad to handle connect / disconnect / button down / button up / axis change / float value buttons.
	 */
	function addCallbacks (context:Dynamic, callbacks:Dynamic):Void;
	
	/**
	 * Gets a GamepadButton object from this controller to be stored and referenced locally.
	 * The GamepadButton object can then be polled, have events attached to it, etc.
	 */
	function getButton (buttonCode:Float):phaser.input.GamepadButton;
	
	/**
	 * Main update function called by Phaser.Gamepad.
	 */
	function pollStatus ():Void;
	
	/**
	 * Gamepad connect function, should be called by Phaser.Gamepad.
	 */
	function connect (rawPad:Dynamic):Void;
	
	/**
	 * Gamepad disconnect function, should be called by Phaser.Gamepad.
	 */
	function disconnect ():Void;
	
	/**
	 * Destroys this object and associated callback references.
	 */
	function destroy ():Void;
	
	/**
	 * Handles changes in axis.
	 */
	function processAxisChange (axisState:Dynamic):Void;
	
	/**
	 * Handles button down press.
	 */
	function processButtonDown (buttonCode:Float, value:Dynamic):Void;
	
	/**
	 * Handles button release.
	 */
	function processButtonUp (buttonCode:Float, value:Dynamic):Void;
	
	/**
	 * Handles buttons with floating values (like analog buttons that acts almost like an axis but still registers like a button)
	 */
	function processButtonFloat (buttonCode:Float, value:Dynamic):Void;
	
	/**
	 * Returns value of requested axis.
	 */
	function axis (axisCode:Float):Float;
	
	/**
	 * Returns true if the button is pressed down.
	 */
	function isDown (buttonCode:Float):Bool;
	
	/**
	 * Returns true if the button is not currently pressed.
	 */
	function isUp (buttonCode:Float):Bool;
	
	/**
	 * Returns the "just released" state of a button from this gamepad. Just released is considered as being true if the button was released within the duration given (default 250ms).
	 */
	function justReleased (buttonCode:Float, ?duration:Float = 250):Bool;
	
	/**
	 * Returns the "just pressed" state of a button from this gamepad. Just pressed is considered true if the button was pressed down within the duration given (default 250ms).
	 */
	function justPressed (buttonCode:Float, ?duration:Float = 250):Bool;
	
	/**
	 * Returns the value of a gamepad button. Intended mainly for cases when you have floating button values, for example
	 * analog trigger buttons on the XBOX 360 controller.
	 */
	function buttonValue (buttonCode:Float):Float;
	
	/**
	 * Reset all buttons/axes of this gamepad.
	 */
	function reset ():Void;
	
}
