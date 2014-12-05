package phaser.input;

@:native("Phaser.Keyboard")
extern class Keyboard {
	
	/**
	 * The Keyboard class monitors keyboard input and dispatches keyboard events.
	 * 
	 * <em>Be aware</em> that many keyboards are unable to process certain combinations of keys due to hardware
	 * limitations known as ghosting. Full details here: <a href='http://www.html5gamedevs.com/topic/4876-impossible-to-use-more-than-2-keyboard-input-buttons-at-the-same-time/'>http://www.html5gamedevs.com/topic/4876-impossible-to-use-more-than-2-keyboard-input-buttons-at-the-same-time/</a>
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Keyboard input will only be processed if enabled.
	 */
	var enabled:Bool;
	
	/**
	 * The most recent DOM event from keydown or keyup. This is updated every time a new key is pressed or released.
	 */
	var event:Dynamic;
	
	/**
	 * The most recent DOM event from keypress.
	 */
	var pressEvent:Dynamic;
	
	/**
	 * The context under which the callbacks are run.
	 */
	var callbackContext:Dynamic;
	
	/**
	 * This callback is invoked every time a key is pressed down, including key repeats when a key is held down.
	 */
	var onDownCallback:Dynamic;
	
	/**
	 * This callback is invoked every time a DOM onkeypress event is raised, which is only for printable keys.
	 */
	var onPressCallback:Dynamic;
	
	/**
	 * This callback is invoked every time a key is released.
	 */
	var onUpCallback:Dynamic;
	
	/**
	 * The array the Phaser.Key objects are stored in.
	 */
	var _keys:Dynamic;
	
	/**
	 * The array the key capture values are stored in.
	 */
	var _capture:Array<Dynamic>;
	
	/**
	 * @property {function} _onKeyDown
	 */
	var _onKeyDown:Dynamic;
	
	/**
	 * @property {function} _onKeyPress
	 */
	var _onKeyPress:Dynamic;
	
	/**
	 * @property {function} _onKeyUp
	 */
	var _onKeyUp:Dynamic;
	
	/**
	 * Internal cache var
	 */
	var _i:Float;
	
	/**
	 * Internal cache var
	 */
	var _k:Float;
	
	/**
	 * Add callbacks to the Keyboard handler so that each time a key is pressed down or released the callbacks are activated.
	 */
	function addCallbacks (context:Dynamic, ?onDown:Dynamic, ?onUp:Dynamic, ?onPress:Dynamic):Void;
	
	/**
	 * If you need more fine-grained control over a Key you can create a new Phaser.Key object via this method.
	 * The Key object can then be polled, have events attached to it, etc.
	 */
	function addKey (keycode:Float):phaser.input.Key;
	
	/**
	 * Removes a Key object from the Keyboard manager.
	 */
	function removeKey (keycode:Float):Void;
	
	/**
	 * Creates and returns an object containing 4 hotkeys for Up, Down, Left and Right.
	 */
	function createCursorKeys ():Dynamic;
	
	/**
	 * Starts the Keyboard event listeners running (keydown and keyup). They are attached to the window.
	 * This is called automatically by Phaser.Input and should not normally be invoked directly.
	 */
	function start ():Void;
	
	/**
	 * Stops the Keyboard event listeners from running (keydown, keyup and keypress). They are removed from the window.
	 */
	function stop ():Void;
	
	/**
	 * Stops the Keyboard event listeners from running (keydown and keyup). They are removed from the window.
	 * Also clears all key captures and currently created Key objects.
	 */
	function destroy ():Void;
	
	/**
	 * By default when a key is pressed Phaser will not stop the event from propagating up to the browser.
	 * There are some keys this can be annoying for, like the arrow keys or space bar, which make the browser window scroll.
	 * You can use addKeyCapture to consume the keyboard event for specific keys so it doesn't bubble up to the the browser.
	 * Pass in either a single keycode or an array/hash of keycodes.
	 */
	@:overload(function (keycode:Float):Void {})
	@:overload(function (keycode:Array<Dynamic>):Void {})
	function addKeyCapture (keycode:Dynamic):Void;
	
	/**
	 * Removes an existing key capture.
	 */
	function removeKeyCapture (keycode:Float):Void;
	
	/**
	 * Clear all set key captures.
	 */
	function clearCaptures ():Void;
	
	/**
	 * Updates all currently defined keys.
	 */
	function update ():Void;
	
	/**
	 * Process the keydown event.
	 */
	function processKeyDown (event:Dynamic):Void;
	
	/**
	 * Process the keypress event.
	 */
	function processKeyPress (event:Dynamic):Void;
	
	/**
	 * Process the keyup event.
	 */
	function processKeyUp (event:Dynamic):Void;
	
	/**
	 * Resets all Keys.
	 */
	function reset (?hard:Bool = true):Void;
	
	/**
	 * Returns true if the Key was pressed down within the duration value given, or false if it either isn't down,
	 * or was pressed down longer ago than then given duration.
	 */
	function downDuration (keycode:Float, ?duration:Float = 50):Bool;
	
	/**
	 * Returns true if the Key was pressed down within the duration value given, or false if it either isn't down,
	 * or was pressed down longer ago than then given duration.
	 */
	function upDuration (keycode:Float, ?duration:Float = 50):Bool;
	
	/**
	 * Returns true of the key is currently pressed down. Note that it can only detect key presses on the web browser.
	 */
	function isDown (keycode:Float):Bool;
	
	/**
	 * If disabled all Keyboard input will be ignored.
	 */
	var disabled:Bool;
	
	/**
	 * Returns the string value of the most recently pressed key.
	 */
	var lastChar(default, null):String;
	
	/**
	 * Returns the most recently pressed Key. This is a Phaser.Key object and it changes every time a key is pressed.
	 */
	var lastKey(default, null):phaser.input.Key;
	
	public static var A:Int;
	public static var B:Int;
	public static var C:Int;
	public static var D:Int;
	public static var E:Int;
	public static var F:Int;
	public static var G:Int;
	public static var H:Int;
	public static var I:Int;
	public static var J:Int;
	public static var K:Int;
	public static var L:Int;
	public static var M:Int;
	public static var N:Int;
	public static var O:Int;
	public static var P:Int;
	public static var Q:Int;
	public static var R:Int;
	public static var S:Int;
	public static var T:Int;
	public static var U:Int;
	public static var V:Int;
	public static var W:Int;
	public static var X:Int;
	public static var Y:Int;
	public static var Z:Int;
	public static var ZERO:Int;
	public static var ONE:Int;
	public static var TWO:Int;
	public static var THREE:Int;
	public static var FOUR:Int;
	public static var FIVE:Int;
	public static var SIX:Int;
	public static var SEVEN:Int;
	public static var EIGHT:Int;
	public static var NINE:Int;
	public static var NUMPAD_0:Int;
	public static var NUMPAD_1:Int;
	public static var NUMPAD_2:Int;
	public static var NUMPAD_3:Int;
	public static var NUMPAD_4:Int;
	public static var NUMPAD_5:Int;
	public static var NUMPAD_6:Int;
	public static var NUMPAD_7:Int;
	public static var NUMPAD_8:Int;
	public static var NUMPAD_9:Int;
	public static var NUMPAD_MULTIPLY:Int;
	public static var NUMPAD_ADD:Int;
	public static var NUMPAD_ENTER:Int;
	public static var NUMPAD_SUBTRACT:Int;
	public static var NUMPAD_DECIMAL:Int;
	public static var NUMPAD_DIVIDE:Int;
	public static var F1:Int;
	public static var F2:Int;
	public static var F3:Int;
	public static var F4:Int;
	public static var F5:Int;
	public static var F6:Int;
	public static var F7:Int;
	public static var F8:Int;
	public static var F9:Int;
	public static var F10:Int;
	public static var F11:Int;
	public static var F12:Int;
	public static var F13:Int;
	public static var F14:Int;
	public static var F15:Int;
	public static var COLON:Int;
	public static var EQUALS:Int;
	public static var UNDERSCORE:Int;
	public static var QUESTION_MARK:Int;
	public static var TILDE:Int;
	public static var OPEN_BRACKET:Int;
	public static var BACKWARD_SLASH:Int;
	public static var CLOSED_BRACKET:Int;
	public static var QUOTES:Int;
	public static var BACKSPACE:Int;
	public static var TAB:Int;
	public static var CLEAR:Int;
	public static var ENTER:Int;
	public static var SHIFT:Int;
	public static var CONTROL:Int;
	public static var ALT:Int;
	public static var CAPS_LOCK:Int;
	public static var ESC:Int;
	public static var SPACEBAR:Int;
	public static var PAGE_UP:Int;
	public static var PAGE_DOWN:Int;
	public static var END:Int;
	public static var HOME:Int;
	public static var LEFT:Int;
	public static var UP:Int;
	public static var RIGHT:Int;
	public static var DOWN:Int;
	public static var INSERT:Int;
	public static var DELETE:Int;
	public static var HELP:Int;
	public static var NUM_LOCK:Int;
	
}
