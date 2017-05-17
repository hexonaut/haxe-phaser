package phaser;

/**
* A single Phaser Gamepad
*/
@:native("Phaser.SinglePad")
extern class SinglePad {

	/**
	* A single Phaser Gamepad
	* 
	* @param game Current game instance.
	* @param padParent The parent Phaser.Gamepad object (all gamepads reside under this)
	*/
	function new(game:phaser.Game, padParent:Dynamic);
	
	/**
	* The context under which the callbacks are run.
	*/
	var callbackContext:Dynamic;
	
	/**
	* Whether or not this particular gamepad is connected or not.
	*/
	var connected:Bool;
	
	/**
	* Dead zone for axis feedback - within this value you won't trigger updates.
	*/
	var deadZone:Float;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* The gamepad index as per browsers data
	*/
	var index:Float;
	
	/**
	* This callback is invoked every time an axis is changed.
	*/
	var onAxisCallback:Dynamic;
	
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
	* This callback is invoked every time a button is changed to a value where value > 0 and value < 1.
	*/
	var onFloatCallback:Dynamic;
	
	/**
	* This callback is invoked every time a gamepad button is released.
	*/
	var onUpCallback:Dynamic;
	
	/**
	* Returns value of requested axis.
	* 
	* @param axisCode The index of the axis to check
	* @return Axis value if available otherwise false
	*/
	function axis(axisCode:Float):Float;
	
	/**
	* Add callbacks to this Gamepad to handle connect / disconnect / button down / button up / axis change / float value buttons.
	* 
	* @param context The context under which the callbacks are run.
	* @param callbacks Object that takes six different callbak methods:onConnectCallback, onDisconnectCallback, onDownCallback, onUpCallback, onAxisCallback, onFloatCallback
	*/
	function addCallbacks(context:Dynamic, callbacks:Dynamic):Void;
	
	/**
	* Returns the value of a gamepad button. Intended mainly for cases when you have floating button values, for example
	* analog trigger buttons on the XBOX 360 controller.
	* 
	* @param buttonCode The buttonCode of the button to check.
	* @return Button value if available otherwise null. Be careful as this can incorrectly evaluate to 0.
	*/
	function buttonValue(buttonCode:Float):Float;
	
	/**
	* Gamepad connect function, should be called by Phaser.Gamepad.
	* 
	* @param rawPad The raw gamepad object
	*/
	function connect(rawPad:Dynamic):Void;
	
	/**
	* Destroys this object and associated callback references.
	*/
	function destroy():Void;
	
	/**
	* Gamepad disconnect function, should be called by Phaser.Gamepad.
	*/
	function disconnect():Void;
	
	/**
	* Gets a DeviceButton object from this controller to be stored and referenced locally.
	* The DeviceButton object can then be polled, have events attached to it, etc.
	* 
	* @param buttonCode The buttonCode of the button, i.e. Phaser.Gamepad.BUTTON_0, Phaser.Gamepad.XBOX360_A, etc.
	* @return The DeviceButton object which you can store locally and reference directly.
	*/
	function getButton(buttonCode:Float):phaser.DeviceButton;
	
	/**
	* Returns true if the button is pressed down.
	* 
	* @param buttonCode The buttonCode of the button to check.
	* @return True if the button is pressed down.
	*/
	function isDown(buttonCode:Float):Bool;
	
	/**
	* Returns true if the button is not currently pressed.
	* 
	* @param buttonCode The buttonCode of the button to check.
	* @return True if the button is not currently pressed down.
	*/
	function isUp(buttonCode:Float):Bool;
	
	/**
	* Returns the "just pressed" state of a button from this gamepad. Just pressed is considered true if the button was pressed down within the duration given (default 250ms).
	* 
	* @param buttonCode The buttonCode of the button to check for.
	* @param duration The duration below which the button is considered as being just pressed. - Default: 250
	* @return True if the button is just pressed otherwise false.
	*/
	function justPressed(buttonCode:Float, ?duration:Float):Bool;
	
	/**
	* Returns the "just released" state of a button from this gamepad. Just released is considered as being true if the button was released within the duration given (default 250ms).
	* 
	* @param buttonCode The buttonCode of the button to check for.
	* @param duration The duration below which the button is considered as being just released. - Default: 250
	* @return True if the button is just released otherwise false.
	*/
	function justReleased(buttonCode:Float, ?duration:Float):Bool;
	
	/**
	* Main update function called by Phaser.Gamepad.
	*/
	function pollStatus():Void;
	
	/**
	* Handles changes in axis.
	* 
	* @param axisState State of the relevant axis
	*/
	function processAxisChange(axisState:Dynamic):Void;
	
	/**
	* Handles button down press.
	* 
	* @param buttonCode Which buttonCode of this button
	* @param value Button value
	*/
	function processButtonDown(buttonCode:Float, value:Dynamic):Void;
	
	/**
	* Handles buttons with floating values (like analog buttons that acts almost like an axis but still registers like a button)
	* 
	* @param buttonCode Which buttonCode of this button
	* @param value Button value (will range somewhere between 0 and 1, but not specifically 0 or 1.
	*/
	function processButtonFloat(buttonCode:Float, value:Dynamic):Void;
	
	/**
	* Handles button release.
	* 
	* @param buttonCode Which buttonCode of this button
	* @param value Button value
	*/
	function processButtonUp(buttonCode:Float, value:Dynamic):Void;
	
	/**
	* Reset all buttons/axes of this gamepad.
	*/
	function reset():Void;
	
}

