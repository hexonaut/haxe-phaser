package phaser.easing;

/**
* Bounce easing.
*/
@:native("Phaser.Easing.Bounce")
extern class Bounce {

	/**
	* Bounce ease-in.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function In(k:Float):Float;
	
	/**
	* Bounce ease-out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function Out(k:Float):Float;
	
	/**
	* Bounce ease-in/out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function InOut(k:Float):Float;
	
}

