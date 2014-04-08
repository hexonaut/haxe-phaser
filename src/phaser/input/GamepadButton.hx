package phaser.input;

@:native("Phaser.GamepadButton")
extern class GamepadButton {
	function new (game:phaser.core.Game, buttoncode:Float);
	var game:phaser.core.Game;
	var isDown:Bool;
	var isUp:Bool;
	var timeDown:Float;
	var duration:Float;
	var timeUp:Float;
	var repeats:Float;
	var value:Float;
	var buttonCode:Float;
	var onDown:phaser.core.Signal;
	var onUp:phaser.core.Signal;
	var onFloat:phaser.core.Signal;
	function processButtonDown (value:Dynamic):Void;
	function processButtonUp (value:Dynamic):Void;
	function processButtonFloat (value:Dynamic):Void;
	function justPressed (?duration:Float = 250):Bool;
}
