package phaser;

import haxe.extern.Rest;
import js.html.Event;

/**
* A Timer is a way to create and manage {@link Phaser.TimerEvent timer events} that wait for a specific duration and then run a callback.
* Many different timer events, with individual delays, can be added to the same Timer.
* 
* All Timer delays are in milliseconds (there are 1000 ms in 1 second); so a delay value of 250 represents a quarter of a second.
* 
* Timers are based on real life time, adjusted for game pause durations.
* That is, *timer events are based on elapsed {@link Phaser.Time game time}* and do *not* take physics time or slow motion into account.
*/
@:native("Phaser.Timer")
extern class Timer {

	/**
	* A Timer is a way to create and manage {@link Phaser.TimerEvent timer events} that wait for a specific duration and then run a callback.
	* Many different timer events, with individual delays, can be added to the same Timer.
	* 
	* All Timer delays are in milliseconds (there are 1000 ms in 1 second); so a delay value of 250 represents a quarter of a second.
	* 
	* Timers are based on real life time, adjusted for game pause durations.
	* That is, *timer events are based on elapsed {@link Phaser.Time game time}* and do *not* take physics time or slow motion into account.
	* 
	* @param game A reference to the currently running game.
	* @param autoDestroy If true, the timer will automatically destroy itself after all the events have been dispatched (assuming no looping events). - Default: true
	*/
	function new(game:phaser.Game, ?autoDestroy:Bool);
	
	/**
	* Number of milliseconds in half a second.
	*/
	static var HALF:Float;
	
	/**
	* Number of milliseconds in a minute.
	*/
	static var MINUTE:Float;
	
	/**
	* Number of milliseconds in a quarter of a second.
	*/
	static var QUARTER:Float;
	
	/**
	* Number of milliseconds in a second.
	*/
	static var SECOND:Float;
	
	/**
	* If true, the timer will automatically destroy itself after all the events have been dispatched (assuming no looping events).
	*/
	var autoDestroy:Bool;
	
	/**
	* The duration in ms remaining until the next event will occur.
	*/
	var duration:Float;
	
	/**
	* An array holding all of this timers Phaser.TimerEvent objects. Use the methods add, repeat and loop to populate it.
	*/
	var events:Array<phaser.TimerEvent>;
	
	/**
	* An expired Timer is one in which all of its events have been dispatched and none are pending.
	*/
	var expired:Bool;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* The number of pending events in the queue.
	*/
	var length:Float;
	
	/**
	* The duration in milliseconds that this Timer has been running for.
	*/
	var ms:Float;
	
	/**
	* The time at which the next event will occur.
	*/
	var next:Float;
	
	/**
	* The time the next tick will occur.
	*/
	var nextTick:Float;
	
	/**
	* This signal will be dispatched when this Timer has completed which means that there are no more events in the queue.
	* 
	* The signal is supplied with one argument, `timer`, which is this Timer object.
	*/
	var onComplete:phaser.Signal;
	
	/**
	* True if the Timer is actively running.
	* 
	* Do not modify this boolean - use {@link Phaser.Timer#pause pause} (and {@link Phaser.Timer#resume resume}) to pause the timer.
	*/
	var running:Bool;
	
	/**
	* The paused state of the Timer. You can pause the timer by calling Timer.pause() and Timer.resume() or by the game pausing.
	*/
	var paused:Bool;
	
	/**
	* The duration in seconds that this Timer has been running for.
	*/
	var seconds:Float;
	
	/**
	* Adds a new Event to this Timer.
	* 
	* The event will fire after the given amount of `delay` in milliseconds has passed, once the Timer has started running.
	* The delay is in relation to when the Timer starts, not the time it was added. If the Timer is already running the delay will be calculated based on the timers current time.
	* 
	* Make sure to call {@link Phaser.Timer#start start} after adding all of the Events you require for this Timer.
	* 
	* @param delay The number of milliseconds, in {
	* @link Phaser.Time game time}, before the timer event occurs.
	* @param callback The callback that will be called when the timer event occurs.
	* @param callbackContext The context in which the callback will be called.
	* @param args Additional arguments that will be supplied to the callback.
	* @return The Phaser.TimerEvent object that was created.
	*/
	function add(delay:Float, callback:Dynamic, ?callbackContext:Dynamic, args:Rest<Dynamic>):phaser.TimerEvent;
	
	/**
	* Clears any events from the Timer which have pendingDelete set to true and then resets the private _len and _i values.
	*/
	function clearPendingEvents():Void;
	
	/**
	* Destroys this Timer. Any pending Events are not dispatched.
	* The onComplete callbacks won't be called.
	*/
	function destroy():Void;
	
	/**
	* Adds a new looped Event to this Timer that will repeat forever or until the Timer is stopped.
	* 
	* The event will fire after the given amount of `delay` in milliseconds has passed, once the Timer has started running.
	* The delay is in relation to when the Timer starts, not the time it was added. If the Timer is already running the delay will be calculated based on the timers current time.
	* 
	* Make sure to call {@link Phaser.Timer#start start} after adding all of the Events you require for this Timer.
	* 
	* @param delay The number of milliseconds, in {
	* @link Phaser.Time game time}, before the timer event occurs.
	* @param callback The callback that will be called when the timer event occurs.
	* @param callbackContext The context in which the callback will be called.
	* @param args Additional arguments that will be supplied to the callback.
	* @return The Phaser.TimerEvent object that was created.
	*/
	function loop(delay:Float, callback:Dynamic, ?callbackContext:Dynamic, args:Rest<Dynamic>):phaser.TimerEvent;
	
	/**
	* Orders the events on this Timer so they are in tick order.
	* This is called automatically when new events are created.
	*/
	function order():Void;
	
	/**
	* Pauses the Timer and all events in the queue.
	*/
	function pause():Void;
	
	/**
	* Removes a pending TimerEvent from the queue.
	* 
	* @param event The event to remove from the queue.
	*/
	function remove(event:phaser.TimerEvent):Bool;
	
	/**
	* Removes all Events from this Timer and all callbacks linked to onComplete, but leaves the Timer running.
	* The onComplete callbacks won't be called.
	*/
	function removeAll():Void;
	
	/**
	* Adds a new TimerEvent that will always play through once and then repeat for the given number of iterations.
	* 
	* The event will fire after the given amount of `delay` in milliseconds has passed, once the Timer has started running.
	* The delay is in relation to when the Timer starts, not the time it was added.
	* If the Timer is already running the delay will be calculated based on the timers current time.
	* 
	* Make sure to call {@link Phaser.Timer#start start} after adding all of the Events you require for this Timer.
	* 
	* @param delay The number of milliseconds, in {
	* @link Phaser.Time game time}, before the timer event occurs.
	* @param repeatCount The number of times the event will repeat once is has finished playback. A repeatCount of 1 means it will repeat itself once, playing the event twice in total.
	* @param callback The callback that will be called when the timer event occurs.
	* @param callbackContext The context in which the callback will be called.
	* @param args Additional arguments that will be supplied to the callback.
	* @return The Phaser.TimerEvent object that was created.
	*/
	function repeat(delay:Float, repeatCount:Float, callback:Dynamic, ?callbackContext:Dynamic, args:Rest<Dynamic>):phaser.TimerEvent;
	
	/**
	* Resumes the Timer and updates all pending events.
	*/
	function resume():Void;
	
	/**
	* Sort handler used by Phaser.Timer.order.
	*/
	function sortHandler(a:Dynamic, b:Dynamic):Float;
	
	/**
	* Starts this Timer running.
	* 
	* @param delay The number of milliseconds, in {
	* @link Phaser.Time game time}, that should elapse before the Timer will start.
	*/
	function start(?startDelay:Float):Void;
	
	/**
	* Stops this Timer from running. Does not cause it to be destroyed if autoDestroy is set to true.
	* 
	* @param clearEvents If true all the events in Timer will be cleared, otherwise they will remain. - Default: true
	*/
	function stop(?clearEvents:Bool):Void;
	
	/**
	* The main Timer update event, called automatically by Phaser.Time.update.
	* 
	* @param time The time from the core game clock.
	* @return True if there are still events waiting to be dispatched, otherwise false if this Timer can be destroyed.
	*/
	function update(time:Float):Bool;
	
}

