package phaser.time;

@:native("Phaser.Time")
extern class Time {
	
	/**
	 * Time constructor.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Game time counter. If you need a value for in-game calculation please use Phaser.Time.now instead.
	 */
	var time:Float;
	
	/**
	 * The time right now.
	 */
	var now:Float;
	
	/**
	 * Elapsed time since the last frame (in ms).
	 */
	var elapsed:Float;
	
	/**
	 * Records how long the game has been paused for. Is reset each time the game pauses.
	 */
	var pausedTime:Float;
	
	/**
	 * If true Phaser.Time will perform advanced profiling including the fps rate, fps min/max and msMin and msMax.
	 */
	var advancedTiming:Bool;
	
	/**
	 * Frames per second. Only calculated if Time.advancedTiming is true.
	 */
	var fps:Float;
	
	/**
	 * The lowest rate the fps has dropped to. Only calculated if Time.advancedTiming is true.
	 */
	var fpsMin:Float;
	
	/**
	 * The highest rate the fps has reached (usually no higher than 60fps). Only calculated if Time.advancedTiming is true.
	 */
	var fpsMax:Float;
	
	/**
	 * The minimum amount of time the game has taken between two frames. Only calculated if Time.advancedTiming is true.
	 */
	var msMin:Float;
	
	/**
	 * The maximum amount of time the game has taken between two frames. Only calculated if Time.advancedTiming is true.
	 */
	var msMax:Float;
	
	/**
	 * The elapsed time calculated for the physics motion updates. In a stable 60fps system this will be 0.016 every frame.
	 */
	var physicsElapsed:Float;
	
	/**
	 * If you need to cap the delta timer, set the value here. For 60fps the delta should be 0.016, so try variances just above this.
	 */
	var deltaCap:Float;
	
	/**
	 * If the difference in time between two frame updates exceeds this value, the frame time is reset to avoid huge elapsed counts.
	 */
	var timeCap:Float;
	
	/**
	 * The number of frames record in the last second. Only calculated if Time.advancedTiming is true.
	 */
	var frames:Float;
	
	/**
	 * Records how long the game was paused for in miliseconds.
	 */
	var pauseDuration:Float;
	
	/**
	 * The value that setTimeout needs to work out when to next update
	 */
	var timeToCall:Float;
	
	/**
	 * Internal value used by timeToCall as part of the setTimeout loop
	 */
	var lastTime:Float;
	
	/**
	 * This is a Phaser.Timer object bound to the master clock to which you can add timed events.
	 */
	var events:phaser.time.Timer;
	
	/**
	 * The time at which the Game instance started.
	 */
	var _started:Float;
	
	/**
	 * The time (in ms) that the last second counter ticked over.
	 */
	var _timeLastSecond:Float;
	
	/**
	 * The time the game started being paused.
	 */
	var _pauseStarted:Float;
	
	/**
	 * Internal value used to recover from the game pause state.
	 */
	var _justResumed:Bool;
	
	/**
	 * Internal store of Phaser.Timer objects.
	 */
	var _timers:Array<Dynamic>;
	
	/**
	 * Temp. array length variable.
	 */
	var _len:Float;
	
	/**
	 * Temp. array counter variable.
	 */
	var _i:Float;
	
	/**
	 * Called automatically by Phaser.Game after boot. Should not be called directly.
	 */
	function boot ():Void;
	
	/**
	 * Adds an existing Phaser.Timer object to the Timer pool.
	 */
	function add (timer:phaser.time.Timer):phaser.time.Timer;
	
	/**
	 * Creates a new stand-alone Phaser.Timer object.
	 */
	function create (?autoDestroy:Bool = true):phaser.time.Timer;
	
	/**
	 * Remove all Timer objects, regardless of their state. Also clears all Timers from the Time.events timer.
	 */
	function removeAll ():Void;
	
	/**
	 * Updates the game clock and if enabled the advanced timing data. This is called automatically by Phaser.Game.
	 */
	function update (time:Float):Void;
	
	/**
	 * Called when the game enters a paused state.
	 */
	function gamePaused ():Void;
	
	/**
	 * Called when the game resumes from a paused state.
	 */
	function gameResumed ():Void;
	
	/**
	 * The number of seconds that have elapsed since the game was started.
	 */
	function totalElapsedSeconds ():Float;
	
	/**
	 * How long has passed since the given time.
	 */
	function elapsedSince (since:Float):Float;
	
	/**
	 * How long has passed since the given time (in seconds).
	 */
	function elapsedSecondsSince (since:Float):Float;
	
	/**
	 * Resets the private _started value to now and removes all currently running Timers.
	 */
	function reset ():Void;
	
}
