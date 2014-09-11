package phaser.tween;

@:native("Phaser.Easing.Bounce")
extern class Easing {
	
	/**
	 * Linear Easing (no variation).
	 */
	function None (k:Float):Float;
	
	/**
	 * Ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}
