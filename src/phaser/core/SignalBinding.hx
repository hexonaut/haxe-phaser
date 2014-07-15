package phaser.core;

@:native("Phaser.SignalBinding")
extern class SignalBinding {
	
	/**
	 * @class Phaser.SignalBinding
	 */
	function new (signal:phaser.core.Signal, listener:Dynamic, isOnce:Bool, ?listenerContext:Dynamic, ?priority:Float);
	
	/**
	 * Handler function bound to the signal.
	 */
	var _listener:phaser.core.Game;
	
	/**
	 * If binding should be executed just once.
	 */
	var _isOnce:Bool;
	
	/**
	 * Context on which listener will be executed (object that should represent the this variable inside listener function).
	 */
	var context:Dynamic;
	
	/**
	 * Reference to Signal object that listener is currently bound to.
	 */
	var _signal:phaser.core.Signal;
	
	/**
	 * Listener priority.
	 */
	var _priority:Float;
	
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
	function execute (?paramsArr:Array<Dynamic>):Dynamic;
	
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
