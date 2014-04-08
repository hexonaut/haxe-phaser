package phaser.input;

@:native("Phaser.Mouse")
extern class Mouse {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var callbackContext:Dynamic;
	var mouseDownCallback:Dynamic;
	var mouseMoveCallback:Dynamic;
	var mouseUpCallback:Dynamic;
	var capture:Bool;
	var button:Float;
	var disabled:Bool;
	var locked:Bool;
	var pointerLock:phaser.core.Signal;
	var event:Dynamic;
	var _onMouseDown:Dynamic;
	var _onMouseMove:Dynamic;
	var _onMouseUp:Dynamic;
	static var NO_BUTTON:Float;
	static var LEFT_BUTTON:Float;
	static var MIDDLE_BUTTON:Float;
	static var RIGHT_BUTTON:Float;
	function start ():Void;
	function onMouseDown (event:Dynamic):Void;
	function onMouseMove (event:Dynamic):Void;
	function onMouseUp (event:Dynamic):Void;
	function requestPointerLock ():Void;
	function pointerLockChange (event:Dynamic):Void;
	function releasePointerLock ():Void;
	function stop ():Void;
}
