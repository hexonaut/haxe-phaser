package phaser.input;

@:native("Phaser.SinglePad")
extern class SinglePad {
	
	/**
	 * @class Phaser.SinglePad
	 */
	function new (game:phaser.core.Game, padParent:Dynamic);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Main Phaser Gamepad object
	 */
	var _padParent:phaser.input.Gamepad;
	
	/**
	 * The gamepad index as per browsers data
	 */
	var _index:Float;
	
	/**
	 * The 'raw' gamepad data.
	 */
	var _rawPad:Dynamic;
	
	/**
	 * Is this pad connected or not.
	 */
	var _connected:Bool;
	
	/**
	 * Used to check for differences between earlier polls and current state of gamepads.
	 */
	var _prevTimestamp:Float;
	
	/**
	 * The 'raw' button state.
	 */
	var _rawButtons:Array<Dynamic>;
	
	/**
	 * Current Phaser state of the buttons.
	 */
	var _buttons:Array<Dynamic>;
	
	/**
	 * Current axes state.
	 */
	var _axes:Array<Dynamic>;
	
	/**
	 * Hotkey buttons.
	 */
	var _hotkeys:Array<Dynamic>;
	
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
	 * Add callbacks to the this Gamepad to handle connect/disconnect/button down/button up/axis change/float value buttons
	 */
	function addCallbacks (context:Dynamic, callbacks:Dynamic):Void;
	
	/**
	 * If you need more fine-grained control over a Key you can create a new Phaser.Key object via this method.
	 * The Key object can then be polled, have events attached to it, etc.
	 */
	function addButton (buttonCode:Float):phaser.input.GamepadButton;
	
	/**
	 * Main update function, should be called by Phaser.Gamepad
	 */
	function pollStatus ():Void;
	
	/**
	 * Gamepad connect function, should be called by Phaser.Gamepad
	 */
	function connect (rawPad:Dynamic):Void;
	
	/**
	 * Gamepad disconnect function, should be called by Phaser.Gamepad
	 */
	function disconnect ():Void;
	
	/**
	 * Handles changes in axis
	 */
	function processAxisChange (axisState:Dynamic):Void;
	
	/**
	 * Handles button down press
	 */
	function processButtonDown (buttonCode:Float, value:Dynamic):Void;
	
	/**
	 * Handles button release
	 */
	function processButtonUp (buttonCode:Float, value:Dynamic):Void;
	
	/**
	 * Handles buttons with floating values (like analog buttons that acts almost like an axis but still registers like a button)
	 */
	function processButtonFloat (buttonCode:Float, value:Dynamic):Void;
	
	/**
	 * Returns value of requested axis
	 */
	function axis (axisCode:Float):Float;
	
	/**
	 * Returns true if the button is currently pressed down.
	 */
	function isDown (buttonCode:Float):Bool;
	
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
	 * analog trigger buttons on the XBOX 360 controller
	 */
	function buttonValue (buttonCode:Float):Bool;
	
	/**
	 * Reset all buttons/axes of this gamepad
	 */
	function reset ():Void;
	
	/**
	 * Whether or not this particular gamepad is connected or not.
	 */
	var connected(default, null):Bool;
	
	/**
	 * Gamepad index as per browser data
	 */
	var index(default, null):Float;
	
}
