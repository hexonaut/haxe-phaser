package phaser.math;

@:native("Phaser.RandomDataGenerator")
extern class RandomDataGenerator {
	
	/**
	 * An extremely useful repeatable random data generator.
	 * Based on Nonsense by Josh Faul <a href='https://github.com/jocafa/Nonsense'>https://github.com/jocafa/Nonsense</a>.
	 * Random number generator from <a href='http://baagoe.org/en/wiki/Better_random_numbers_for_javascript'>http://baagoe.org/en/wiki/Better_random_numbers_for_javascript</a>
	 */
	function new (?seeds:Dynamic);
	
	/**
	 * Internal var.
	 */
	var c:Float;
	
	/**
	 * Internal var.
	 */
	var s0:Float;
	
	/**
	 * Internal var.
	 */
	var s1:Float;
	
	/**
	 * Internal var.
	 */
	var s2:Float;
	
	/**
	 * Private random helper.
	 */
	function rnd ():Float;
	
	/**
	 * Reset the seed of the random data generator.
	 */
	function sow (seeds:Dynamic):Void;
	
	/**
	 * Internal method that creates a seed hash.
	 */
	function hash (data:Dynamic):Float;
	
	/**
	 * Returns a random integer between 0 and 2^32.
	 */
	function integer ():Float;
	
	/**
	 * Returns a random real number between 0 and 1.
	 */
	function frac ():Float;
	
	/**
	 * Returns a random real number between 0 and 2^32.
	 */
	function real ():Float;
	
	/**
	 * Returns a random integer between and including min and max.
	 */
	function integerInRange (min:Float, max:Float):Float;
	
	/**
	 * Returns a random integer between and including min and max.
	 * This method is an alias for RandomDataGenerator.integerInRange.
	 */
	function between (min:Float, max:Float):Float;
	
	/**
	 * Returns a random real number between min and max.
	 */
	function realInRange (min:Float, max:Float):Float;
	
	/**
	 * Returns a random real number between -1 and 1.
	 */
	function normal ():Float;
	
	/**
	 * Returns a valid RFC4122 version4 ID hex string from <a href='https://gist.github.com/1308368'>https://gist.github.com/1308368</a>
	 */
	function uuid ():String;
	
	/**
	 * Returns a random member of array.
	 */
	function pick (ary:Array<Dynamic>):Dynamic;
	
	/**
	 * Returns a random member of array, favoring the earlier entries.
	 */
	function weightedPick (ary:Array<Dynamic>):Dynamic;
	
	/**
	 * Returns a random timestamp between min and max, or between the beginning of 2000 and the end of 2020 if min and max aren't specified.
	 */
	function timestamp (min:Float, max:Float):Float;
	
	/**
	 * Returns a random angle between -180 and 180.
	 */
	function angle ():Float;
	
}
