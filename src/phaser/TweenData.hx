package phaser;

/**
* A Phaser.Tween contains at least one TweenData object. It contains all of the tween data values, such as the
* starting and ending values, the ease function, interpolation and duration. The Tween acts as a timeline manager for
* TweenData objects and can contain multiple TweenData objects.
*/
@:native("Phaser.TweenData")
extern class TweenData {

	/**
	* A Phaser.Tween contains at least one TweenData object. It contains all of the tween data values, such as the
	* starting and ending values, the ease function, interpolation and duration. The Tween acts as a timeline manager for
	* TweenData objects and can contain multiple TweenData objects.
	* 
	* @param parent The Tween that owns this TweenData object.
	*/
	function new(parent:phaser.Tween);
	
	static var COMPLETE:Float;
	
	static var LOOPED:Float;
	
	static var PENDING:Float;
	
	static var RUNNING:Float;
	
	/**
	* The amount to delay by until the Tween starts (in ms). Only applies to the start, use repeatDelay to handle repeats.
	*/
	var delay:Float;
	
	/**
	* Current time value.
	*/
	var dt:Float;
	
	/**
	* The duration of the tween in ms.
	* Default: 1000
	*/
	var duration:Float;
	
	/**
	* The easing function used for the Tween.
	* Default: Phaser.Easing.Default
	*/
	var easingFunction:Dynamic;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* When a Tween is yoyoing this value holds if it's currently playing forwards (false) or in reverse (true).
	*/
	var inReverse:Bool;
	
	/**
	* True if the Tween will use interpolation (i.e. is an Array to Array tween)
	*/
	var interpolate:Bool;
	
	var interpolateFunctionContext:phaser.Math;
	
	/**
	* The interpolation function context used for the Tween.
	* Default: Phaser.Math
	*/
	var interpolationContext:phaser.Math;
	
	/**
	* The interpolation function used for the Tween.
	* Default: Phaser.Math.linearInterpolation
	*/
	var interpolationFunction:Dynamic;
	
	/**
	* If the tween is running this is set to `true`. Unless Phaser.Tween a TweenData that is waiting for a delay to expire is *not* considered as running.
	*/
	var isRunning:Bool;
	
	/**
	* Is this a from tween or a to tween?
	*/
	var isFrom:Bool;
	
	/**
	* The Tween which owns this TweenData.
	*/
	var parent:phaser.Tween;
	
	/**
	* A value between 0 and 1 that represents how far through the duration this tween is.
	*/
	var percent:Float;
	
	/**
	* If the Tween is set to repeat this contains the current repeat count.
	*/
	var repeatCounter:Float;
	
	/**
	* The time the Tween started or null if it hasn't yet started.
	*/
	var startTime:Float;
	
	/**
	* The current calculated value.
	*/
	var value:Float;
	
	/**
	* True if the Tween is set to yoyo, otherwise false.
	*/
	var yoyo:Bool;
	
	/**
	* The amount of time in ms between yoyos of this tween.
	*/
	var yoyoDelay:Float;
	
	/**
	* Sets this tween to be a `from` tween on the properties given. A `from` tween sets the target to the destination value and tweens to its current value.
	* For example a Sprite with an `x` coordinate of 100 tweened from `x` 500 would be set to `x` 500 and then tweened to `x` 100 by giving a properties object of `{ x: 500 }`.
	* 
	* @param properties The properties you want to tween, such as `Sprite.x` or `Sound.volume`. Given as a JavaScript object.
	* @param duration Duration of this tween in ms. - Default: 1000
	* @param ease Easing function. If not set it will default to Phaser.Easing.Default, which is Phaser.Easing.Linear.None by default but can be over-ridden at will.
	* @param delay Delay before this tween will start, defaults to 0 (no delay). Value given is in ms.
	* @param repeat Should the tween automatically restart once complete? If you want it to run forever set as -1. This ignores any chained tweens.
	* @param yoyo A tween that yoyos will reverse itself and play backwards automatically. A yoyo'd tween doesn't fire the Tween.onComplete event, so listen for Tween.onLoop instead.
	* @return This Tween object.
	*/
	function from(properties:Dynamic, ?duration:Float, ?ease:Dynamic, ?delay:Float, ?repeat:Float, ?yoyo:Bool):phaser.TweenData;
	
	/**
	* This will generate an array populated with the tweened object values from start to end.
	* It works by running the tween simulation at the given frame rate based on the values set-up in Tween.to and Tween.from.
	* Just one play through of the tween data is returned, including yoyo if set.
	* 
	* @param frameRate The speed in frames per second that the data should be generated at. The higher the value, the larger the array it creates. - Default: 60
	* @return An array of tweened values.
	*/
	function generateData(?frameRate:Float):Array<Dynamic>;
	
	/**
	* Checks if this Tween is meant to repeat or yoyo and handles doing so.
	* 
	* @return Either Phaser.TweenData.LOOPED or Phaser.TweenData.COMPLETE.
	*/
	function repeat():Float;
	
	/**
	* Starts the Tween running.
	* 
	* @return This Tween object.
	*/
	function start():phaser.TweenData;
	
	/**
	* Sets this tween to be a `to` tween on the properties given. A `to` tween starts at the current value and tweens to the destination value given.
	* For example a Sprite with an `x` coordinate of 100 could be tweened to `x` 200 by giving a properties object of `{ x: 200 }`.
	* 
	* @param properties The properties you want to tween, such as `Sprite.x` or `Sound.volume`. Given as a JavaScript object.
	* @param duration Duration of this tween in ms. - Default: 1000
	* @param ease Easing function. If not set it will default to Phaser.Easing.Default, which is Phaser.Easing.Linear.None by default but can be over-ridden at will.
	* @param delay Delay before this tween will start, defaults to 0 (no delay). Value given is in ms.
	* @param repeat Should the tween automatically restart once complete? If you want it to run forever set as -1. This ignores any chained tweens.
	* @param yoyo A tween that yoyos will reverse itself and play backwards automatically. A yoyo'd tween doesn't fire the Tween.onComplete event, so listen for Tween.onLoop instead.
	* @return This Tween object.
	*/
	function to(properties:Dynamic, ?duration:Float, ?ease:Dynamic, ?delay:Float, ?repeat:Float, ?yoyo:Bool):phaser.TweenData;
	
	/**
	* Updates this Tween. This is called automatically by Phaser.Tween.
	* 
	* @param time A timestamp passed in by the Tween parent.
	* @return The current status of this Tween. One of the Phaser.TweenData constants: PENDING, RUNNING, LOOPED or COMPLETE.
	*/
	function update(time:Float):Float;
	
}

