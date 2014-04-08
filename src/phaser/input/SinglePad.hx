package phaser.input;

@:native("Phaser.SinglePad")
extern class SinglePad {
	function new (game:phaser.core.Game, padParent:Dynamic);
	var game:phaser.core.Game;
	var _padParent:phaser.input.Gamepad;
	var _index:Float;
	var _rawPad:Dynamic;
	var _connected:Bool;
	var _prevTimestamp:Float;
	var _rawButtons:Array<Dynamic>;
	var _buttons:Array<Dynamic>;
	var _axes:Array<Dynamic>;
	var _hotkeys:Array<Dynamic>;
	var callbackContext:Dynamic;
	var onConnectCallback:Dynamic;
	var onDisconnectCallback:Dynamic;
	var onDownCallback:Dynamic;
	var onUpCallback:Dynamic;
	var onAxisCallback:Dynamic;
	var onFloatCallback:Dynamic;
	var deadZone:Float;
	function addCallbacks (context:Dynamic, callbacks:Dynamic):Void;
	function addButton (buttonCode:Float):phaser.input.GamepadButton;
	function pollStatus ():Void;
	function connect (rawPad:Dynamic):Void;
	function disconnect ():Void;
	function processAxisChange (axisState:Dynamic):Void;
	function processButtonDown (buttonCode:Float, value:Dynamic):Void;
	function processButtonUp (buttonCode:Float, value:Dynamic):Void;
	function processButtonFloat (buttonCode:Float, value:Dynamic):Void;
	function axis (axisCode:Float):Float;
	function isDown (buttonCode:Float):Bool;
	function justReleased (buttonCode:Float, ?duration:Float = 250):Bool;
	function justPressed (buttonCode:Float, ?duration:Float = 250):Bool;
	function buttonValue (buttonCode:Float):Bool;
	function reset ():Void;
	var connected(default, null):Bool;
	var index(default, null):Float;
}
