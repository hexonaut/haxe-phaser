package phaser.input;

@:native("Phaser.Touch")
extern class Touch {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var disabled:Bool;
	var callbackContext:Dynamic;
	var touchStartCallback:Dynamic;
	var touchMoveCallback:Dynamic;
	var touchEndCallback:Dynamic;
	var touchEnterCallback:Dynamic;
	var touchLeaveCallback:Dynamic;
	var touchCancelCallback:Dynamic;
	var preventDefault:Bool;
	var event:Dynamic;
	var _onTouchStart:Dynamic;
	var _onTouchMove:Dynamic;
	var _onTouchEnd:Dynamic;
	var _onTouchEnter:Dynamic;
	var _onTouchLeave:Dynamic;
	var _onTouchCancel:Dynamic;
	function start ():Void;
	function consumeTouchMove ():Void;
	function onTouchStart (event:Dynamic):Void;
	function onTouchCancel (event:Dynamic):Void;
	function onTouchEnter (event:Dynamic):Void;
	function onTouchLeave (event:Dynamic):Void;
	function onTouchMove (event:Dynamic):Void;
	function onTouchEnd (event:Dynamic):Void;
	function stop ():Void;
}
