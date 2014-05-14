package phaser.time;

@:native("Phaser.Timer")
extern class Timer {
	
	/**
	 * A Timer is a way to create small re-usable or disposable objects that do nothing but wait for a specific moment in time, and then dispatch an event.
	 * You can add as many events to a Timer as you like, each with their own delays. A Timer uses milliseconds as its unit of time. There are 1000 ms in 1 second.
	 * So if you want to fire an event every quarter of a second you'd need to set the delay to 250.
	 */
	function new (game:phaser.core.Game, ?autoDestroy:Bool = true);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * True if the Timer is actively running. Do not switch this boolean, if you wish to pause the timer then use Timer.pause() instead.
	 */
	var running:Bool;
	
	/**
	 * A Timer that is set to automatically destroy itself will do so after all of its events have been dispatched (assuming no looping events).
	 */
	var autoDestroy:Bool;
	
	/**
	 * An expired Timer is one in which all of its events have been dispatched and none are pending.
	 */
	var expired(default, null):Bool;
	
	/**
	 * Elapsed time since the last frame (in ms).
	 */
	var elapsed:Float;
	
	/**
	 * An array holding all of this timers Phaser.TimerEvent objects. Use the methods add, repeat and loop to populate it.
	 */
	var events:Dynamic;
	
	/**
	 * This signal will be dispatched when this Timer has completed, meaning there are no more events in the queue.
	 */
	var onComplete:phaser.core.Signal;
	
	/**
	 * The time the next tick will occur.
	 */
	var nextTick(default, null):Float;
	
	/**
	 * If the difference in time between two frame updates exceeds this value, the event times are reset to avoid catch-up situations.
	 */
	var timeCap:Float;
	
	/**
	 * The paused state of the Timer. You can pause the timer by calling Timer.pause() and Timer.resume() or by the game pausing.
	 */
	var paused(default, null):Bool;
	
	/**
	 * Was the Timer paused by code or by Game focus loss?
	 */
	var _codePaused:Bool;
	
	/**
	 * The time at which this Timer instance started running.
	 */
	var _started:Float;
	
	/**
	 * The time the game started being paused.
	 */
	var _pauseStarted:Float;
	
	/**
	 * Total paused time.
	 */
	var _pauseTotal:Float;
	
	/**
	 * The current start-time adjusted time.
	 */
	var _now:Float;
	
	/**
	 * Temp. array length variable.
	 */
	var _len:Float;
	
	/**
	 * Temp. counter variable.
	 */
	var _marked:Float;
	
	/**
	 * Temp. array counter variable.
	 */
	var _i:Float;
	
	/**
	 * Internal cache var.
	 */
	var _diff:Float;
	
	/**
	 * Internal cache var.
	 */
	var _newTick:Float;
	
	/**
	 * @constant
	 */
	static var MINUTE:Float;
	
	/**
	 * @constant
	 */
	static var SECOND:Float;
	
	/**
	 * @constant
	 */
	static var HALF:Float;
	
	/**
	 * @constant
	 */
	static var QUARTER:Float;
	
	/**
	 * Creates a new TimerEvent on this Timer. Use the methods add, repeat or loop instead of this.
	 */
	function create (delay:Float, loop:Bool, repeatCount:Float, callback:Dynamic, callbackContext:Dynamic, arguments:Array<Dynamic>):phaser.time.TimerEvent;
	
	/**
	 * Adds a new Event to this Timer. The event will fire after the given amount of 'delay' in milliseconds has passed, once the Timer has started running.
	 * Call Timer.start() once you have added all of the Events you require for this Timer. The delay is in relation to when the Timer starts, not the time it was added.
	 * If the Timer is already running the delay will be calculated based on the timers current time.
	 */
	function add (delay:Float, callback:Dynamic, callbackContext:Dynamic, ?arguments0:Dynamic, ?arguments1:Dynamic, ?arguments2:Dynamic, ?arguments3:Dynamic, ?arguments4:Dynamic):phaser.time.TimerEvent;
	
	/**
	 * Adds a new TimerEvent that will always play through once and then repeat for the given number of iterations.
	 * The event will fire after the given amount of 'delay' milliseconds has passed once the Timer has started running.
	 * Call Timer.start() once you have added all of the Events you require for this Timer. The delay is in relation to when the Timer starts, not the time it was added.
	 * If the Timer is already running the delay will be calculated based on the timers current time.
	 */
	function repeat (delay:Float, repeatCount:Float, callback:Dynamic, callbackContext:Dynamic, ?arguments0:Dynamic, ?arguments1:Dynamic, ?arguments2:Dynamic, ?arguments3:Dynamic, ?arguments4:Dynamic):phaser.time.TimerEvent;
	
	/**
	 * Adds a new looped Event to this Timer that will repeat forever or until the Timer is stopped.
	 * The event will fire after the given amount of 'delay' milliseconds has passed once the Timer has started running.
	 * Call Timer.start() once you have added all of the Events you require for this Timer. The delay is in relation to when the Timer starts, not the time it was added.
	 * If the Timer is already running the delay will be calculated based on the timers current time.
	 */
	function loop (delay:Float, callback:Dynamic, callbackContext:Dynamic, ?arguments0:Dynamic, ?arguments1:Dynamic, ?arguments2:Dynamic, ?arguments3:Dynamic, ?arguments4:Dynamic):phaser.time.TimerEvent;
	
	/**
	 * Starts this Timer running.
	 */
	function start (?delay:Float = 0):Void;
	
	/**
	 * Stops this Timer from running. Does not cause it to be destroyed if autoDestroy is set to true.
	 */
	function stop (?clearEvents:Bool = true):Void;
	
	/**
	 * Removes a pending TimerEvent from the queue.
	 */
	function remove (event:phaser.time.TimerEvent):Void;
	
	/**
	 * Orders the events on this Timer so they are in tick order. This is called automatically when new events are created.
	 */
	function order ():Void;
	
	/**
	 * Sort handler used by Phaser.Timer.order.
	 */
	function sortHandler ():Void;
	
	/**
	 * Clears any events from the Timer which have pendingDelete set to true and then resets the private _len and _i values.
	 */
	function clearPendingEvents ():Void;
	
	/**
	 * The main Timer update event, called automatically by Phaser.Time.update.
	 */
	function update (time:Float):Bool;
	
	/**
	 * Pauses the Timer and all events in the queue.
	 */
	function pause ():Void;
	
	/**
	 * This is called by the core Game loop. Do not call it directly, instead use Timer.pause.
	 */
	function _pause ():Void;
	
	/**
	 * Adjusts the time of all pending events and the nextTick by the given baseTime.
	 */
	function adjustEvents ():Void;
	
	/**
	 * Resumes the Timer and updates all pending events.
	 */
	function resume ():Void;
	
	/**
	 * This is called by the core Game loop. Do not call it directly, instead use Timer.pause.
	 */
	function _resume ():Void;
	
	/**
	 * Removes all Events from this Timer and all callbacks linked to onComplete, but leaves the Timer running.
	 * The onComplete callbacks won't be called.
	 */
	function removeAll ():Void;
	
	/**
	 * Destroys this Timer. Any pending Events are not dispatched.
	 * The onComplete callbacks won't be called.
	 */
	function destroy ():Void;
	
	/**
	 * @name Phaser.Timer#next
	 */
	var next(default, null):Float;
	
	/**
	 * @name Phaser.Timer#duration
	 */
	var duration(default, null):Float;
	
	/**
	 * @name Phaser.Timer#length
	 */
	var length(default, null):Float;
	
	/**
	 * @name Phaser.Timer#ms
	 */
	var ms(default, null):Float;
	
	/**
	 * @name Phaser.Timer#seconds
	 */
	var seconds(default, null):Float;
	
}
