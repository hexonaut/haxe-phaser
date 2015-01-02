package phaser.tween;

@:native("Phaser.Easing.Cubic")
extern class Cubic {
	
	/**
	 * Cubic ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Cubic ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Cubic ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}