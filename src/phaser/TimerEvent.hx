package phaser;

import haxe.extern.Rest;

/**
* A TimerEvent is a single event that is processed by a Phaser.Timer.
* 
* It consists of a delay, which is a value in milliseconds after which the event will fire.
* When the event fires it calls a specific callback with the specified arguments.
* 
* TimerEvents are removed by their parent timer once finished firing or repeating.
* 
* Use {@link Phaser.Timer#add}, {@link Phaser.Timer#repeat}, or {@link Phaser.Timer#loop} methods to create a new event.
*/
@:native("Phaser.TimerEvent")
extern class TimerEvent {

	/**
	* A TimerEvent is a single event that is processed by a Phaser.Timer.
	* 
	* It consists of a delay, which is a value in milliseconds after which the event will fire.
	* When the event fires it calls a specific callback with the specified arguments.
	* 
	* TimerEvents are removed by their parent timer once finished firing or repeating.
	* 
	* Use {@link Phaser.Timer#add}, {@link Phaser.Timer#repeat}, or {@link Phaser.Timer#loop} methods to create a new event.
	* 
	* @param timer The Timer object that this TimerEvent belongs to.
	* @param delay The delay in ms at which this TimerEvent fires.
	* @param tick The tick is the next game clock time that this event will fire at.
	* @param repeatCount If this TimerEvent repeats it will do so this many times.
	* @param loop True if this TimerEvent loops, otherwise false.
	* @param callback The callback that will be called when the TimerEvent occurs.
	* @param callbackContext The context in which the callback will be called.
	* @param arguments Additional arguments to be passed to the callback.
	*/
	function new(timer:phaser.Timer, delay:Float, tick:Float, repeatCount:Float, loop:Bool, callback:Dynamic, callbackContext:Dynamic, args:Rest<Dynamic>);
	
	/**
	* Additional arguments to be passed to the callback.
	*/
	var args:Array<Dynamic>;
	
	/**
	* The callback that will be called when the TimerEvent occurs.
	*/
	var callback:Dynamic;
	
	/**
	* The context in which the callback will be called.
	*/
	var callbackContext:Dynamic;
	
	/**
	* The delay in ms at which this TimerEvent fires.
	*/
	var delay:Float;
	
	/**
	* True if this TimerEvent loops, otherwise false.
	*/
	var loop:Bool;
	
	/**
	* A flag that controls if the TimerEvent is pending deletion.
	*/
	var pendingDelete:Bool;
	
	/**
	* If this TimerEvent repeats it will do so this many times.
	*/
	var repeatCount:Float;
	
	/**
	* The tick is the next game clock time that this event will fire at.
	*/
	var tick:Float;
	
	/**
	* The Timer object that this TimerEvent belongs to.
	*/
	var timer:phaser.Timer;
	
}

