package phaser.input;

@:native("Phaser.Pointer")
extern class Pointer {
	
	/**
	 * Phaser - Pointer constructor.
	 */
	function new (game:phaser.core.Game, id:Float);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The ID of the Pointer object within the game. Each game can have up to 10 active pointers.
	 */
	var id:Float;
	
	/**
	 * Local private variable to store the status of dispatching a hold event.
	 */
	var _holdSent:Bool;
	
	/**
	 * Local private variable storing the short-term history of pointer movements.
	 */
	var _history:Array<Dynamic>;
	
	/**
	 * Local private variable storing the time at which the next history drop should occur.
	 */
	var _nextDrop:Float;
	
	/**
	 * Monitor events outside of a state reset loop.
	 */
	var _stateReset:Bool;
	
	/**
	 * true if the Pointer is within the game area, otherwise false.
	 */
	var withinGame:Bool;
	
	/**
	 * The horizontal coordinate of point relative to the viewport in pixels, excluding any scroll offset.
	 */
	var clientX:Float;
	
	/**
	 * The vertical coordinate of point relative to the viewport in pixels, excluding any scroll offset.
	 */
	var clientY:Float;
	
	/**
	 * The horizontal coordinate of point relative to the viewport in pixels, including any scroll offset.
	 */
	var pageX:Float;
	
	/**
	 * The vertical coordinate of point relative to the viewport in pixels, including any scroll offset.
	 */
	var pageY:Float;
	
	/**
	 * The horizontal coordinate of point relative to the screen in pixels.
	 */
	var screenX:Float;
	
	/**
	 * The vertical coordinate of point relative to the screen in pixels.
	 */
	var screenY:Float;
	
	/**
	 * The horizontal coordinate of point relative to the game element. This value is automatically scaled based on game size.
	 */
	var x:Float;
	
	/**
	 * The vertical coordinate of point relative to the game element. This value is automatically scaled based on game size.
	 */
	var y:Float;
	
	/**
	 * If the Pointer is a mouse this is true, otherwise false.
	 */
	var isMouse:Bool;
	
	/**
	 * If the Pointer is touching the touchscreen, or the mouse button is held down, isDown is set to true.
	 */
	var isDown:Bool;
	
	/**
	 * If the Pointer is not touching the touchscreen, or the mouse button is up, isUp is set to true.
	 */
	var isUp:Bool;
	
	/**
	 * A timestamp representing when the Pointer first touched the touchscreen.
	 */
	var timeDown:Float;
	
	/**
	 * A timestamp representing when the Pointer left the touchscreen.
	 */
	var timeUp:Float;
	
	/**
	 * A timestamp representing when the Pointer was last tapped or clicked.
	 */
	var previousTapTime:Float;
	
	/**
	 * The total number of times this Pointer has been touched to the touchscreen.
	 */
	var totalTouches:Float;
	
	/**
	 * The number of miliseconds since the last click.
	 */
	var msSinceLastClick:Float;
	
	/**
	 * The Game Object this Pointer is currently over / touching / dragging.
	 */
	var targetObject:Dynamic;
	
	/**
	 * An active pointer is one that is currently pressed down on the display. A Mouse is always active.
	 */
	var active:Bool;
	
	/**
	 * A Phaser.Point object containing the current x/y values of the pointer on the display.
	 */
	var position:phaser.geom.Point;
	
	/**
	 * A Phaser.Point object containing the x/y values of the pointer when it was last in a down state on the display.
	 */
	var positionDown:phaser.geom.Point;
	
	/**
	 * A Phaser.Point object containing the x/y values of the pointer when it was last released.
	 */
	var positionUp:phaser.geom.Point;
	
	/**
	 * A Phaser.Circle that is centered on the x/y coordinates of this pointer, useful for hit detection.
	 * The Circle size is 44px (Apples recommended "finger tip" size).
	 */
	var circle:phaser.geom.Circle;
	
	/**
	 * Called when the Pointer is pressed onto the touchscreen.
	 */
	function start (event:Dynamic):Void;
	
	/**
	 * Called by the Input Manager.
	 */
	function update ():Void;
	
	/**
	 * Called when the Pointer is moved.
	 */
	@:overload(function (event:Dynamic, ?fromClick:Bool = false):Void {})
	@:overload(function (event:Dynamic, ?fromClick:Bool = false):Void {})
	function move (event:Dynamic, ?fromClick:Bool = false):Void;
	
	/**
	 * Called when the Pointer leaves the target area.
	 */
	@:overload(function (event:Dynamic):Void {})
	@:overload(function (event:Dynamic):Void {})
	function leave (event:Dynamic):Void;
	
	/**
	 * Called when the Pointer leaves the touchscreen.
	 */
	@:overload(function (event:Dynamic):Void {})
	@:overload(function (event:Dynamic):Void {})
	function stop (event:Dynamic):Void;
	
	/**
	 * The Pointer is considered justPressed if the time it was pressed onto the touchscreen or clicked is less than justPressedRate.
	 * Note that calling justPressed doesn't reset the pressed status of the Pointer, it will return true for as long as the duration is valid.
	 * If you wish to check if the Pointer was pressed down just once then see the Sprite.events.onInputDown event.
	 */
	function justPressed (?duration:Float):Bool;
	
	/**
	 * The Pointer is considered justReleased if the time it left the touchscreen is less than justReleasedRate.
	 * Note that calling justReleased doesn't reset the pressed status of the Pointer, it will return true for as long as the duration is valid.
	 * If you wish to check if the Pointer was released just once then see the Sprite.events.onInputUp event.
	 */
	function justReleased (?duration:Float):Bool;
	
	/**
	 * Resets the Pointer properties. Called by InputManager.reset when you perform a State change.
	 */
	function reset ():Void;
	
	/**
	 * How long the Pointer has been depressed on the touchscreen. If not currently down it returns -1.
	 */
	var duration(default, null):Float;
	
}
