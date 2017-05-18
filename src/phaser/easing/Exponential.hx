package phaser.easing;

/**
* Exponential easing.
*/
@:native("Phaser.Easing.Exponential")
extern class Exponential {

	/**
	* Exponential ease-in.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function In(k:Float):Float;
	
	/**
	* Exponential ease-out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function Out(k:Float):Float;
	
	/**
	* Exponential ease-in/out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function InOut(k:Float):Float;
	
}

