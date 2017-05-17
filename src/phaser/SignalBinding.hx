package phaser;

import haxe.extern.Rest;

/**
* Object that represents a binding between a Signal and a listener function.
* This is an internal constructor and shouldn't be created directly.
* Inspired by Joa Ebert AS3 SignalBinding and Robert Penner's Slot classes.
*/
@:native("Phaser.SignalBinding")
extern class SignalBinding {

	/**
	* Object that represents a binding between a Signal and a listener function.
	* This is an internal constructor and shouldn't be created directly.
	* Inspired by Joa Ebert AS3 SignalBinding and Robert Penner's Slot classes.
	* 
	* @param signal Reference to Signal object that listener is currently bound to.
	* @param listener Handler function bound to the signal.
	* @param isOnce If binding should be executed just once.
	* @param listenerContext Context on which listener will be executed (object that should represent the `this` variable inside listener function).
	* @param priority The priority level of the event listener. (default = 0).
	* @param args Additional arguments to pass to the callback (listener) function. They will be appended after any arguments usually dispatched. - Default: (none)
	*/
	function new(signal:phaser.Signal, listener:Dynamic, isOnce:Bool, ?listenerContext:Dynamic, ?priority:Float, args:Rest<Dynamic>);
	
	/**
	* If binding is active and should be executed.
	* Default: true
	*/
	var active:Bool;
	
	/**
	* The number of times the handler function has been called.
	*/
	var callCount:Float;
	
	/**
	* Context on which listener will be executed (object that should represent the `this` variable inside listener function).
	*/
	var context:Dynamic;
	
	/**
	* Default parameters passed to listener during `Signal.dispatch` and `SignalBinding.execute` (curried parameters).
	*/
	var params:Array<Dynamic>;
	
	/**
	* Call listener passing arbitrary parameters.
	* If binding was added using `Signal.addOnce()` it will be automatically removed from signal dispatch queue, this method is used internally for the signal dispatch.
	* 
	* @param paramsArr Array of parameters that should be passed to the listener.
	* @return Value returned by the listener.
	*/
	function execute(?paramsArr:Array<Dynamic>):Void;
	
	/**
	* Detach binding from signal.
	* alias to: @see mySignal.remove(myBinding.getListener());
	* 
	* @return Handler function bound to the signal or `null` if binding was previously detached.
	*/
	function detach():Dynamic;
	
	/**
	* undefined
	* 
	* @return True if binding is still bound to the signal and has a listener.
	*/
	function isBound():Bool;
	
	/**
	* undefined
	* 
	* @return If SignalBinding will only be executed once.
	*/
	function isOnce():Bool;
	
	/**
	* undefined
	* 
	* @return Handler function bound to the signal.
	*/
	function getListener():Dynamic;
	
	/**
	* undefined
	* 
	* @return Signal that listener is currently bound to.
	*/
	function getSignal():phaser.Signal;
	
	/**
	* undefined
	* 
	* @return String representation of the object.
	*/
	function toString():String;
	
}

