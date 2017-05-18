package phaser;

import haxe.extern.EitherType;

/**
* An extremely useful repeatable random data generator.
* 
* Based on Nonsense by Josh Faul https://github.com/jocafa/Nonsense.
* 
* The random number genererator is based on the Alea PRNG, but is modified.
*   - https://github.com/coverslide/node-alea
*   - https://github.com/nquinlan/better-random-numbers-for-javascript-mirror
*   - http://baagoe.org/en/wiki/Better_random_numbers_for_javascript (original, perm. 404)
*/
@:native("Phaser.RandomDataGenerator")
extern class RandomDataGenerator {

	/**
	* An extremely useful repeatable random data generator.
	* 
	* Based on Nonsense by Josh Faul https://github.com/jocafa/Nonsense.
	* 
	* The random number genererator is based on the Alea PRNG, but is modified.
	*   - https://github.com/coverslide/node-alea
	*   - https://github.com/nquinlan/better-random-numbers-for-javascript-mirror
	*   - http://baagoe.org/en/wiki/Better_random_numbers_for_javascript (original, perm. 404)
	* 
	* @param seeds An array of values to use as the seed, or a generator state (from {#state}).
	*/
	function new(?seeds:EitherType<Array<Dynamic>, String>);
	
	/**
	* Returns a random angle between -180 and 180.
	* 
	* @return A random number between -180 and 180.
	*/
	function angle():Float;
	
	/**
	* Returns a random integer between and including min and max.
	* This method is an alias for RandomDataGenerator.integerInRange.
	* 
	* @param min The minimum value in the range.
	* @param max The maximum value in the range.
	* @return A random number between min and max.
	*/
	function between(min:Float, max:Float):Float;
	
	/**
	* Returns a random real number between 0 and 1.
	* 
	* @return A random real number between 0 and 1.
	*/
	function frac():Float;
	
	/**
	* Returns a random integer between 0 and 2^32.
	* 
	* @return A random integer between 0 and 2^32.
	*/
	function integer():Float;
	
	/**
	* Returns a random integer between and including min and max.
	* 
	* @param min The minimum value in the range.
	* @param max The maximum value in the range.
	* @return A random number between min and max.
	*/
	function integerInRange(min:Float, max:Float):Float;
	
	/**
	* Returns a random real number between -1 and 1.
	* 
	* @return A random real number between -1 and 1.
	*/
	function normal():Float;
	
	/**
	* Returns a random member of `array`.
	* 
	* @param ary An Array to pick a random member of.
	* @return A random member of the array.
	*/
	function pick<T>(ary:Array<T>):T;
	
	/**
	* Returns a random real number between 0 and 2^32.
	* 
	* @return A random real number between 0 and 2^32.
	*/
	function real():Float;
	
	/**
	* Returns a random real number between min and max.
	* 
	* @param min The minimum value in the range.
	* @param max The maximum value in the range.
	* @return A random number between min and max.
	*/
	function realInRange(min:Float, max:Float):Float;
	
	/**
	* Returns a sign to be used with multiplication operator.
	* 
	* @return -1 or +1.
	*/
	function sign():Float;
	
	/**
	* Reset the seed of the random data generator.
	* 
	* _Note_: the seed array is only processed up to the first `undefined` (or `null`) value, should such be present.
	* 
	* @param seeds The array of seeds: the `toString()` of each value is used.
	*/
	function sow(seeds:Array<Dynamic>):Void;
	
	/**
	* Gets or Sets the state of the generator. This allows you to retain the values
	* that the generator is using between games, i.e. in a game save file.
	* 
	* To seed this generator with a previously saved state you can pass it as the
	* `seed` value in your game config, or call this method directly after Phaser has booted.
	* 
	* Call this method with no parameters to return the current state.
	* 
	* If providing a state it should match the same format that this method
	* returns, which is a string with a header `!rnd` followed by the `c`,
	* `s0`, `s1` and `s2` values respectively, each comma-delimited.
	* 
	* @param state Generator state to be set.
	* @return The current state of the generator.
	*/
	function state(?state:String):String;
	
	/**
	* Returns a random timestamp between min and max, or between the beginning of 2000 and the end of 2020 if min and max aren't specified.
	* 
	* @param min The minimum value in the range.
	* @param max The maximum value in the range.
	* @return A random timestamp between min and max.
	*/
	function timestamp(min:Float, max:Float):Float;
	
	/**
	* Returns a valid RFC4122 version4 ID hex string from https://gist.github.com/1308368
	* 
	* @return A valid RFC4122 version4 ID hex string
	*/
	function uuid():String;
	
	/**
	* Returns a random member of `array`, favoring the earlier entries.
	* 
	* @param ary An Array to pick a random member of.
	* @return A random member of the array.
	*/
	function weightedPick<T>(ary:Array<T>):T;
	
}

