package phaser.input;

@:native("Phaser.Keyboard")
extern class Keyboard {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var disabled:Bool;
	var event:Dynamic;
	var callbackContext:Dynamic;
	var onDownCallback:Dynamic;
	var onUpCallback:Dynamic;
	var _keys:Dynamic;
	var _capture:Dynamic;
	var _onKeyDown:Dynamic;
	var _onKeyUp:Dynamic;
	function addCallbacks (context:Dynamic, onDown:Dynamic, ?onUp:Dynamic):Void;
	function addKey (keycode:Float):phaser.input.Key;
	function removeKey (keycode:Float):Void;
	function createCursorKeys ():Dynamic;
	function start ():Void;
	function stop ():Void;
	function addKeyCapture (keycode:Dynamic):Void;
	function removeKeyCapture (keycode:Float):Void;
	function clearCaptures ():Void;
	function update ():Void;
	function processKeyDown (event:Dynamic):Void;
	function processKeyUp (event:Dynamic):Void;
	function reset ():Void;
	function justPressed (keycode:Float, ?duration:Float = 250):Bool;
	function justReleased (keycode:Float, ?duration:Float = 250):Bool;
	function isDown (keycode:Float):Bool;
}
