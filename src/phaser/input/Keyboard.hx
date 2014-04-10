package phaser.input;

@:native("Phaser.Keyboard")
extern class Keyboard {
	
	/**
	 * The Keyboard class handles looking after keyboard input for your game. It will recognise and respond to key presses and dispatch the required events.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * You can disable all Keyboard Input by setting disabled to true. While true all new input related events will be ignored.
	 */
	var disabled:Bool;
	
	/**
	 * The most recent DOM event. This is updated every time a new key is pressed or released.
	 */
	var event:Dynamic;
	
	/**
	 * The context under which the callbacks are run.
	 */
	var callbackContext:Dynamic;
	
	/**
	 * This callback is invoked every time a key is pressed down.
	 */
	var onDownCallback:Dynamic;
	
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
	 * @property {function} _onKeyUp
	 */
	var _onKeyUp:Dynamic;
	
	/**
	 * Add callbacks to the Keyboard handler so that each time a key is pressed down or released the callbacks are activated.
	 */
	function addCallbacks (context:Dynamic, onDown:Dynamic, ?onUp:Dynamic):Void;
	
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
	 * Starts the Keyboard event listeners running (keydown and keyup). They are attached to the document.body.
	 * This is called automatically by Phaser.Input and should not normally be invoked directly.
	 */
	function start ():Void;
	
	/**
	 * Stops the Keyboard event listeners from running (keydown and keyup). They are removed from the document.body.
	 */
	function stop ():Void;
	
	/**
	 * By default when a key is pressed Phaser will not stop the event from propagating up to the browser.
	 * There are some keys this can be annoying for, like the arrow keys or space bar, which make the browser window scroll.
	 * You can use addKeyCapture to consume the keyboard event for specific keys so it doesn't bubble up to the the browser.
	 * Pass in either a single keycode or an array/hash of keycodes.
	 */
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
	 * Process the keyup event.
	 */
	function processKeyUp (event:Dynamic):Void;
	
	/**
	 * Resets all Keys.
	 */
	function reset ():Void;
	
	/**
	 * Returns the "just pressed" state of the key. Just pressed is considered true if the key was pressed down within the duration given (default 250ms)
	 */
	function justPressed (keycode:Float, ?duration:Float = 250):Bool;
	
	/**
	 * Returns the "just released" state of the Key. Just released is considered as being true if the key was released within the duration given (default 250ms)
	 */
	function justReleased (keycode:Float, ?duration:Float = 250):Bool;
	
	/**
	 * Returns true of the key is currently pressed down. Note that it can only detect key presses on the web browser.
	 */
	function isDown (keycode:Float):Bool;
	
}
