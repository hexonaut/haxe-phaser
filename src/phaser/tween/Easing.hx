package phaser.tween;

@:native("Phaser.Easing.Linear")
extern class Linear {
	
	/**
	 * Ease-in.
	 */
	function None (k:Float):Float;
	
}

@:native("Phaser.Easing.Quadratic")
extern class Quadratic {
	
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

@:native("Phaser.Easing.Cubic")
extern class Cubic {
	
	/**
	 * Cubic ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Cubic ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Cubic ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}

@:native("Phaser.Easing.Quartic")
extern class Quartic {
	
	/**
	 * Quartic ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Quartic ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Quartic ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}

@:native("Phaser.Easing.Quintic")
extern class Quintic {
	
	/**
	 * Quintic ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Quintic ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Quintic ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}

@:native("Phaser.Easing.Sinusoidal")
extern class Sinusoidal {
	
	/**
	 * Sinusoidal ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Sinusoidal ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Sinusoidal ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}

@:native("Phaser.Easing.Exponential")
extern class Exponential {
	
	/**
	 * Exponential ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Exponential ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Exponential ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}

@:native("Phaser.Easing.Circular")
extern class Circular {
	
	/**
	 * Circular ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Circular ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Circular ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}

@:native("Phaser.Easing.Elastic")
extern class Elastic {
	
	/**
	 * Elastic ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Elastic ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Elastic ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}

@:native("Phaser.Easing.Back")
extern class Back {
	
	/**
	 * Back ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Back ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Back ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}

@:native("Phaser.Easing.Bounce")
extern class Bounce {
	
	/**
	 * Bounce ease-in.
	 */
	function In (k:Float):Float;
	
	/**
	 * Bounce ease-out.
	 */
	function Out (k:Float):Float;
	
	/**
	 * Bounce ease-in/out.
	 */
	function InOut (k:Float):Float;
	
}
