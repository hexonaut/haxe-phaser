package phaser.core;

@:native("Phaser.StateManager")
extern class StateManager {
	function new (game:phaser.core.Game, ?pendingState:phaser.core.State);
	var game:phaser.core.Game;
	var states:Dynamic;
	var _pendingState:phaser.core.State;
	var _clearWorld:Bool;
	var _clearCache:Bool;
	var _created:Bool;
	var _args:Dynamic;
	var current:String;
	var onInitCallback:Dynamic;
	var onPreloadCallback:Dynamic;
	var onCreateCallback:Dynamic;
	var onUpdateCallback:Dynamic;
	var onRenderCallback:Dynamic;
	var onPreRenderCallback:Dynamic;
	var onLoadUpdateCallback:Dynamic;
	var onLoadRenderCallback:Dynamic;
	var onPausedCallback:Dynamic;
	var onResumedCallback:Dynamic;
	var onShutDownCallback:Dynamic;
	function boot ():Void;
	function add (key:String, state:phaser.core.State, ?autoStart:Bool = false):Void;
	function remove (key:String):Void;
	function start (key:String, ?clearWorld:Bool = true, ?clearCache:Bool = false, parameter:Dynamic):Void;
	function dummy ():Void;
	function preUpdate ():Void;
	function checkState (key:String):Bool;
	function link (key:String):Void;
	function setCurrentState (key:String):Void;
	function getCurrentState ():phaser.core.State;
	function destroy ():Void;
}
