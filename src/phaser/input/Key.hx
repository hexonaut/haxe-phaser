package phaser.input;

@:native("Phaser.Key")
extern class Key {
	function new (game:phaser.core.Game, keycode:Float);
	var game:phaser.core.Game;
	var event(default, null):Dynamic;
	var isDown:Bool;
	var isUp:Bool;
	var altKey:Bool;
	var ctrlKey:Bool;
	var shiftKey:Bool;
	var timeDown:Float;
	var duration:Float;
	var timeUp:Float;
	var repeats:Float;
	var keyCode:Float;
	var onDown:phaser.core.Signal;
	var onHoldCallback:Dynamic;
	var onHoldContext:Dynamic;
	var onUp:phaser.core.Signal;
	function processKeyDown (event:Dynamic):Void;
	function processKeyUp (event:Dynamic):Void;
	function reset ():Void;
	function justPressed (?duration:Float = 250):Bool;
	function justReleased (?duration:Float = 250):Bool;
}
