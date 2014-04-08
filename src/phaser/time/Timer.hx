package phaser.time;

@:native("Phaser.Timer")
extern class Timer {
	function new (game:phaser.core.Game, ?autoDestroy:Bool = true);
	var game:phaser.core.Game;
	var running:Bool;
	var autoDestroy:Bool;
	var expired(default, null):Bool;
	var events:Dynamic;
	var onComplete:phaser.core.Signal;
	var nextTick(default, null):Float;
	var paused(default, null):Bool;
	var _codePaused:Bool;
	var _started:Float;
	var _pauseStarted:Float;
	var _pauseTotal:Float;
	var _now:Float;
	var _len:Float;
	var _i:Float;
	static var MINUTE:Float;
	static var SECOND:Float;
	static var HALF:Float;
	static var QUARTER:Float;
	function create (delay:Float, loop:Bool, repeatCount:Float, callback:Dynamic, callbackContext:Dynamic, arguments:Dynamic):phaser.time.TimerEvent;
	function add (delay:Float, callback:Dynamic, callbackContext:Dynamic, arguments:Dynamic):phaser.time.TimerEvent;
	function repeat (delay:Float, repeatCount:Float, callback:Dynamic, callbackContext:Dynamic, arguments:Dynamic):phaser.time.TimerEvent;
	function loop (delay:Float, callback:Dynamic, callbackContext:Dynamic, arguments:Dynamic):phaser.time.TimerEvent;
	function start ():Void;
	function stop (?clearEvents:Bool = true):Void;
	function remove (event:phaser.time.TimerEvent):Void;
	function order ():Void;
	function sortHandler ():Void;
	function update (time:Float):Bool;
	function pause ():Void;
	function _pause ():Void;
	function resume ():Void;
	function _resume ():Void;
	function removeAll ():Void;
	function destroy ():Void;
	var next(default, null):Float;
	var duration(default, null):Float;
	var length(default, null):Float;
	var ms(default, null):Float;
	var seconds(default, null):Float;
}
