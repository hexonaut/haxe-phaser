package phaser.core;

@:native("Phaser.SignalBinding")
extern class SignalBinding {
	function new (signal:phaser.core.Signal, listener:Dynamic, isOnce:Bool, ?listenerContext:Dynamic, ?priority:Float);
	var _listener:phaser.core.Game;
	var _isOnce:Bool;
	var context:Dynamic;
	var _signal:phaser.core.Signal;
	var _priority:Float;
	var active:Bool;
	var params:Dynamic;
	function execute (?paramsArr:Dynamic):Dynamic;
	function detach ():Dynamic;
}
