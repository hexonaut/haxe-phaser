package phaser.easing;

/**
* Circular easing.
*/
@:native("Phaser.Easing.Circular")
extern class Circular {

	/**
	* Circular ease-in.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function In(k:Float):Float;
	
	/**
	* Circular ease-out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function Out(k:Float):Float;
	
	/**
	* Circular ease-in/out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function InOut(k:Float):Float;
	
}

