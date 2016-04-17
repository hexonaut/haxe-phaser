package phaser.input;

@:native("Phaser.DeviceButton")
extern class DeviceButton {
	
	/**
	 * DeviceButtons belong to both Phaser.Pointer and Phaser.SinglePad (Gamepad) instances.
	 * 
	 * For Pointers they represent the various buttons that can exist on mice and pens, such as the left button, right button,
	 * middle button and advanced buttons like back and forward.
	 * 
	 * Access them via Pointer.leftbutton, Pointer.rightButton and so on.
	 * 
	 * On Gamepads they represent all buttons on the pad: from shoulder buttons to action buttons.
	 * 
	 * At the time of writing this there are device limitations you should be aware of:
	 * 
	 * <ul>
	 * <li>On Windows, if you install a mouse driver, and its utility software allows you to customize button actions 
	 * (e.g., IntelliPoint and SetPoint), the middle (wheel) button, the 4th button, and the 5th button might not be set, 
	 * even when they are pressed.</li>
	 * <li>On Linux (GTK), the 4th button and the 5th button are not supported.</li>
	 * <li>On Mac OS X 10.5 there is no platform API for implementing any advanced buttons.</li>
	 * </ul>
	 */
	@:overload(function (parent:Dynamic, buttonCode:Float):Void {})
	function new (parent:phaser.input.SinglePad, buttonCode:Float);
	
	/**
	 * A reference to the Pointer or Gamepad that owns this button.
	 */
	var parent:Dynamic;
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The DOM event that caused the change in button state.
	 */
	var event:Dynamic;
	
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
	 * The timestamp when the button was last released.
	 */
	var timeUp:Float;
	
	/**
	 * Gamepad only.
	 * If a button is held down this holds down the number of times the button has 'repeated'.
	 */
	var repeats:Float;
	
	/**
	 * True if the alt key was held down when this button was last pressed or released.
	 * Not supported on Gamepads.
	 */
	var altKey:Bool;
	
	/**
	 * True if the shift key was held down when this button was last pressed or released.
	 * Not supported on Gamepads.
	 */
	var shiftKey:Bool;
	
	/**
	 * True if the control key was held down when this button was last pressed or released.
	 * Not supported on Gamepads.
	 */
	var ctrlKey:Bool;
	
	/**
	 * Button value. Mainly useful for checking analog buttons (like shoulder triggers) on Gamepads.
	 */
	var value:Float;
	
	/**
	 * The buttoncode of this button if a Gamepad, or the DOM button event value if a Pointer.
	 */
	var buttonCode:Float;
	
	/**
	 * This Signal is dispatched every time this DeviceButton is pressed down.
	 * It is only dispatched once (until the button is released again).
	 * When dispatched it sends 2 arguments: A reference to this DeviceButton and the value of the button.
	 */
	var onDown:phaser.core.Signal;
	
	/**
	 * This Signal is dispatched every time this DeviceButton is released from a down state.
	 * It is only dispatched once (until the button is pressed again).
	 * When dispatched it sends 2 arguments: A reference to this DeviceButton and the value of the button.
	 */
	var onUp:phaser.core.Signal;
	
	/**
	 * Gamepad only.
	 * This Signal is dispatched every time this DeviceButton changes floating value (between, but not exactly, 0 and 1).
	 * When dispatched it sends 2 arguments: A reference to this DeviceButton and the value of the button.
	 */
	var onFloat:phaser.core.Signal;
	
	/**
	 * Called automatically by Phaser.Pointer and Phaser.SinglePad.
	 * Handles the button down state.
	 */
	function start (?event:Dynamic, ?value:Float):Void;
	
	/**
	 * Called automatically by Phaser.Pointer and Phaser.SinglePad.
	 * Handles the button up state.
	 */
	function stop (?event:Dynamic, ?value:Float):Void;
	
	/**
	 * Called automatically by Phaser.SinglePad.
	 */
	function padFloat (value:Float):Void;
	
	/**
	 * Returns the "just pressed" state of this button.
	 * Just pressed is considered true if the button was pressed down within the duration given (default 250ms).
	 */
	function justPressed (?duration:Float = 250):Bool;
	
	/**
	 * Returns the "just released" state of this button.
	 * Just released is considered as being true if the button was released within the duration given (default 250ms).
	 */
	function justReleased (?duration:Float = 250):Bool;
	
	/**
	 * Resets this DeviceButton, changing it to an isUp state and resetting the duration and repeats counters.
	 */
	function reset ():Void;
	
	/**
	 * Destroys this DeviceButton, this disposes of the onDown, onUp and onFloat signals 
	 * and clears the parent and game references.
	 */
	function destroy ():Void;
	
	/**
	 * How long the button has been held down for in milliseconds.
	 * If not currently down it returns -1.
	 */
	var duration(default, null):Float;
	
}
