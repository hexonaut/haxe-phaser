package phaser;

import haxe.extern.EitherType;

/**
* DeviceButtons belong to both `Phaser.Pointer` and `Phaser.SinglePad` (Gamepad) instances.
* 
* For Pointers they represent the various buttons that can exist on mice and pens, such as the left button, right button,
* middle button and advanced buttons like back and forward.
* 
* Access them via `Pointer.leftbutton`, `Pointer.rightButton` and so on.
* 
* On Gamepads they represent all buttons on the pad: from shoulder buttons to action buttons.
* 
* At the time of writing this there are device limitations you should be aware of:
* 
* - On Windows, if you install a mouse driver, and its utility software allows you to customize button actions
*    (e.g., IntelliPoint and SetPoint), the middle (wheel) button, the 4th button, and the 5th button might not be set,
*    even when they are pressed.
* - On Linux (GTK), the 4th button and the 5th button are not supported.
* - On Mac OS X 10.5 there is no platform API for implementing any advanced buttons.
*/
@:native("Phaser.DeviceButton")
extern class DeviceButton {

	/**
	* DeviceButtons belong to both `Phaser.Pointer` and `Phaser.SinglePad` (Gamepad) instances.
	* 
	* For Pointers they represent the various buttons that can exist on mice and pens, such as the left button, right button,
	* middle button and advanced buttons like back and forward.
	* 
	* Access them via `Pointer.leftbutton`, `Pointer.rightButton` and so on.
	* 
	* On Gamepads they represent all buttons on the pad: from shoulder buttons to action buttons.
	* 
	* At the time of writing this there are device limitations you should be aware of:
	* 
	* - On Windows, if you install a mouse driver, and its utility software allows you to customize button actions
	*    (e.g., IntelliPoint and SetPoint), the middle (wheel) button, the 4th button, and the 5th button might not be set,
	*    even when they are pressed.
	* - On Linux (GTK), the 4th button and the 5th button are not supported.
	* - On Mac OS X 10.5 there is no platform API for implementing any advanced buttons.
	* 
	* @param parent A reference to the parent of this button. Either a Pointer or a Gamepad.
	* @param buttonCode The button code this DeviceButton is responsible for.
	*/
	function new(parent:EitherType<phaser.Pointer, phaser.SinglePad>, butonCode:Float);
	
	/**
	* The buttoncode of this button if a Gamepad, or the DOM button event value if a Pointer.
	*/
	var buttonCode:Float;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* The "down" state of the button.
	*/
	var isDown:Bool;
	
	/**
	* The "up" state of the button.
	* Default: true
	*/
	var isUp:Bool;
	
	/**
	* This Signal is dispatched every time this DeviceButton is pressed down.
	* It is only dispatched once (until the button is released again).
	* When dispatched it sends 2 arguments: A reference to this DeviceButton and the value of the button.
	*/
	var onDown:phaser.Signal;
	
	/**
	* Gamepad only.
	* This Signal is dispatched every time this DeviceButton changes floating value (between, but not exactly, 0 and 1).
	* When dispatched it sends 2 arguments: A reference to this DeviceButton and the value of the button.
	*/
	var onFloat:phaser.Signal;
	
	/**
	* This Signal is dispatched every time this DeviceButton is released from a down state.
	* It is only dispatched once (until the button is pressed again).
	* When dispatched it sends 2 arguments: A reference to this DeviceButton and the value of the button.
	*/
	var onUp:phaser.Signal;
	
	var pad:phaser.Gamepad;
	
	/**
	* Gamepad only.
	* If a button is held down this holds down the number of times the button has 'repeated'.
	*/
	var repeats:Float;
	
	/**
	* The timestamp when the button was last pressed down.
	*/
	var timeDown:Float;
	
	/**
	* The timestamp when the button was last released.
	*/
	var timeUp:Float;
	
	/**
	* Button value. Mainly useful for checking analog buttons (like shoulder triggers) on Gamepads.
	*/
	var value:Float;
	
	/**
	* Destroys this DeviceButton, this disposes of the onDown, onUp and onFloat signals
	* and clears the parent and game references.
	*/
	function destroy():Void;
	
	/**
	* Returns the "just pressed" state of this button.
	* Just pressed is considered true if the button was pressed down within the duration given (default 250ms).
	* 
	* @param duration The duration in ms below which the button is considered as being just pressed. - Default: 250
	* @return True if the button is just pressed otherwise false.
	*/
	function justPressed(?duration:Float):Bool;
	
	/**
	* Returns the "just released" state of this button.
	* Just released is considered as being true if the button was released within the duration given (default 250ms).
	* 
	* @param duration The duration in ms below which the button is considered as being just released. - Default: 250
	* @return True if the button is just released otherwise false.
	*/
	function justReleased(?duration:Float):Bool;
	
	function processButtonDown(value:Float):Void;
	
	function processButtonFloat(value:Float):Void;
	
	function processButtonUp(value:Float):Void;
	
	/**
	* Resets this DeviceButton, changing it to an isUp state and resetting the duration and repeats counters.
	*/
	function reset():Void;
	
}

