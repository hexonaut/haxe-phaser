package phaser;

/**
* This is the core internal game clock.
* 
* It manages the elapsed time and calculation of elapsed values, used for game object motion and tweens,
* and also handles the standard Timer pool.
* 
* To create a general timed event, use the master {@link Phaser.Timer} accessible through {@link Phaser.Time.events events}.
* 
* There are different *types* of time in Phaser:
* 
* - ***Game time*** always runs at the speed of time in real life.
* 
*    Unlike wall-clock time, *game time stops when Phaser is paused*.
* 
*    Game time is used for {@link Phaser.Timer timer events}.
* 
* - ***Physics time*** represents the amount of time given to physics calculations.
* 
*    *When {@link Phaser.Time#slowMotion slowMotion} is in effect physics time runs slower than game time.*
*    Like game time, physics time stops when Phaser is paused.
* 
*    Physics time is used for physics calculations and {@link Phaser.Tween tweens}.
* 
* - {@link https://en.wikipedia.org/wiki/Wall-clock_time ***Wall-clock time***} represents the duration between two events in real life time.
* 
*    This time is independent of Phaser and always progresses, regardless of if Phaser is paused.
*/
@:native("Phaser.Time")
extern class Time {

	/**
	* This is the core internal game clock.
	* 
	* It manages the elapsed time and calculation of elapsed values, used for game object motion and tweens,
	* and also handles the standard Timer pool.
	* 
	* To create a general timed event, use the master {@link Phaser.Timer} accessible through {@link Phaser.Time.events events}.
	* 
	* There are different *types* of time in Phaser:
	* 
	* - ***Game time*** always runs at the speed of time in real life.
	* 
	*    Unlike wall-clock time, *game time stops when Phaser is paused*.
	* 
	*    Game time is used for {@link Phaser.Timer timer events}.
	* 
	* - ***Physics time*** represents the amount of time given to physics calculations.
	* 
	*    *When {@link Phaser.Time#slowMotion slowMotion} is in effect physics time runs slower than game time.*
	*    Like game time, physics time stops when Phaser is paused.
	* 
	*    Physics time is used for physics calculations and {@link Phaser.Tween tweens}.
	* 
	* - {@link https://en.wikipedia.org/wiki/Wall-clock_time ***Wall-clock time***} represents the duration between two events in real life time.
	* 
	*    This time is independent of Phaser and always progresses, regardless of if Phaser is paused.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* If true then advanced profiling, including the fps rate, fps min/max, suggestedFps and msMin/msMax are updated.
	*/
	var advancedTiming:Bool;
	
	/**
	* The desired frame rate of the game.
	* 
	* This is used is used to calculate the physic / logic multiplier and how to apply catch-up logic updates. The desired frame rate of the game. Defaults to 60.
	*/
	var desiredFps:Float;
	
	/**
	* The desiredFps multiplier as used by Game.update.
	*/
	var desiredFpsMult:Float;
	
	/**
	* Elapsed time since the last time update, in milliseconds, based on `now`.
	* 
	* This value _may_ include time that the game is paused/inactive.
	* 
	* _Note:_ This is updated only once per game loop - even if multiple logic update steps are done.
	* Use {@link Phaser.Timer#physicsTime physicsTime} as a basis of game/logic calculations instead.
	*/
	var elapsed:Float;
	
	/**
	* A {@link Phaser.Timer} object bound to the master clock (this Time object) which events can be added to.
	*/
	var events:phaser.Timer;
	
	/**
	* The time in ms since the last time update, in milliseconds, based on `time`.
	* 
	* This value is corrected for game pauses and will be "about zero" after a game is resumed.
	* 
	* _Note:_ This is updated once per game loop - even if multiple logic update steps are done.
	* Use {@link Phaser.Timer#physicsTime physicsTime} as a basis of game/logic calculations instead.
	*/
	var elapsedMS:Float;
	
	/**
	* Advanced timing result: Frames per second.
	* 
	* Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	*/
	var fps:Float;
	
	/**
	* Advanced timing result: The highest rate the fps has reached (usually no higher than 60fps).
	* 
	* Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	* This value can be manually reset.
	*/
	var fpsMax:Float;
	
	/**
	* Advanced timing result: The lowest rate the fps has dropped to.
	* 
	* Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	* This value can be manually reset.
	*/
	var fpsMin:Float;
	
	/**
	* Advanced timing result: The number of render frames record in the last second.
	* 
	* Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	*/
	var frames:Float;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	var lastTime:Float;
	
	/**
	* Advanced timing result: The maximum amount of time the game has taken between consecutive frames.
	* 
	* Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	* This value can be manually reset.
	*/
	var msMax:Float;
	
	/**
	* Advanced timing result: The minimum amount of time the game has taken between consecutive frames.
	* 
	* Only calculated if {@link Phaser.Time#advancedTiming advancedTiming} is enabled.
	* This value can be manually reset.
	* Default: 1000
	*/
	var msMin:Float;
	
	/**
	* An increasing value representing cumulative milliseconds since an undisclosed epoch.
	* 
	* While this value is in milliseconds and can be used to compute time deltas,
	* it must must _not_ be used with `Date.now()` as it may not use the same epoch / starting reference.
	* 
	* The source may either be from a high-res source (eg. if RAF is available) or the standard Date.now;
	* the value can only be relied upon within a particular game instance.
	*/
	var now:Float;
	
	var pausedTime:Float;
	
	/**
	* Records how long the game was last paused, in milliseconds.
	* (This is not updated until the game is resumed.)
	*/
	var pauseDuration:Float;
	
	/**
	* The physics update delta, in fractional seconds.
	* 
	* This should be used as an applicable multiplier by all logic update steps (eg. `preUpdate/postUpdate/update`)
	* to ensure consistent game timing. Game/logic timing can drift from real-world time if the system
	* is unable to consistently maintain the desired FPS.
	* 
	* With fixed-step updates this is normally equivalent to `1.0 / desiredFps`.
	*/
	var physicsElapsed:Float;
	
	/**
	* The physics update delta, in milliseconds - equivalent to `physicsElapsed * 1000`.
	*/
	var physicsElapsedMS:Float;
	
	/**
	* The `now` when the previous update occurred.
	*/
	var prevTime:Float;
	
	/**
	* Scaling factor to make the game move smoothly in slow motion
	* - 1.0 = normal speed
	* - 2.0 = half speed
	* Default: 1
	*/
	var slowMotion:Float;
	
	/**
	* The suggested frame rate for your game, based on an averaged real frame rate.
	* This value is only populated if `Time.advancedTiming` is enabled.
	* 
	* _Note:_ This is not available until after a few frames have passed; until then
	* it's set to the same value as desiredFps.
	*/
	var suggestedFps:Float;
	
	/**
	* The `Date.now()` value when the time was last updated.
	*/
	var time:Float;
	
	/**
	* The time when the next call is expected when using setTimer to control the update loop
	*/
	var timeExpected:Float;
	
	/**
	* The value that setTimeout needs to work out when to next update
	*/
	var timeToCall:Float;
	
	/**
	* Adds an existing Phaser.Timer object to the Timer pool.
	* 
	* @param timer An existing Phaser.Timer object.
	* @return The given Phaser.Timer object.
	*/
	function add(timer:phaser.Timer):phaser.Timer;
	
	/**
	* Called automatically by Phaser.Game after boot. Should not be called directly.
	*/
	function boot():Void;
	
	/**
	* Creates a new stand-alone Phaser.Timer object.
	* 
	* @param autoDestroy A Timer that is set to automatically destroy itself will do so after all of its events have been dispatched (assuming no looping events). - Default: true
	* @return The Timer object that was created.
	*/
	function create(?autoDestroy:Bool):phaser.Timer;
	
	/**
	* How long has passed since the given time (in seconds).
	* 
	* @param since The time you want to measure (in seconds).
	* @return Duration between given time and now (in seconds).
	*/
	function elapsedSecondsSince(since:Float):Float;
	
	/**
	* How long has passed since the given time.
	* 
	* @param since The time you want to measure against.
	* @return The difference between the given time and now.
	*/
	function elapsedSince(since:Float):Float;
	
	/**
	* Remove all Timer objects, regardless of their state and clears all Timers from the {@link Phaser.Time#events events} timer.
	*/
	function removeAll():Void;
	
	/**
	* Resets the private _started value to now and removes all currently running Timers.
	*/
	function reset():Void;
	
	/**
	* The number of seconds that have elapsed since the game was started.
	* 
	* @return The number of seconds that have elapsed since the game was started.
	*/
	function totalElapsedSeconds():Float;
	
	/**
	* Updates the game clock and if enabled the advanced timing data. This is called automatically by Phaser.Game.
	* 
	* @param time The current relative timestamp; see {
	* @link Phaser.Time#now now}.
	*/
	function update(time:Float):Void;
	
}

