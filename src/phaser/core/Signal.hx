package phaser.core;

@:native("Phaser.Signal")
extern class Signal {
	
	/**
	 * @class Phaser.Signal
	 */
	function new ();
	
	/**
	 * Internal variable.
	 */
	var _bindings:Dynamic;
	
	/**
	 * Internal variable.
	 */
	var _prevParams:Dynamic;
	
	/**
	 * If Signal should keep record of previously dispatched parameters and
	 * automatically execute listener during add()/addOnce() if Signal was
	 * already dispatched before.
	 */
	var memorize:Bool;
	
	/**
	 * If Signal is active and should broadcast events.
	 * IMPORTANT: Setting this property during a dispatch will only affect the next dispatch, if you want to stop the propagation of a signal use halt() instead.
	 */
	var active:Bool;
	
	/**
	 * Check if listener was attached to Signal.
	 */
	function has (listener:Dynamic, ?context:Dynamic):Bool;
	
	/**
	 * Add a listener to the signal.
	 */
	function add (listener:Dynamic, ?listenerContext:Dynamic, ?priority:Float):phaser.core.SignalBinding;
	
	/**
	 * Add listener to the signal that should be removed after first execution (will be executed only once).
	 */
	function addOnce (listener:Dynamic, ?listenerContext:Dynamic, ?priority:Float):phaser.core.SignalBinding;
	
	/**
	 * Remove a single listener from the dispatch queue.
	 */
	function remove (listener:Dynamic, ?context:Dynamic):Dynamic;
	
	/**
	 * Remove all listeners from the Signal.
	 */
	function removeAll (?context:Dynamic):Void;
	
	/**
	 * Gets the total number of listeneres attached to ths Signal.
	 */
	function getNumListeners ():Float;
	
	/**
	 * Stop propagation of the event, blocking the dispatch to next listeners on the queue.
	 * IMPORTANT: should be called only during signal dispatch, calling it before/after dispatch won't affect signal broadcast.
	 */
	function halt ():Void;
	
	/**
	 * Dispatch/Broadcast Signal to all listeners added to the queue.
	 */
	function dispatch (?params:Dynamic):Void;
	
	/**
	 * Forget memorized arguments.
	 */
	function forget ():Void;
	
	/**
	 * Remove all bindings from signal and destroy any reference to external objects (destroy Signal object).
	 * IMPORTANT: calling any method on the signal instance after calling dispose will throw errors.
	 */
	function dispose ():Void;
	
}
