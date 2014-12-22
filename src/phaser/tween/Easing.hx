package phaser.tween;

@:native("Phaser.Easing.Linear")
extern class Linear {
	
	/**
	 * Ease-in.
	 */
	static function None (k:Float):Float;
	
}

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

@:native("Phaser.Easing.Quintic")
extern class Quintic {
	
	/**
	 * Quintic ease-in.
	 */
	static function In (k:Float):Float;
	
	/**
	 * Quintic ease-out.
	 */
	static function Out (k:Float):Float;
	
	/**
	 * Quintic ease-in/out.
	 */
	static function InOut (k:Float):Float;
	
}

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
