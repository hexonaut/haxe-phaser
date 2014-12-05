package phaser.time;

@:native("Phaser.TimerEvent")
extern class TimerEvent {
	
	/**
	 * A TimerEvent is a single event that is processed by a Phaser.Timer.
	 * 
	 * It consists of a delay, which is a value in milliseconds after which the event will fire.
	 * When the event fires it calls a specific callback with the specified arguments.
	 * 
	 * Use {@link Phaser.Timer#add}, {@link Phaser.Timer#add}, or {@link Phaser.Timer#add} methods to create a new event.
	 */
	function new (timer:phaser.time.Timer, delay:Float, tick:Float, repeatCount:Float, loop:Bool, callback:Dynamic, callbackContext:Dynamic, arguments:Dynamic);
	
	/**
	 * The Timer object that this TimerEvent belongs to.
	 */
	var timer(default, null):phaser.time.Timer;
	
	/**
	 * The delay in ms at which this TimerEvent fires.
	 */
	var delay:Float;
	
	/**
	 * The tick is the next game clock time that this event will fire at.
	 */
	var tick:Float;
	
	/**
	 * If this TimerEvent repeats it will do so this many times.
	 */
	var repeatCount:Float;
	
	/**
	 * True if this TimerEvent loops, otherwise false.
	 */
	var loop:Bool;
	
	/**
	 * The callback that will be called when the TimerEvent occurs.
	 */
	var callback:Dynamic;
	
	/**
	 * The context in which the callback will be called.
	 */
	var callbackContext:Dynamic;
	
	/**
	 * Additional arguments to be passed to the callback.
	 */
	var args:Dynamic;
	
	/**
	 * A flag that controls if the TimerEvent is pending deletion.
	 */
	var pendingDelete:Bool;
	
}
