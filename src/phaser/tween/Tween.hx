package phaser.tween;

@:native("Phaser.Tween")
extern class Tween {
	function new (object:Dynamic, game:phaser.core.Game, manager:phaser.tween.TweenManager);
	var object:Dynamic;
	var game:phaser.core.Game;
	var _manager:phaser.tween.TweenManager;
	var _valuesStart:Dynamic;
	var _valuesEnd:Dynamic;
	var _valuesStartRepeat:Dynamic;
	var _duration:Float;
	var _repeat:Float;
	var _yoyo:Bool;
	var _reversed:Bool;
	var _delayTime:Float;
	var _startTime:Float;
	var _easingFunction:Dynamic;
	var _interpolationFunction:Dynamic;
	var _chainedTweens:Dynamic;
	var _onStartCallbackFired:Bool;
	var _onUpdateCallback:Dynamic;
	var _onUpdateCallbackContext:Dynamic;
	var _paused:Bool;
	var _pausedTime:Float;
	var _codePaused:Bool;
	var pendingDelete:Bool;
	var onStart:phaser.core.Signal;
	var onLoop:phaser.core.Signal;
	var onComplete:phaser.core.Signal;
	var isRunning:Bool;
	function to (properties:Dynamic, ?duration:Float = 1000, ?ease:Dynamic, ?autoStart:Bool = false, ?delay:Float = 0, ?repeat:Float = 0, ?yoyo:Bool = false):phaser.tween.Tween;
	function start ():phaser.tween.Tween;
	function generateData (?frameRate:Float = 60, ?data:Dynamic):Dynamic;
	function stop ():phaser.tween.Tween;
	function delay (amount:Float):phaser.tween.Tween;
	function repeat (times:Float):phaser.tween.Tween;
	function yoyo (yoyo:Bool):phaser.tween.Tween;
	function easing (easing:Dynamic):phaser.tween.Tween;
	function interpolation (interpolation:Dynamic):phaser.tween.Tween;
	function chain ():phaser.tween.Tween;
	function loop ():phaser.tween.Tween;
	function onUpdateCallback (callback:Dynamic):phaser.tween.Tween;
	function pause ():Void;
	function _pause ():Void;
	function resume ():Void;
	function _resume ():Void;
	function update (time:Float):Bool;
}
