package phaser.input;

@:native("Phaser.Gamepad")
extern class Gamepad {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var _gamepads:Dynamic;
	var _gamepadIndexMap:Dynamic;
	var _rawPads:Array<Dynamic>;
	var _active:Bool;
	var disabled:Bool;
	var gamepadSupportAvailable:Bool;
	var prevRawGamepadTypes:Array<Dynamic>;
	var prevTimestamps:Array<Dynamic>;
	var callbackContext:Dynamic;
	var onConnectCallback:Dynamic;
	var onDisconnectCallback:Dynamic;
	var onDownCallback:Dynamic;
	var onUpCallback:Dynamic;
	var onAxisCallback:Dynamic;
	var onFloatCallback:Dynamic;
	var _ongamepadconnected:Dynamic;
	var _gamepaddisconnected:Dynamic;
	function addCallbacks (context:Dynamic, callbacks:Dynamic):Void;
	function start ():Void;
	function update ():Void;
	function _pollGamepads ():Void;
	function setDeadZones ():Void;
	function stop ():Void;
	function reset ():Void;
	function justPressed (buttonCode:Float, ?duration:Float = 250):Bool;
	function isDown (buttonCode:Float):Bool;
	var active(default, null):Bool;
	var supported(default, null):Bool;
	var padsConnected(default, null):Bool;
	var pad1(default, null):Bool;
	var pad2(default, null):Bool;
	var pad3(default, null):Bool;
	var pad4(default, null):Bool;
}
