package phaser.tween;

@:native("Phaser.Tween")
extern class Tween {
	
	/**
	 * A Tween allows you to alter one or more properties of a target object over a defined period of time.
	 * This can be used for things such as alpha fading Sprites, scaling them or motion.
	 * Use Tween.to or Tween.from to set-up the tween values. You can create multiple tweens on the same object
	 * by calling Tween.to multiple times on the same Tween. Additional tweens specified in this way become "child" tweens and
	 * are played through in sequence. You can use Tween.timeScale and Tween.reverse to control the playback of this Tween and all of its children.
	 */
	function new (target:Dynamic, game:phaser.core.Game, manager:phaser.tween.TweenManager);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The target object, such as a Phaser.Sprite or property like Phaser.Sprite.scale.
	 */
	var target:Dynamic;
	
	/**
	 * Reference to the TweenManager responsible for updating this Tween.
	 */
	var manager:phaser.tween.TweenManager;
	
	/**
	 * An Array of TweenData objects that comprise the different parts of this Tween.
	 */
	var timeline:Array<Dynamic>;
	
	/**
	 * If set to true the current tween will play in reverse.
	 * If the tween hasn't yet started this has no effect.
	 * If there are child tweens then all child tweens will play in reverse from the current point.
	 */
	var reverse:Bool;
	
	/**
	 * The speed at which the tweens will run. A value of 1 means it will match the game frame rate. 0.5 will run at half the frame rate. 2 at double the frame rate, etc.
	 * If a tweens duration is 1 second but timeScale is 0.5 then it will take 2 seconds to complete.
	 */
	var timeScale:Float;
	
	/**
	 * If the Tween and any child tweens are set to repeat this contains the current repeat count.
	 */
	var repeatCounter:Float;
	
	/**
	 * The amount of time in ms between repeats of this tween and any child tweens.
	 */
	var repeatDelay:Float;
	
	/**
	 * True if this Tween is ready to be deleted by the TweenManager.
	 */
	var pendingDelete(default, null):Bool;
	
	/**
	 * The onStart event is fired when the Tween begins. If there is a delay before the tween starts then onStart fires after the delay is finished.
	 * It will be sent 2 parameters: the target object and this tween.
	 */
	var onStart:phaser.core.Signal;
	
	/**
	 * The onLoop event is fired if the Tween or any child tween loops.
	 * It will be sent 2 parameters: the target object and this tween.
	 */
	var onLoop:phaser.core.Signal;
	
	/**
	 * The onRepeat event is fired if the Tween and all of its children repeats. If this tween has no children this will never be fired.
	 * It will be sent 2 parameters: the target object and this tween.
	 */
	var onRepeat:phaser.core.Signal;
	
	/**
	 * The onChildComplete event is fired when the Tween or any of its children completes.
	 * Fires every time a child completes unless a child is set to repeat forever.
	 * It will be sent 2 parameters: the target object and this tween.
	 */
	var onChildComplete:phaser.core.Signal;
	
	/**
	 * The onComplete event is fired when the Tween and all of its children completes. Does not fire if the Tween is set to loop or repeatAll(-1).
	 * It will be sent 2 parameters: the target object and this tween.
	 */
	var onComplete:phaser.core.Signal;
	
	/**
	 * If the tween is running this is set to true, otherwise false. Tweens that are in a delayed state or waiting to start are considered as being running.
	 */
	var isRunning:Bool;
	
	/**
	 * The current Tween child being run.
	 */
	var current(default, null):Float;
	
	/**
	 * Target property cache used when building the child data values.
	 */
	var properties:Dynamic;
	
	/**
	 * If this Tween is chained to another this holds a reference to it.
	 */
	var chainedTween:phaser.tween.Tween;
	
	/**
	 * Is this Tween paused or not?
	 */
	var isPaused:Bool;
	
	/**
	 * An onUpdate callback.
	 */
	var _onUpdateCallback:Dynamic;
	
	/**
	 * The context in which to call the onUpdate callback.
	 */
	var _onUpdateCallbackContext:Dynamic;
	
	/**
	 * Private pause timer.
	 */
	var _pausedTime:Float;
	
	/**
	 * Was the Tween paused by code or by Game focus loss?
	 */
	var _codePaused:Bool;
	
	/**
	 * Sets this tween to be a to tween on the properties given. A to tween starts at the current value and tweens to the destination value given.
	 * For example a Sprite with an x coordinate of 100 could be tweened to x 200 by giving a properties object of { x: 200 }.
	 * The ease function allows you define the rate of change. You can pass either a function such as Phaser.Easing.Circular.Out or a string such as "Circ".
	 * ".easeIn", ".easeOut" and "easeInOut" variants are all supported for all ease types.
	 */
	@:overload(function (properties:Dynamic, ?duration:Float = 1000, ?ease:Dynamic, ?autoStart:Bool = false, ?delay:Float = 0, ?repeat:Float = 0, ?yoyo:Bool = false):phaser.tween.Tween {})
	function to (properties:Dynamic, ?duration:Float = 1000, ?ease:String, ?autoStart:Bool = false, ?delay:Float = 0, ?repeat:Float = 0, ?yoyo:Bool = false):phaser.tween.Tween;
	
	/**
	 * Sets this tween to be a from tween on the properties given. A from tween sets the target to the destination value and tweens to its current value.
	 * For example a Sprite with an x coordinate of 100 tweened from x 500 would be set to x 500 and then tweened to x 100 by giving a properties object of { x: 500 }.
	 * The ease function allows you define the rate of change. You can pass either a function such as Phaser.Easing.Circular.Out or a string such as "Circ".
	 * ".easeIn", ".easeOut" and "easeInOut" variants are all supported for all ease types.
	 */
	@:overload(function (properties:Dynamic, ?duration:Float = 1000, ?ease:Dynamic, ?autoStart:Bool = false, ?delay:Float = 0, ?repeat:Float = 0, ?yoyo:Bool = false):phaser.tween.Tween {})
	function from (properties:Dynamic, ?duration:Float = 1000, ?ease:String, ?autoStart:Bool = false, ?delay:Float = 0, ?repeat:Float = 0, ?yoyo:Bool = false):phaser.tween.Tween;
	
	/**
	 * Starts the tween running. Can also be called by the autoStart parameter of Tween.to or Tween.from.
	 * This sets the Tween.isRunning property to true and dispatches a Tween.onStart signal.
	 * If the Tween has a delay set then nothing will start tweening until the delay has expired.
	 */
	function start (?index:Float = 0):phaser.tween.Tween;
	
	/**
	 * Stops the tween if running and flags it for deletion from the TweenManager.
	 * If called directly the Tween.onComplete signal is not dispatched and no chained tweens are started unless the complete parameter is set to true.
	 * If you just wish to pause a tween then use Tween.pause instead.
	 */
	function stop (?complete:Bool = false):phaser.tween.Tween;
	
	/**
	 * Sets the delay in milliseconds before this tween will start. If there are child tweens it sets the delay before the first child starts.
	 * The delay is invoked as soon as you call Tween.start. If the tween is already running this method doesn't do anything for the current active tween.
	 * If you have child tweens and pass -1 as the index value it sets the delay across all of them.
	 */
	function delay (duration:Float, ?index:Float = 0):phaser.tween.Tween;
	
	/**
	 * Sets the number of times this tween will repeat.
	 * If you have child tweens and pass -1 as the index value it sets the number of times they'll repeat across all of them.
	 * If you wish to define how many times this Tween and all children will repeat see Tween.repeatAll.
	 */
	function repeat (total:Float, ?index:Float = 0):phaser.tween.Tween;
	
	/**
	 * A Tween that has yoyo set to true will run through from its starting values to its end values and then play back in reverse from end to start.
	 * Used in combination with repeat you can create endless loops.
	 * If you have child tweens and pass -1 as the index value it sets the yoyo property across all of them.
	 * If you wish to yoyo this Tween and all of its children then see Tween.yoyoAll.
	 */
	function yoyo (enable:Bool, ?index:Float = 0):phaser.tween.Tween;
	
	/**
	 * Set easing function this tween will use, i.e. Phaser.Easing.Linear.None.
	 * The ease function allows you define the rate of change. You can pass either a function such as Phaser.Easing.Circular.Out or a string such as "Circ".
	 * ".easeIn", ".easeOut" and "easeInOut" variants are all supported for all ease types.
	 * If you have child tweens and pass -1 as the index value it sets the easing function defined here across all of them.
	 */
	@:overload(function (ease:Dynamic, ?index:Float = 0):phaser.tween.Tween {})
	function easing (ease:String, ?index:Float = 0):phaser.tween.Tween;
	
	/**
	 * Sets the interpolation function the tween will use. By default it uses Phaser.Math.linearInterpolation.
	 * Also available: Phaser.Math.bezierInterpolation and Phaser.Math.catmullRomInterpolation.
	 * The interpolation function is only used if the target properties is an array.
	 * If you have child tweens and pass -1 as the index value it sets the interpolation function across all of them.
	 */
	function interpolation (interpolation:Dynamic, ?index:Float = 0):phaser.tween.Tween;
	
	/**
	 * This method allows you to chain tweens together. Any tween chained to this tween will have its Tween.start method called
	 * as soon as this tween completes. If this tween never completes (i.e. repeatAll or loop is set) then the chain will never progress.
	 * Note that Tween.onComplete will fire when <em>this</em> tween completes, not when the whole chain completes.
	 * For that you should listen to onComplete on the final tween in your chain.
	 * 
	 * If you pass multiple tweens to this method they will be joined into a single long chain.
	 * For example if this is Tween A and you pass in B, C and D then B will be chained to A, C will be chained to B and D will be chained to C.
	 * Any previously chained tweens that may have been set will be overwritten.
	 */
	function chain (?tweens0:phaser.tween.Tween, ?tweens1:phaser.tween.Tween, ?tweens2:phaser.tween.Tween, ?tweens3:phaser.tween.Tween, ?tweens4:phaser.tween.Tween):phaser.tween.Tween;
	
	/**
	 * Enables the looping of this tween and all child tweens. If this tween has no children this setting has no effect.
	 * If value is true then this is the same as setting Tween.repeatAll(-1).
	 * If value is false it is the same as setting Tween.repeatAll(0) and will reset the repeatCounter to zero.
	 * 
	 * Usage:
	 * game.add.tween(p).to({ x: 700 }, 1000, Phaser.Easing.Linear.None, true)
	 * .to({ y: 300 }, 1000, Phaser.Easing.Linear.None)
	 * .to({ x: 0 }, 1000, Phaser.Easing.Linear.None)
	 * .to({ y: 0 }, 1000, Phaser.Easing.Linear.None)
	 * .loop();
	 */
	function loop (?value:Bool = true):phaser.tween.Tween;
	
	/**
	 * Sets a callback to be fired each time this tween updates.
	 */
	function onUpdateCallback (callback:Dynamic, callbackContext:Dynamic):phaser.tween.Tween;
	
	/**
	 * Pauses the tween. Resume playback with Tween.resume.
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
	
	/**
	 * This will generate an array populated with the tweened object values from start to end.
	 * It works by running the tween simulation at the given frame rate based on the values set-up in Tween.to and Tween.from.
	 * It ignores delay and repeat counts and any chained tweens, but does include child tweens.
	 * Just one play through of the tween data is returned, including yoyo if set.
	 */
	function generateData (?frameRate:Float = 60, ?data:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * @name Phaser.Tween#totalDuration
	 */
	var totalDuration:phaser.tween.TweenData;
	
}
