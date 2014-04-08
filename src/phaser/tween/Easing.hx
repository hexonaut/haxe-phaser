package phaser.tween;

@:native("Phaser.Easing.Bounce")
extern class Easing {
	function In  (k:Float):Float;
	function Out  (k:Float):Float;
	function InOut (k:Float):Float;
	function Out (k:Float):Float;
}
