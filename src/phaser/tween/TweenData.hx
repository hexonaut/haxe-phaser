package phaser.tween;

@:native("Phaser.TweenData")
extern class TweenData {
	
	/**
	 * A Phaser.Tween contains at least one TweenData object. It contains all of the tween data values, such as the
	 * starting and ending values, the ease function, interpolation and duration. The Tween acts as a timeline manager for
	 * TweenData objects and can contain multiple TweenData objects.
	 */
	function new (parent:phaser.tween.Tween);
	
	/**
	 * The Tween which owns this TweenData.
	 */
	var parent:phaser.tween.Tween;
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * An object containing the values at the start of the tween.
	 */
	var vStart:Dynamic;
	
	/**
	 * Cached starting values.
	 */
	var vStartCache:Dynamic;
	
	/**
	 * An object containing the values at the end of the tween.
	 */
	var vEnd:Dynamic;
	
	/**
	 * Cached ending values.
	 */
	var vEndCache:Dynamic;
	
	/**
	 * The duration of the tween in ms.
	 */
	var duration:Float;
	
	/**
	 * A value between 0 and 1 that represents how far through the duration this tween is.
	 */
	var percent(default, null):Float;
	
	/**
	 * The current calculated value.
	 */
	var value(default, null):Float;
	
	/**
	 * If the Tween is set to repeat this contains the current repeat count.
	 */
	var repeatCounter:Float;
	
	/**
	 * The amount of time in ms between repeats of this tween.
	 */
	var repeatDelay:Float;
	
	/**
	 * True if the Tween is set to yoyo, otherwise false.
	 */
	var yoyo:Bool;
	
	/**
	 * When a Tween is yoyoing this value holds if it's currently playing forwards (false) or in reverse (true).
	 */
	var inReverse:Bool;
	
	/**
	 * The amount to delay by until the Tween starts (in ms).
	 */
	var delay:Float;
	
	/**
	 * Current time value.
	 */
	var dt:Float;
	
	/**
	 * The time the Tween started or null if it hasn't yet started.
	 */
	var startTime:Float;
	
	/**
	 * The easing function used for the Tween.
	 */
	var easingFunction:Dynamic;
	
	/**
	 * The interpolation function used for the Tween.
	 */
	var interpolationFunction:Dynamic;
	
	/**
	 * If the tween is running this is set to true. Unless Phaser.Tween a TweenData that is waiting for a delay to expire is <em>not</em> considered as running.
	 */
	var isRunning:Bool;
	
	/**
	 * Is this a from tween or a to tween?
	 */
	var isFrom:Bool;
	
	/**
	 * @constant
	 */
	static var PENDING:Float;
	
	/**
	 * @constant
	 */
	static var RUNNING:Float;
	
	/**
	 * @constant
	 */
	static var LOOPED:Float;
	
	/**
	 * @constant
	 */
	static var COMPLETE:Float;
	
	/**
	 * Sets this tween to be a to tween on the properties given. A to tween starts at the current value and tweens to the destination value given.
	 * For example a Sprite with an x coordinate of 100 could be tweened to x 200 by giving a properties object of { x: 200 }.
	 */
	function to (properties:Dynamic, ?duration:Float = 1000, ?ease:Dynamic, ?delay:Float = 0, ?repeat:Float = 0, ?yoyo:Bool = false):phaser.tween.TweenData;
	
	/**
	 * Sets this tween to be a from tween on the properties given. A from tween sets the target to the destination value and tweens to its current value.
	 * For example a Sprite with an x coordinate of 100 tweened from x 500 would be set to x 500 and then tweened to x 100 by giving a properties object of { x: 500 }.
	 */
	function from (properties:Dynamic, ?duration:Float = 1000, ?ease:Dynamic, ?delay:Float = 0, ?repeat:Float = 0, ?yoyo:Bool = false):phaser.tween.TweenData;
	
	/**
	 * Starts the Tween running.
	 */
	function start ():phaser.tween.TweenData;
	
	/**
	 * Loads the values from the target object into this Tween.
	 */
	function loadValues ():phaser.tween.TweenData;
	
	/**
	 * Updates this Tween. This is called automatically by Phaser.Tween.
	 */
	function update ():Float;
	
	/**
	 * This will generate an array populated with the tweened object values from start to end.
	 * It works by running the tween simulation at the given frame rate based on the values set-up in Tween.to and Tween.from.
	 * Just one play through of the tween data is returned, including yoyo if set.
	 */
	function generateData (?frameRate:Float = 60):Array<Dynamic>;
	
	/**
	 * Checks if this Tween is meant to repeat or yoyo and handles doing so.
	 */
	function repeat ():Float;
	
}
