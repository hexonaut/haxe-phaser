package phaser.tween;

@:native("Phaser.Easing.Quintic")
extern class Quintic {
	
	/**
	 * Quintic ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Quintic ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Quintic ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}