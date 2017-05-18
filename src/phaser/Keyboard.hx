package phaser;

import js.html.Event;
import js.html.KeyboardEvent;

/**
* The Keyboard class monitors keyboard input and dispatches keyboard events.
* 
* _Note_: many keyboards are unable to process certain combinations of keys due to hardware limitations known as ghosting.
* See http://www.html5gamedevs.com/topic/4876-impossible-to-use-more-than-2-keyboard-input-buttons-at-the-same-time/ for more details.
* 
* Also please be aware that certain browser extensions can disable or override Phaser keyboard handling.
* For example the Chrome extension vimium is known to disable Phaser from using the D key. And there are others.
* So please check your extensions before opening Phaser issues.
*/
@:native("Phaser.Keyboard")
extern class Keyboard {

	/**
	* The Keyboard class monitors keyboard input and dispatches keyboard events.
	* 
	* _Note_: many keyboards are unable to process certain combinations of keys due to hardware limitations known as ghosting.
	* See http://www.html5gamedevs.com/topic/4876-impossible-to-use-more-than-2-keyboard-input-buttons-at-the-same-time/ for more details.
	* 
	* Also please be aware that certain browser extensions can disable or override Phaser keyboard handling.
	* For example the Chrome extension vimium is known to disable Phaser from using the D key. And there are others.
	* So please check your extensions before opening Phaser issues.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	static var A:Float;
	
	static var B:Float;
	
	static var C:Float;
	
	static var D:Float;
	
	static var E:Float;
	
	static var F:Float;
	
	static var G:Float;
	
	static var H:Float;
	
	static var I:Float;
	
	static var J:Float;
	
	static var K:Float;
	
	static var L:Float;
	
	static var M:Float;
	
	static var N:Float;
	
	static var O:Float;
	
	static var P:Float;
	
	static var Q:Float;
	
	static var R:Float;
	
	static var S:Float;
	
	static var T:Float;
	
	static var U:Float;
	
	static var V:Float;
	
	static var W:Float;
	
	static var X:Float;
	
	static var Y:Float;
	
	static var Z:Float;
	
	static var ZERO:Float;
	
	static var ONE:Float;
	
	static var TWO:Float;
	
	static var THREE:Float;
	
	static var FOUR:Float;
	
	static var FIVE:Float;
	
	static var SIX:Float;
	
	static var SEVEN:Float;
	
	static var EIGHT:Float;
	
	static var NINE:Float;
	
	static var NUMPAD_0:Float;
	
	static var NUMPAD_1:Float;
	
	static var NUMPAD_2:Float;
	
	static var NUMPAD_3:Float;
	
	static var NUMPAD_4:Float;
	
	static var NUMPAD_5:Float;
	
	static var NUMPAD_6:Float;
	
	static var NUMPAD_7:Float;
	
	static var NUMPAD_8:Float;
	
	static var NUMPAD_9:Float;
	
	static var NUMPAD_MULTIPLY:Float;
	
	static var NUMPAD_ADD:Float;
	
	static var NUMPAD_ENTER:Float;
	
	static var NUMPAD_SUBTRACT:Float;
	
	static var NUMPAD_DECIMAL:Float;
	
	static var NUMPAD_DIVIDE:Float;
	
	static var F1:Float;
	
	static var F2:Float;
	
	static var F3:Float;
	
	static var F4:Float;
	
	static var F5:Float;
	
	static var F6:Float;
	
	static var F7:Float;
	
	static var F8:Float;
	
	static var F9:Float;
	
	static var F10:Float;
	
	static var F11:Float;
	
	static var F12:Float;
	
	static var F13:Float;
	
	static var F14:Float;
	
	static var F15:Float;
	
	static var COLON:Float;
	
	static var EQUALS:Float;
	
	static var COMMA:Float;
	
	static var UNDERSCORE:Float;
	
	static var PERIOD:Float;
	
	static var QUESTION_MARK:Float;
	
	static var TILDE:Float;
	
	static var OPEN_BRACKET:Float;
	
	static var BACKWARD_SLASH:Float;
	
	static var CLOSED_BRACKET:Float;
	
	static var QUOTES:Float;
	
	static var BACKSPACE:Float;
	
	static var TAB:Float;
	
	static var CLEAR:Float;
	
	static var ENTER:Float;
	
	static var SHIFT:Float;
	
	static var CONTROL:Float;
	
	static var ALT:Float;
	
	static var CAPS_LOCK:Float;
	
	static var ESC:Float;
	
	static var SPACEBAR:Float;
	
	static var PAGE_UP:Float;
	
	static var PAGE_DOWN:Float;
	
	static var END:Float;
	
	static var HOME:Float;
	
	static var LEFT:Float;
	
	static var UP:Float;
	
	static var RIGHT:Float;
	
	static var DOWN:Float;
	
	static var INSERT:Float;
	
	static var DELETE:Float;
	
	static var HELP:Float;
	
	static var NUM_LOCK:Float;
	
	static var PLUS:Float;
	
	static var MINUS:Float;
	
	/**
	* The context under which the callbacks are run.
	*/
	var callbackContext:Dynamic;
	
	/**
	* Keyboard input will only be processed if enabled.
	* Default: true
	*/
	var enabled:Bool;
	
	/**
	* The most recent DOM event from keydown or keyup. This is updated every time a new key is pressed or released.
	*/
	var event:Dynamic;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* Returns the string value of the most recently pressed key.
	*/
	var lastChar:String;
	
	/**
	* Returns the most recently pressed Key. This is a Phaser.Key object and it changes every time a key is pressed.
	*/
	var lastKey:phaser.Key;
	
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
	* The most recent DOM event from keypress.
	*/
	var pressEvent:Dynamic;
	
	/**
	* Add callbacks to the Keyboard handler so that each time a key is pressed down or released the callbacks are activated.
	* 
	* @param context The context under which the callbacks are run.
	* @param onDown This callback is invoked every time a key is pressed down.
	* @param onUp This callback is invoked every time a key is released.
	* @param onPress This callback is invoked every time the onkeypress event is raised.
	*/
	function addCallbacks(context:Dynamic, ?onDown:Dynamic, ?onUp:Dynamic, ?onPress:Dynamic):Void;
	
	/**
	* If you need more fine-grained control over a Key you can create a new Phaser.Key object via this method.
	* The Key object can then be polled, have events attached to it, etc.
	* 
	* @param keycode The {
	* @link Phaser.KeyCode keycode} of the key.
	* @return The Key object which you can store locally and reference directly.
	*/
	function addKey(keycode:Float):phaser.Key;
	
	/**
	* A practical way to create an object containing user selected hotkeys.
	* 
	* For example,
	* 
	*      addKeys( { 'up': Phaser.KeyCode.W, 'down': Phaser.KeyCode.S, 'left': Phaser.KeyCode.A, 'right': Phaser.KeyCode.D } );
	* 
	* would return an object containing properties (`up`, `down`, `left` and `right`) referring to {@link Phaser.Key} object.
	* 
	* @param keys A key mapping object, i.e. `{ 'up': Phaser.KeyCode.W, 'down': Phaser.KeyCode.S }` or `{ 'up': 52, 'down': 53 }`.
	* @return An object containing the properties mapped to {
	* @link Phaser.Key} values.
	*/
	function addKeys(keys:Dynamic):Dynamic;
	
	/**
	* By default when a key is pressed Phaser will not stop the event from propagating up to the browser.
	* There are some keys this can be annoying for, like the arrow keys or space bar, which make the browser window scroll.
	* 
	* The `addKeyCapture` method enables consuming keyboard event for specific keys so it doesn't bubble up to the the browser
	* and cause the default browser behavior.
	* 
	* Pass in either a single keycode or an array/hash of keycodes.
	* 
	* @param keycode Either a single {
	* @link Phaser.KeyCode keycode} or an array/hash of keycodes such as `[65, 67, 68]`.
	*/
	function addKeyCapture(keycode:Dynamic):Void;
	
	/**
	* Creates and returns an object containing 4 hotkeys for Up, Down, Left and Right.
	* 
	* @return An object containing properties: `up`, `down`, `left` and `right` of {
	* @link Phaser.Key} objects.
	*/
	function createCursorKeys():phaser.CursorKeys;
	
	/**
	* Clear all set key captures.
	*/
	function clearCaptures():Void;
	
	/**
	* Stops the Keyboard event listeners from running (keydown and keyup). They are removed from the window.
	* Also clears all key captures and currently created Key objects.
	*/
	function destroy():Void;
	
	/**
	* Returns `true` if the Key was pressed down within the `duration` value given, or `false` if it either isn't down,
	* or was pressed down longer ago than then given duration.
	* 
	* @param keycode The {
	* @link Phaser.KeyCode keycode} of the key to check: i.e. Phaser.KeyCode.UP or Phaser.KeyCode.SPACEBAR.
	* @param duration The duration within which the key is considered as being just pressed. Given in ms. - Default: 50
	* @return True if the key was pressed down within the given duration, false if not or null if the Key wasn't found.
	*/
	function downDuration(keycode:Float, ?duration:Float):Bool;
	
	/**
	* Returns true of the key is currently pressed down. Note that it can only detect key presses on the web browser.
	* 
	* @param keycode The {
	* @link Phaser.KeyCode keycode} of the key to check: i.e. Phaser.KeyCode.UP or Phaser.KeyCode.SPACEBAR.
	* @return True if the key is currently down, false if not or null if the Key wasn't found.
	*/
	function isDown(keycode:Float):Bool;
	
	/**
	* Process the keydown event.
	* 
	* @param event 
	*/
	function processKeyDown(event:KeyboardEvent):Void;
	
	/**
	* Process the keypress event.
	* 
	* @param event 
	*/
	function processKeyPress(event:KeyboardEvent):Void;
	
	/**
	* Process the keyup event.
	* 
	* @param event 
	*/
	function processKeyUp(event:KeyboardEvent):Void;
	
	/**
	* Removes a Key object from the Keyboard manager.
	* 
	* @param keycode The {
	* @link Phaser.KeyCode keycode} of the key to remove.
	*/
	function removeKey(keycode:Float):Void;
	
	/**
	* Removes an existing key capture.
	* 
	* @param keycode The {
	* @link Phaser.KeyCode keycode} to remove capturing of.
	*/
	function removeKeyCapture(keycode:Float):Void;
	
	/**
	* Resets all Keys.
	* 
	* @param hard A soft reset won't reset any events or callbacks that are bound to the Keys. A hard reset will. - Default: true
	*/
	function reset(?hard:Bool):Void;
	
	/**
	* Starts the Keyboard event listeners running (keydown and keyup). They are attached to the window.
	* This is called automatically by Phaser.Input and should not normally be invoked directly.
	*/
	function start():Void;
	
	/**
	* Stops the Keyboard event listeners from running (keydown, keyup and keypress). They are removed from the window.
	*/
	function stop():Void;
	
	/**
	* Updates all currently defined keys.
	*/
	function update():Void;
	
	/**
	* Returns `true` if the Key was pressed down within the `duration` value given, or `false` if it either isn't down,
	* or was pressed down longer ago than then given duration.
	* 
	* @param keycode The keycode of the key to check, i.e. Phaser.KeyCode.UP or Phaser.KeyCode.SPACEBAR.
	* @param duration The duration within which the key is considered as being just released. Given in ms. - Default: 50
	* @return True if the key was released within the given duration, false if not or null if the Key wasn't found.
	*/
	function upDuration(keycode:Float, ?duration:Float):Bool;
	
}

