package phaser.utils;

@:native("Phaser.ArrayUtils")
extern class ArrayUtils {
	
	/**
	 * Moves the element from the start of the array to the end, shifting all items in the process.
	 * The "rotation" happens to the left.
	 */
	function rotate (array:Dynamic):Dynamic;
	
	/**
	 * Create an array representing the inclusive range of numbers (usually integers) in [start, end].
	 * This is equivalent to numberArrayStep(start, end, 1).
	 */
	function numberArray (start:Float, end:Float):Dynamic;
	
	/**
	 * Create an array of numbers (positive and/or negative) progressing from start
	 * up to but not including end by advancing by step.
	 * 
	 * If start is less than stop a zero-length range is created unless a negative step is specified.
	 * 
	 * Certain values for start and end (eg. NaN/undefined/null) are currently coerced to 0;
	 * for forward compatibility make sure to pass in actual numbers.
	 */
	function numberArrayStep (start:Float, end:Float, ?step:Float = 1):Array<Dynamic>;
	
}
