package phaser.time;

@:native("Phaser.TimerEvent")
extern class TimerEvent {
	function new (timer:phaser.time.Timer, delay:Float, tick:Float, repeatCount:Float, loop:Bool, callback:Dynamic, callbackContext:Dynamic, arguments:Dynamic);
	var timer:phaser.time.Timer;
	var delay:Float;
	var tick:Float;
	var repeatCount:Float;
	var loop:Bool;
	var callback:Dynamic;
	var callbackContext:Dynamic;
	var args:Dynamic;
	var pendingDelete:Bool;
}
