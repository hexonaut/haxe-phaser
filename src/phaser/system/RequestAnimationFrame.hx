package phaser.system;

@:native("Phaser.RequestAnimationFrame")
extern class RequestAnimationFrame {
	function new (game:phaser.core.Game, ?forceSetTimeOut:Bool = false);
	var game:phaser.core.Game;
	var isRunning:Bool;
	var forceSetTimeOut:Bool;
	var _isSetTimeOut:Bool;
	var _onLoop:Dynamic;
	var _timeOutID:Float;
	function start ():Void;
	function updateRAF ():Void;
	function updateSetTimeout ():Void;
	function stop ():Void;
	function isSetTimeOut ():Bool;
	function isRAF ():Bool;
}
