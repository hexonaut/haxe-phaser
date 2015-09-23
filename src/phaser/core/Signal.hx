package phaser.core;

@:native("Phaser.Signal")
extern class Signal {
	
	/**
	 * A Signal is an event dispatch mechanism that supports broadcasting to multiple listeners.
	 * 
	 * Event listeners are uniquely identified by the listener/callback function and the context.
	 */
	function new ();
	
	/**
	 * Memorize the previously dispatched event?
	 * 
	 * If an event has been memorized it is automatically dispatched when a new listener is added with {@link #add} or {@link #addOnce}.
	 * Use {@link #forget} to clear any currently memorized event.
	 */
	var memorize:Bool;
	
	/**
	 * Is the Signal active? Only active signals will broadcast dispatched events.
	 * 
	 * Setting this property during a dispatch will only affect the next dispatch. To stop the propagation of a signal from a listener use {@link #halt}.
	 */
	var active:Bool;
	
	/**
	 * Check if a specific listener is attached.
	 */
	function has (listener:Dynamic, ?context:Dynamic):Bool;
	
	/**
	 * Add an event listener for this signal.
	 * 
	 * An event listener is a callback with a related context and priority.
	 * 
	 * You can optionally provide extra arguments which will be passed to the callback after any internal parameters.
	 * 
	 * For example: Phaser.Key.onDown when dispatched will send the Phaser.Key object that caused the signal as the first parameter.
	 * Any arguments you've specified after priority will be sent as well:
	 * 
	 * fireButton.onDown.add(shoot, this, 0, 'lazer', 100);
	 * 
	 * When onDown dispatches it will call the shoot callback passing it: Phaser.Key, 'lazer', 100.
	 * 
	 * Where the first parameter is the one that Key.onDown dispatches internally and 'lazer', 
	 * and the value 100 were the custom arguments given in the call to 'add'.
	 */
	function add (listener:Dynamic, ?listenerContext:Dynamic, ?priority:Float, ?args0:Dynamic, ?args1:Dynamic, ?args2:Dynamic, ?args3:Dynamic, ?args4:Dynamic):phaser.core.SignalBinding;
	
	/**
	 * Add a one-time listener - the listener is automatically removed after the first execution.
	 * 
	 * If there is as {@link Phaser.Signal#memorize memorized} event then it will be dispatched and
	 * the listener will be removed immediately.
	 */
	function addOnce (listener:Dynamic, ?listenerContext:Dynamic, ?priority:Float, ?args0:Dynamic, ?args1:Dynamic, ?args2:Dynamic, ?args3:Dynamic, ?args4:Dynamic):phaser.core.SignalBinding;
	
	/**
	 * Remove a single event listener.
	 */
	function remove (listener:Dynamic, ?context:Dynamic):Dynamic;
	
	/**
	 * Remove all event listeners.
	 */
	function removeAll (?context:Dynamic):Void;
	
	/**
	 * Gets the total number of listeners attached to this Signal.
	 */
	function getNumListeners ():Int;
	
	/**
	 * Stop propagation of the event, blocking the dispatch to next listener on the queue.
	 * 
	 * This should be called only during event dispatch as calling it before/after dispatch won't affect another broadcast.
	 * See {@link #active} to enable/disable the signal entirely.
	 */
	function halt ():Void;
	
	/**
	 * Dispatch / broadcast the event to all listeners.
	 * 
	 * To create an instance-bound dispatch for this Signal, use {@link #boundDispatch}.
	 */
	function dispatch (?params:Dynamic):Void;
	
	/**
	 * Forget the currently {@link Phaser.Signal#memorize memorized} event, if any.
	 */
	function forget ():Void;
	
	/**
	 * Dispose the signal - no more events can be dispatched.
	 * 
	 * This removes all event listeners and clears references to external objects.
	 * Calling methods on a disposed objects results in undefined behavior.
	 */
	function dispose ():Void;
	
	/**
	 * A string representation of the object.
	 */
	function toString ():String;
	
	/**
	 * Create a dispatch function that maintains a binding to the original Signal context.
	 * 
	 * Use the resulting value if the dispatch function needs to be passed somewhere
	 * or called independently of the Signal object.
	 */
	var boundDispatch:Dynamic;
	
}
