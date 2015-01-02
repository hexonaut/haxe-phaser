package phaser.tween;

@:native("Phaser.Easing.Back")
extern class Back {
	
	/**
	 * Back ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Back ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Back ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}