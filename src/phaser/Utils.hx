package phaser;

import haxe.extern.EitherType;
import haxe.extern.Rest;

@:native("Phaser.Utils")
extern class Utils {

	/**
	* Gets an objects property by string.
	* 
	* @param obj The object to traverse.
	* @param prop The property whose value will be returned.
	* @return the value of the property or null if property isn't found .
	*/
	static function getProperty(obj:Dynamic, prop:String):Dynamic;
	
	/**
	* Sets an objects property by string.
	* 
	* @param obj The object to traverse
	* @param prop The property whose value will be changed
	* @return The object on which the property was set.
	*/
	static function setProperty(obj:Dynamic, prop:String, value:Dynamic):Dynamic;
	
	/**
	* Generate a random bool result based on the chance value.
	* 
	* Returns true or false based on the chance value (default 50%). For example if you wanted a player to have a 30% chance
	* of getting a bonus, call chanceRoll(30) - true means the chance passed, false means it failed.
	* 
	* @param chance The chance of receiving the value. A number between 0 and 100 (effectively 0% to 100%).
	* @return True if the roll passed, or false otherwise.
	*/
	static function chanceRoll(chance:Float):Bool;
	
	/**
	* Choose between one of two values randomly.
	* 
	* @param choice1 
	* @param choice2 
	* @return The randomly selected choice
	*/
	static function randomChoice(choice1:EitherType<String, Float>, choice2:Dynamic):Dynamic;
	
	/**
	* Takes the given string and reverses it, returning the reversed string.
	* For example if given the string `Atari 520ST` it would return `TS025 iratA`.
	* 
	* @param string The string to be reversed.
	* @return The reversed string.
	*/
	static function reverseString(string:String):String;
	
	/**
	* Get a unit dimension from a string.
	* 
	* @param size The size to parse.
	* @param dimension The window dimension to check.
	* @return The parsed dimension.
	*/
	static function parseDimension(size:Dynamic, dimension:Float):Float;
	
	/**
	* Takes the given string and pads it out, to the length required, using the character
	* specified. For example if you need a string to be 6 characters long, you can call:
	* 
	* `pad('bob', 6, '-', 2)`
	* 
	* This would return: `bob---` as it has padded it out to 6 characters, using the `-` on the right.
	* 
	* You can also use it to pad numbers (they are always returned as strings):
	* 
	* `pad(512, 6, '0', 1)`
	* 
	* Would return: `000512` with the string padded to the left.
	* 
	* If you don't specify a direction it'll pad to both sides:
	* 
	* `pad('c64', 7, '*')`
	* 
	* Would return: `**c64**`
	* 
	* @param str The target string. `toString()` will be called on the string, which means you can also pass in common data types like numbers.
	* @param len The number of characters to be added.
	* @param pad The string to pad it out with (defaults to a space). - Default: " "
	* @param dir The direction dir = 1 (left), 2 (right), 3 (both). - Default: 3
	* @return The padded string.
	*/
	static function pad(str:String, ?len:Float, ?pad:String, ?dir:Float):String;
	
	/**
	* This is a slightly modified version of jQuery.isPlainObject.
	* A plain object is an object whose internal class property is [object Object].
	* 
	* @param obj The object to inspect.
	* @return - true if the object is plain, otherwise false.
	*/
	static function isPlainObject(object:Dynamic):Bool;
	
	/**
	* This is a slightly modified version of http://api.jquery.com/jQuery.extend/
	* 
	* @param deep Perform a deep copy?
	* @param target The target object to copy to.
	* @return The extended object.
	*/
	static function extend(deep:Bool, target:Dynamic, args:Rest<Dynamic>):Dynamic;
	
	/**
	* Mixes in an existing mixin object with the target.
	* 
	* Values in the mixin that have either `get` or `set` functions are created as properties via `defineProperty`
	* _except_ if they also define a `clone` method - if a clone method is defined that is called instead and
	* the result is assigned directly.
	* 
	* @param target The target object to receive the new functions.
	* @param mixin The object to copy the functions from.
	* @param replace If the target object already has a matching function should it be overwritten or not?
	*/
	static function mixinPrototype(target:Dynamic, mixin:Dynamic, ?replace:Bool):Void;
	
	/**
	* Mixes the source object into the destination object, returning the newly modified destination object.
	* Based on original code by @mudcube
	* 
	* @param from The object to copy (the source object).
	* @param to The object to copy to (the destination object).
	* @return The modified destination object.
	*/
	static function mixin<T>(from:T, to:Dynamic):T;
	
}

