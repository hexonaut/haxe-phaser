package phaser.tween;

@:native("Phaser.Easing.Elastic")
extern class Elastic {
	
	/**
	 * Elastic ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Elastic ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Elastic ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}