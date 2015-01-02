package phaser.tween;

@:native("Phaser.Easing.Circular")
extern class Circular {
	
	/**
	 * Circular ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Circular ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Circular ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}