package phaser;

/**
* The Gamepad class handles gamepad input and dispatches gamepad events.
* 
* Remember to call `gamepad.start()`.
* 
* HTML5 GAMEPAD API SUPPORT IS AT AN EXPERIMENTAL STAGE!
* At moment of writing this (end of 2013) only Chrome supports parts of it out of the box. Firefox supports it
* via prefs flags (about:config, search gamepad). The browsers map the same controllers differently.
* This class has constants for Windows 7 Chrome mapping of XBOX 360 controller.
*/
@:native("Phaser.Gamepad")
extern class Gamepad {

	/**
	* The Gamepad class handles gamepad input and dispatches gamepad events.
	* 
	* Remember to call `gamepad.start()`.
	* 
	* HTML5 GAMEPAD API SUPPORT IS AT AN EXPERIMENTAL STAGE!
	* At moment of writing this (end of 2013) only Chrome supports parts of it out of the box. Firefox supports it
	* via prefs flags (about:config, search gamepad). The browsers map the same controllers differently.
	* This class has constants for Windows 7 Chrome mapping of XBOX 360 controller.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	static var BUTTON_0:Float;
	
	static var BUTTON_1:Float;
	
	static var BUTTON_2:Float;
	
	static var BUTTON_3:Float;
	
	static var BUTTON_4:Float;
	
	static var BUTTON_5:Float;
	
	static var BUTTON_6:Float;
	
	static var BUTTON_7:Float;
	
	static var BUTTON_8:Float;
	
	static var BUTTON_9:Float;
	
	static var BUTTON_10:Float;
	
	static var BUTTON_11:Float;
	
	static var BUTTON_12:Float;
	
	static var BUTTON_13:Float;
	
	static var BUTTON_14:Float;
	
	static var BUTTON_15:Float;
	
	static var AXIS_0:Float;
	
	static var AXIS_1:Float;
	
	static var AXIS_2:Float;
	
	static var AXIS_3:Float;
	
	static var AXIS_4:Float;
	
	static var AXIS_5:Float;
	
	static var AXIS_6:Float;
	
	static var AXIS_7:Float;
	
	static var AXIS_8:Float;
	
	static var AXIS_9:Float;
	
	static var XBOX360_A:Float;
	
	static var XBOX360_B:Float;
	
	static var XBOX360_X:Float;
	
	static var XBOX360_Y:Float;
	
	static var XBOX360_LEFT_BUMPER:Float;
	
	static var XBOX360_RIGHT_BUMPER:Float;
	
	static var XBOX360_LEFT_TRIGGER:Float;
	
	static var XBOX360_RIGHT_TRIGGER:Float;
	
	static var XBOX360_BACK:Float;
	
	static var XBOX360_START:Float;
	
	static var XBOX360_STICK_LEFT_BUTTON:Float;
	
	static var XBOX360_STICK_RIGHT_BUTTON:Float;
	
	static var XBOX360_DPAD_LEFT:Float;
	
	static var XBOX360_DPAD_RIGHT:Float;
	
	static var XBOX360_DPAD_UP:Float;
	
	static var XBOX360_DPAD_DOWN:Float;
	
	static var XBOX360_STICK_LEFT_X:Float;
	
	static var XBOX360_STICK_LEFT_Y:Float;
	
	static var XBOX360_STICK_RIGHT_X:Float;
	
	static var XBOX360_STICK_RIGHT_Y:Float;
	
	static var PS3XC_X:Float;
	
	static var PS3XC_CIRCLE:Float;
	
	static var PS3XC_SQUARE:Float;
	
	static var PS3XC_TRIANGLE:Float;
	
	static var PS3XC_L1:Float;
	
	static var PS3XC_R1:Float;
	
	static var PS3XC_L2:Float;
	
	static var PS3XC_R2:Float;
	
	static var PS3XC_SELECT:Float;
	
	static var PS3XC_START:Float;
	
	static var PS3XC_STICK_LEFT_BUTTON:Float;
	
	static var PS3XC_STICK_RIGHT_BUTTON:Float;
	
	static var PS3XC_DPAD_UP:Float;
	
	static var PS3XC_DPAD_DOWN:Float;
	
	static var PS3XC_DPAD_LEFT:Float;
	
	static var PS3XC_DPAD_RIGHT:Float;
	
	static var PS3XC_STICK_LEFT_X:Float;
	
	static var PS3XC_STICK_LEFT_Y:Float;
	
	static var PS3XC_STICK_RIGHT_X:Float;
	
	static var PS3XC_STICK_RIGHT_Y:Float;
	
	/**
	* If the gamepad input is active or not - if not active it should not be updated from Input.js
	*/
	var active:Bool;
	
	/**
	* The context under which the callbacks are run.
	*/
	var callbackContext:Dynamic;
	
	/**
	* Gamepad input will only be processed if enabled.
	* Default: true
	*/
	var enabled:Bool;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	var onAxisCallBack:Dynamic;
	
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
	* This callback is invoked every time any gamepad button is changed to a value where value > 0 and value < 1.
	*/
	var onFloatCallback:Dynamic;
	
	/**
	* This callback is invoked every time any gamepad button is released.
	*/
	var onUpCallback:Dynamic;
	
	/**
	* Gamepad #1
	*/
	var pad1:phaser.SinglePad;
	
	/**
	* Gamepad #2
	*/
	var pad2:phaser.SinglePad;
	
	/**
	* Gamepad #3
	*/
	var pad3:phaser.SinglePad;
	
	/**
	* Gamepad #4
	*/
	var pad4:phaser.SinglePad;
	
	/**
	* How many live gamepads are currently connected.
	*/
	var padsConnected:Float;
	
	/**
	* Whether or not gamepads are supported in current browser.
	*/
	var supported:Bool;
	
	/**
	* Add callbacks to the main Gamepad handler to handle connect/disconnect/button down/button up/axis change/float value buttons.
	* 
	* @param context The context under which the callbacks are run.
	* @param callbacks Object that takes six different callback methods:onConnectCallback, onDisconnectCallback, onDownCallback, onUpCallback, onAxisCallback, onFloatCallback
	*/
	function addCallbacks(context:Dynamic, callbacks:Dynamic):Void;
	
	/**
	* Returns true if the button is currently pressed down, on ANY gamepad.
	* 
	* @param buttonCode The buttonCode of the button to check for.
	* @return True if a button is currently down.
	*/
	function isDown(buttonCode:Float):Bool;
	
	/**
	* Returns the "just pressed" state of a button from ANY gamepad connected. Just pressed is considered true if the button was pressed down within the duration given (default 250ms).
	* 
	* @param buttonCode The buttonCode of the button to check for.
	* @param duration The duration below which the button is considered as being just pressed. - Default: 250
	* @return True if the button is just pressed otherwise false.
	*/
	function justPressed(buttonCode:Float, ?duration:Float):Bool;
	
	function justReleased(buttonCode:Float, ?duration:Float):Bool;
	
	/**
	* Reset all buttons/axes of all gamepads
	*/
	function reset():Void;
	
	/**
	* Sets the deadZone variable for all four gamepads
	*/
	function setDeadZones(value:Dynamic):Void;
	
	/**
	* Starts the Gamepad event handling.
	* This MUST be called manually before Phaser will start polling the Gamepad API.
	*/
	function start():Void;
	
	/**
	* Stops the Gamepad event handling.
	*/
	function stop():Void;
	
	/**
	* Main gamepad update loop. Should not be called manually.
	*/
	function update():Void;
	
}

