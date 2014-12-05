package phaser.time;

@:native("Phaser.Time")
extern class Time {
	
	/**
	 * This is the core internal game clock.
	 * 
	 * It manages the elapsed time and calculation of elapsed values, used for game object motion and tweens,
	 * and also handlers the standard Timer pool.
	 * 
	 * To create a general timed event, use the master {@link Phaser.Timer} accessible through {@link Phaser.Time.events events}.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The Date.now() value when the time was last updated.
	 */
	var time:Int;
	
	/**
	 * The now when the previous update occurred.
	 */
	var prevTime:Float;
	
	/**
	 * An increasing value representing cumulative milliseconds since an undisclosed epoch.
	 * 
	 * While this value is in milliseconds and can be used to compute time deltas,
	 * it must must <em>not</em> be used with Date.now() as it may not use the same epoch / starting reference. 
	 * 
	 * The source may either be from a high-res source (eg. if RAF is available) or the standard Date.now;
	 * the value can only be relied upon within a particular game instance.
	 */
	var now:Float;
	
	/**
	 * Elapsed time since the last time update, in milliseconds, based on now.
	 * 
	 * This value <em>may</em> include time that the game is paused/inactive.
	 * 
	 * <em>Note:</em> This is updated only once per game loop - even if multiple logic update steps are done.
	 * Use {@link Phaser.Timer#physicsTime physicsTime} as a basis of game/logic calculations instead.
	 */
	var elapsed:Float;
	
	/**
	 * The time in ms since the last time update, in milliseconds, based on time.
	 * 
	 * This value is corrected for game pauses and will be "about zero" after a game is resumed.
	 * 
	 * <em>Note:</em> This is updated once per game loop - even if multiple logic update steps are done.
	 * Use {@link Phaser.Timer#physicsTime physicsTime} as a basis of game/logic calculations instead.
	 */
	var elapsedMS:Int;
	
	/**
	 * The physics update delta, in fractional seconds.
	 * 
	 * This should be used as an applicable multiplier by all logic update steps (eg. preUpdate/postUpdate/update)
	 * to ensure consistent game timing. Game/logic timing can drift from real-world time if the system
	 * is unable to consistently maintain the desired FPS.
	 * 
	 * With fixed-step updates this is normally equivalent to 1.0 / desiredFps.
	 */
	var physicsElapsed:Float;
	
	/**
	 * The physics update delta, in milliseconds - equivalent to physicsElapsed * 1000.
	 */
	var physicsElapsedMS:Float;
	
	/**
	 * The desired frame rate of the game.
	 * 
	 * This is used is used to calculate the physic/logic multiplier and how to apply catch-up logic updates.
	 */
	var desiredFps:Float;
	
	/**
	 * The suggested frame rate for your game, based on an averaged real frame rate.
	 * 
	 * <em>Note:</em> This is not available until after a few frames have passed; use it after a few seconds (eg. after the menus)
	 */
	var suggestedFps:Float;
	
	/**
	 * Scaling factor to make the game move smoothly in slow motion
	 * - 1.0 = normal speed
	 * - 2.0 = half speed
	 */
	var slowMotion:Float;
	
	/**
	 * If true then advanced profiling, including the fps rate, fps min/max and msMin/msMax are updated.
	 */
	var advancedTiming:Bool;
	
	/**
	 * Advanced timing result: The number of render frames record in the last second.
	 * 
	 * Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	 */
	var frames(default, null):Int;
	
	/**
	 * Advanced timing result: Frames per second.
	 * 
	 * Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	 */
	var fps(default, null):Float;
	
	/**
	 * Advanced timing result: The lowest rate the fps has dropped to.
	 * 
	 * Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	 * This value can be manually reset.
	 */
	var fpsMin:Float;
	
	/**
	 * Advanced timing result: The highest rate the fps has reached (usually no higher than 60fps).
	 * 
	 * Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	 * This value can be manually reset.
	 */
	var fpsMax:Float;
	
	/**
	 * Advanced timing result: The minimum amount of time the game has taken between consecutive frames.
	 * 
	 * Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	 * This value can be manually reset.
	 */
	var msMin:Float;
	
	/**
	 * Advanced timing result: The maximum amount of time the game has taken between consecutive frames.
	 * 
	 * Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	 * This value can be manually reset.
	 */
	var msMax:Float;
	
	/**
	 * Records how long the game was last paused, in miliseconds.
	 * (This is not updated until the game is resumed.)
	 */
	var pauseDuration:Float;
	
	/**
	 * The value that setTimeout needs to work out when to next update
	 */
	var timeToCall:Float;
	
	/**
	 * The time when the next call is expected when using setTimer to control the update loop
	 */
	var timeExpected:Float;
	
	/**
	 * A {@link Phaser.Timer} object bound to the master clock (this Time object) which events can be added to.
	 */
	var events:phaser.time.Timer;
	
	/**
	 * count the number of calls to time.update since the last suggestedFps was calculated
	 */
	var _frameCount:Float;
	
	/**
	 * sum of the elapsed time since the last suggestedFps was calculated
	 */
	var _elapsedAccumulator:Float;
	
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
	var _timers:Dynamic;
	
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
	 * Remove all Timer objects, regardless of their state and clears all Timers from the {@link Phaser.Time#events events} timer.
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
