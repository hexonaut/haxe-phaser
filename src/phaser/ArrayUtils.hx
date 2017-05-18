package phaser;

import haxe.extern.EitherType;

/**
* Utility functions for dealing with Arrays.
*/
@:native("Phaser.ArrayUtils")
extern class ArrayUtils {

	/**
	* Fetch a random entry from the given array.
	* 
	* Will return null if there are no array items that fall within the specified range
	* or if there is no item for the randomly chosen index.
	* 
	* @param objects An array of objects.
	* @param startIndex Optional offset off the front of the array. Default value is 0, or the beginning of the array.
	* @param length Optional restriction on the number of values you want to randomly select from.
	* @return The random object that was selected.
	*/
	static function getRandomItem<T>(objects:Array<T>, ?startIndex:Float, ?length:Float):T;
	
	/**
	* Removes a random object from the given array and returns it.
	* 
	* Will return null if there are no array items that fall within the specified range
	* or if there is no item for the randomly chosen index.
	* 
	* @param objects An array of objects.
	* @param startIndex Optional offset off the front of the array. Default value is 0, or the beginning of the array.
	* @param length Optional restriction on the number of values you want to randomly select from.
	* @return The random object that was removed.
	*/
	static function removeRandomItem<T>(objects:Array<T>, ?startIndex:Float, ?length:Float):T;
	
	/**
	* A standard Fisher-Yates Array shuffle implementation which modifies the array in place.
	* 
	* @param array The array to shuffle.
	* @return The original array, now shuffled.
	*/
	static function shuffle<T>(array:Array<T>):Array<T>;
	
	/**
	* Transposes the elements of the given matrix (array of arrays).
	* 
	* @param array The matrix to transpose.
	* @return A new transposed matrix
	*/
	static function transposeMatrix<T>(array:Array<T>):T;
	
	/**
	* Rotates the given matrix (array of arrays).
	* 
	* Based on the routine from {@link http://jsfiddle.net/MrPolywhirl/NH42z/}.
	* 
	* @param matrix The array to rotate; this matrix _may_ be altered.
	* @param direction The amount to rotate: the rotation in degrees (90, -90, 270, -270, 180) or a string command ('rotateLeft', 'rotateRight' or 'rotate180').
	* @return The rotated matrix. The source matrix should be discarded for the returned matrix.
	*/
	static function rotateMatrix(matrix:Dynamic, direction:EitherType<Float, String>):Dynamic;
	
	/**
	* Snaps a value to the nearest value in an array.
	* The result will always be in the range `[first_value, last_value]`.
	* 
	* @param value The search value
	* @param arr The input array which _must_ be sorted.
	* @return The nearest value found.
	*/
	static function findClosest(value:Float, arr:Array<Float>):Float;
	
	/**
	* Moves the element from the start of the array to the end, shifting all items in the process.
	* The "rotation" happens to the left.
	* 
	* Before: `[ A, B, C, D, E, F ]`
	* After: `[ B, C, D, E, F, A ]`
	* 
	* See also Phaser.ArrayUtils.rotateRight
	* 
	* @param array The array to rotate. The array is modified.
	* @return The rotated value.
	*/
	static function rotate(array:Array<Dynamic>):Dynamic;
	
	/**
	* Moves the element from the start of the array to the end, shifting all items in the process.
	* The "rotation" happens to the left.
	* 
	* Before: `[ A, B, C, D, E, F ]`
	* After: `[ B, C, D, E, F, A ]`
	* 
	* See also Phaser.ArrayUtils.rotateRight
	* 
	* @param array The array to rotate. The array is modified.
	* @return The rotated value.
	*/
	static function rotateLeft(array:Array<Dynamic>):Dynamic;
	
	/**
	* Moves the element from the end of the array to the start, shifting all items in the process.
	* The "rotation" happens to the right.
	* 
	* Before: `[ A, B, C, D, E, F ]`
	* After: `[ F, A, B, C, D, E ]`
	* 
	* See also Phaser.ArrayUtils.rotateLeft.
	* 
	* @param array The array to rotate. The array is modified.
	* @return The shifted value.
	*/
	static function rotateRight(array:Array<Dynamic>):Dynamic;
	
	/**
	* Create an array representing the inclusive range of numbers (usually integers) in `[start, end]`.
	* This is equivalent to `numberArrayStep(start, end, 1)`.
	* 
	* @param start The minimum value the array starts with.
	* @param end The maximum value the array contains.
	* @return The array of number values.
	*/
	static function numberArray(start:Float, end:Float):Array<Float>;
	
	/**
	* Create an array of numbers (positive and/or negative) progressing from `start`
	* up to but not including `end` by advancing by `step`.
	* 
	* If `start` is less than `end` a zero-length range is created unless a negative `step` is specified.
	* 
	* Certain values for `start` and `end` (eg. NaN/undefined/null) are currently coerced to 0;
	* for forward compatibility make sure to pass in actual numbers.
	* 
	* @param start The start of the range.
	* @param end The end of the range.
	* @param step The value to increment or decrement by. - Default: 1
	* @return Returns the new array of numbers.
	*/
	static function numberArrayStep(start:Float, ?end:Float, ?step:Float):Array<Float>;
	
}

