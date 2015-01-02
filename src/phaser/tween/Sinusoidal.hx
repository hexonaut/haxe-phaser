package phaser.tween;

@:native("Phaser.Easing.Sinusoidal")
extern class Sinusoidal {
	
	/**
	 * Sinusoidal ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Sinusoidal ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Sinusoidal ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}
