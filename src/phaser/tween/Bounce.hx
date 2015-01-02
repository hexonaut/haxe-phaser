package phaser.tween;

@:native("Phaser.Easing.Bounce")
extern class Bounce {
	
	/**
	 * Bounce ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Bounce ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Bounce ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}
