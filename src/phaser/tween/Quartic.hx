package phaser.tween;

@:native("Phaser.Easing.Quartic")
extern class Quartic {
	
	/**
	 * Quartic ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Quartic ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Quartic ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}