package phaser.tween;

@:native("Phaser.TweenManager")
extern class TweenManager {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var _tweens:Dynamic;
	var _add:Dynamic;
	function getAll ():Dynamic;
	function removeAll ():Void;
	function add (tween:phaser.tween.Tween):phaser.tween.Tween;
	function create (object:Dynamic):phaser.tween.Tween;
	function remove (tween:phaser.tween.Tween):Void;
	function update ():Bool;
	function isTweening (object:Dynamic):Bool;
	function _pauseAll ():Void;
	function _resumeAll ():Void;
	function pauseAll ():Void;
	function resumeAll ():Void;
}
