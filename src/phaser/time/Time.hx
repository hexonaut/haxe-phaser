package phaser.time;

@:native("Phaser.Time")
extern class Time {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var time:Float;
	var now:Float;
	var elapsed:Float;
	var pausedTime:Float;
	var advancedTiming:Bool;
	var fps:Float;
	var fpsMin:Float;
	var fpsMax:Float;
	var msMin:Float;
	var msMax:Float;
	var physicsElapsed:Float;
	var deltaCap:Float;
	var frames:Float;
	var pauseDuration:Float;
	var timeToCall:Float;
	var lastTime:Float;
	var events:phaser.time.Timer;
	var _started:Float;
	var _timeLastSecond:Float;
	var _pauseStarted:Float;
	var _justResumed:Bool;
	var _timers:Dynamic;
	var _len:Float;
	var _i:Float;
	function boot ():Void;
	function create (?autoDestroy:Bool = true):phaser.time.Timer;
	function removeAll ():Void;
	function update (time:Float):Void;
	function gamePaused ():Void;
	function gameResumed ():Void;
	function totalElapsedSeconds ():Float;
	function elapsedSince (since:Float):Float;
	function elapsedSecondsSince (since:Float):Float;
	function reset ():Void;
}
