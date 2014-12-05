package phaser.core;

@:native("Phaser.SignalBinding")
extern class SignalBinding {
	
	/**
	 * Object that represents a binding between a Signal and a listener function.
	 * This is an internal constructor and shouldn't be created directly.
	 * Inspired by Joa Ebert AS3 SignalBinding and Robert Penner's Slot classes.
	 */
	function new (signal:phaser.core.Signal, listener:Dynamic, isOnce:Bool, ?listenerContext:Dynamic, ?priority:Float);
	
	/**
	 * Handler function bound to the signal.
	 */
	var _listener:phaser.core.Game;
	
	/**
	 * Reference to Signal object that listener is currently bound to.
	 */
	var _signal:phaser.core.Signal;
	
	/**
	 * If binding is active and should be executed.
	 */
	var active:Bool;
	
	/**
	 * Default parameters passed to listener during Signal.dispatch and SignalBinding.execute (curried parameters).
	 */
	var params:Dynamic;
	
	/**
	 * Call listener passing arbitrary parameters.
	 * If binding was added using Signal.addOnce() it will be automatically removed from signal dispatch queue, this method is used internally for the signal dispatch.
	 */
	function execute (?paramsArr:Dynamic):Dynamic;
	
	/**
	 * Detach binding from signal.
	 * alias to: @see mySignal.remove(myBinding.getListener());
	 */
	function detach ():Dynamic;
	
	/**
	 * Delete instance properties
	 */
	function _destroy ():Void;
	
}
