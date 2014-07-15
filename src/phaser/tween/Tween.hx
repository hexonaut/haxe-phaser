package phaser.tween;

@:native("Phaser.Tween")
extern class Tween {
	
	/**
	 * Tween constructor
	 * Create a new Tween.
	 */
	function new (object:Dynamic, game:phaser.core.Game, manager:phaser.tween.TweenManager);
	
	/**
	 * Reference to the target object.
	 */
	var object:Dynamic;
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Reference to the TweenManager.
	 */
	var _manager:phaser.tween.TweenManager;
	
	/**
	 * Private value object.
	 */
	var _valuesStart:Dynamic;
	
	/**
	 * Private value object.
	 */
	var _valuesEnd:Dynamic;
	
	/**
	 * Private value object.
	 */
	var _valuesStartRepeat:Dynamic;
	
	/**
	 * Private duration counter.
	 */
	var _duration:Float;
	
	/**
	 * Private repeat counter.
	 */
	var _repeat:Float;
	
	/**
	 * Private yoyo flag.
	 */
	var _yoyo:Bool;
	
	/**
	 * Private reversed flag.
	 */
	var _reversed:Bool;
	
	/**
	 * Private delay counter.
	 */
	var _delayTime:Float;
	
	/**
	 * Private start time counter.
	 */
	var _startTime:Float;
	
	/**
	 * The easing function used for the tween.
	 */
	var _easingFunction:Dynamic;
	
	/**
	 * The interpolation function used for the tween.
	 */
	var _interpolationFunction:Dynamic;
	
	/**
	 * A private array of chained tweens.
	 */
	var _chainedTweens:Array<Dynamic>;
	
	/**
	 * Private flag.
	 */
	var _onStartCallbackFired:Bool;
	
	/**
	 * An onUpdate callback.
	 */
	var _onUpdateCallback:Dynamic;
	
	/**
	 * The context in which to call the onUpdate callback.
	 */
	var _onUpdateCallbackContext:Dynamic;
	
	/**
	 * Is this Tween paused or not?
	 */
	var _paused:Bool;
	
	/**
	 * Private pause timer.
	 */
	var _pausedTime:Float;
	
	/**
	 * Was the Tween paused by code or by Game focus loss?
	 */
	var _codePaused:Bool;
	
	/**
	 * If this tween is ready to be deleted by the TweenManager.
	 */
	var pendingDelete:Bool;
	
	/**
	 * The onStart event is fired when the Tween begins.
	 */
	var onStart:phaser.core.Signal;
	
	/**
	 * The onLoop event is fired if the Tween loops.
	 */
	var onLoop:phaser.core.Signal;
	
	/**
	 * The onComplete event is fired when the Tween completes. Does not fire if the Tween is set to loop.
	 */
	var onComplete:phaser.core.Signal;
	
	/**
	 * If the tween is running this is set to true, otherwise false. Tweens that are in a delayed state, waiting to start, are considered as being running.
	 */
	var isRunning:Bool;
	
	/**
	 * Sets this tween to be a to tween on the properties given. A to tween starts at the current value and tweens to the destination value given.
	 * For example a Sprite with an x coordinate of 100 could be tweened to x 200 by giving a properties object of { x: 200 }.
	 */
	function to (properties:Dynamic, ?duration:Float = 1000, ?ease:Dynamic, ?autoStart:Bool = false, ?delay:Float = 0, ?repeat:Float = 0, ?yoyo:Bool = false):phaser.tween.Tween;
	
	/**
	 * Sets this tween to be a from tween on the properties given. A from tween starts at the given value and tweens to the current values.
	 * For example a Sprite with an x coordinate of 100 could be tweened from x: 200 by giving a properties object of { x: 200 }.
	 */
	function from (properties:Dynamic, ?duration:Float = 1000, ?ease:Dynamic, ?autoStart:Bool = false, ?delay:Float = 0, ?repeat:Float = 0, ?yoyo:Bool = false):phaser.tween.Tween;
	
	/**
	 * Starts the tween running. Can also be called by the autoStart parameter of Tween.to.
	 */
	function start ():phaser.tween.Tween;
	
	/**
	 * This will generate an array populated with the tweened object values from start to end.
	 * It works by running the tween simulation at the given frame rate based on the values set-up in Tween.to and similar functions.
	 * It ignores delay and repeat counts and any chained tweens. Just one play through of tween data is returned, including yoyo if set.
	 */
	function generateData (?frameRate:Float = 60, ?data:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * Stops the tween if running and removes it from the TweenManager. If there are any onComplete callbacks or events they are not dispatched.
	 */
	function stop ():phaser.tween.Tween;
	
	/**
	 * Sets a delay time before this tween will start.
	 */
	function delay (amount:Float):phaser.tween.Tween;
	
	/**
	 * Sets the number of times this tween will repeat.
	 */
	function repeat (times:Float):phaser.tween.Tween;
	
	/**
	 * A tween that has yoyo set to true will run through from start to finish, then reverse from finish to start.
	 * Used in combination with repeat you can create endless loops.
	 */
	function yoyo (yoyo:Bool):phaser.tween.Tween;
	
	/**
	 * Set easing function this tween will use, i.e. Phaser.Easing.Linear.None.
	 */
	function easing (easing:Dynamic):phaser.tween.Tween;
	
	/**
	 * Set interpolation function the tween will use, by default it uses Phaser.Math.linearInterpolation.
	 * Also available: Phaser.Math.bezierInterpolation and Phaser.Math.catmullRomInterpolation.
	 */
	function interpolation (interpolation:Dynamic):phaser.tween.Tween;
	
	/**
	 * You can chain tweens together by passing a reference to the chain function. This enables one tween to call another on completion.
	 * You can pass as many tweens as you like to this function, they will each be chained in sequence.
	 */
	function chain ():phaser.tween.Tween;
	
	/**
	 * Loop a chain of tweens
	 * 
	 * Usage:
	 * game.add.tween(p).to({ x: 700 }, 1000, Phaser.Easing.Linear.None, true)
	 * .to({ y: 300 }, 1000, Phaser.Easing.Linear.None)
	 * .to({ x: 0 }, 1000, Phaser.Easing.Linear.None)
	 * .to({ y: 0 }, 1000, Phaser.Easing.Linear.None)
	 * .loop();
	 */
	function loop ():phaser.tween.Tween;
	
	/**
	 * Sets a callback to be fired each time this tween updates.
	 */
	function onUpdateCallback (callback:Dynamic, callbackContext:Dynamic):phaser.tween.Tween;
	
	/**
	 * Pauses the tween.
	 */
	function pause ():Void;
	
	/**
	 * This is called by the core Game loop. Do not call it directly, instead use Tween.pause.
	 */
	function _pause ():Void;
	
	/**
	 * Resumes a paused tween.
	 */
	function resume ():Void;
	
	/**
	 * This is called by the core Game loop. Do not call it directly, instead use Tween.pause.
	 */
	function _resume ():Void;
	
	/**
	 * Core tween update function called by the TweenManager. Does not need to be invoked directly.
	 */
	function update (time:Float):Bool;
	
}
