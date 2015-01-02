package phaser.tween;

@:native("Phaser.Easing.Exponential")
extern class Exponential {
	
	/**
	 * Exponential ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Exponential ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Exponential ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}