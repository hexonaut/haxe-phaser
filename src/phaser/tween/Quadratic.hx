package phaser.tween;

@:native("Phaser.Easing.Quadratic")
extern class Quadratic {
	
	/**
	 * Linear Easing (no variation).
	 */
	function None (k:Float):Float;
	
	/**
	 * Ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}