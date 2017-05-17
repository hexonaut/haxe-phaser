package phaser.easing;

/**
* Quintic easing.
*/
@:native("Phaser.Easing.Quintic")
extern class Quintic {

	/**
	* Quintic ease-in.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function In(k:Float):Float;
	
	/**
	* Quintic ease-out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function Out(k:Float):Float;
	
	/**
	* Quintic ease-in/out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function InOut(k:Float):Float;
	
}

