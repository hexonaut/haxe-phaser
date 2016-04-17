package phaser.math;

@:native("Phaser.RandomDataGenerator")
extern class RandomDataGenerator {
	
	/**
	 * An extremely useful repeatable random data generator.
	 * 
	 * Based on Nonsense by Josh Faul <a href='https://github.com/jocafa/Nonsense'>https://github.com/jocafa/Nonsense</a>.
	 * 
	 * The random number genererator is based on the Alea PRNG, but is modified.
	 *  - <a href='https://github.com/coverslide/node-alea'>https://github.com/coverslide/node-alea</a>
	 *  - <a href='https://github.com/nquinlan/better-random-numbers-for-javascript-mirror'>https://github.com/nquinlan/better-random-numbers-for-javascript-mirror</a>
	 *  - <a href='http://baagoe.org/en/wiki/Better_random_numbers_for_javascript'>http://baagoe.org/en/wiki/Better_random_numbers_for_javascript</a> (original, perm. 404)
	 */
	@:overload(function (?seeds:Dynamic):Void {})
	function new (?seeds:String);
	
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
	 * 
	 * <em>Note</em>: the seed array is only processed up to the first undefined (or null) value, should such be present.
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
	 * Returns a sign to be used with multiplication operator.
	 */
	function sign ():Float;
	
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
	
	/**
	 * Gets or Sets the state of the generator. This allows you to retain the values
	 * that the generator is using between games, i.e. in a game save file.
	 * 
	 * To seed this generator with a previously saved state you can pass it as the 
	 * seed value in your game config, or call this method directly after Phaser has booted.
	 * 
	 * Call this method with no parameters to return the current state.
	 * 
	 * If providing a state it should match the same format that this method
	 * returns, which is a string with a header !rnd followed by the c,
	 * s0, s1 and s2 values respectively, each comma-delimited. 
	 */
	function state (?state:String):String;
	
}
