package phaser.easing;

/**
* Sinusoidal easing.
*/
@:native("Phaser.Easing.Sinusoidal")
extern class Sinusoidal {

	/**
	* Sinusoidal ease-in.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function In(k:Float):Float;
	
	/**
	* Sinusoidal ease-out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function Out(k:Float):Float;
	
	/**
	* Sinusoidal ease-in/out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function InOut(k:Float):Float;
	
}

