package phaser.pixi.utils;

@:native("PIXI.Event")
extern class EventTarget {
	
	/**
	 * Emit an event to all registered event listeners.
	 */
	var emit:Dynamic;
	
	/**
	 * Register a new EventListener for the given event.
	 */
	var on:Dynamic;
	
	/**
	 * Remove event listeners.
	 */
	var off:Dynamic;
	
	/**
	 * Creates an homogenous object for tracking events so users can know what to expect.
	 */
	function new (Object:Dynamic, String:Dynamic, Object:Dynamic);
	
	/**
	 * Tracks the state of bubbling propagation. Do not
	 * set this directly, instead use event.stopPropagation()
	 */
	var stopped:Bool;
	
	/**
	 * Tracks the state of sibling listener propagation. Do not
	 * set this directly, instead use event.stopImmediatePropagation()
	 */
	var stoppedImmediate:Bool;
	
	/**
	 * The original target the event triggered on.
	 */
	var target:Dynamic;
	
	/**
	 * The string name of the event that this represents.
	 */
	var type:String;
	
	/**
	 * The data that was passed in with this event.
	 */
	var data:Dynamic;
	
	/**
	 * The timestamp when the event occurred.
	 */
	var timeStamp:Float;
	
}
