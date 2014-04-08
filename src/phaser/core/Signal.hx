package phaser.core;

@:native("Phaser.Signal")
extern class Signal {
	function new ();
	var _bindings:Dynamic;
	var _prevParams:Dynamic;
	var memorize:Bool;
	var active:Bool;
	function has (listener:Dynamic, ?context:Dynamic):Bool;
	function add (listener:Dynamic, ?listenerContext:Dynamic, ?priority:Float):phaser.core.SignalBinding;
	function addOnce (listener:Dynamic, ?listenerContext:Dynamic, ?priority:Float):phaser.core.SignalBinding;
	function remove (listener:Dynamic, ?context:Dynamic):Dynamic;
	function removeAll ():Void;
	function getNumListeners ():Float;
	function halt ():Void;
	function dispatch (?params:Dynamic):Void;
	function forget ():Void;
	function dispose ():Void;
}
