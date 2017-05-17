package phaser.easing;

/**
* Quadratic easing.
*/
@:native("Phaser.Easing.Quadratic")
extern class Quadratic {

	/**
	* Ease-in.
	* 
	* @param k The value to be tweened.
	* @return k^2.
	*/
	static function In(k:Float):Float;
	
	/**
	* Ease-out.
	* 
	* @param k The value to be tweened.
	* @return k* (2-k).
	*/
	static function Out(k:Float):Float;
	
	/**
	* Ease-in/out.
	* 
	* @param k The value to be tweened.
	* @return The tweened value.
	*/
	static function InOut(k:Float):Float;
	
}

