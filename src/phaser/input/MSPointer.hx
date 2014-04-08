package phaser.input;

@:native("Phaser.MSPointer")
extern class MSPointer {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var callbackContext:Dynamic;
	var disabled:Bool;
	var _onMSPointerDown:Dynamic;
	var _onMSPointerMove:Dynamic;
	var _onMSPointerUp:Dynamic;
	function start ():Void;
	function onPointerDown (event:Dynamic):Void;
	function onPointerMove (a0:Dynamic):Void;
	function onPointerUp (event:Dynamic):Void;
	function stop ():Void;
}
