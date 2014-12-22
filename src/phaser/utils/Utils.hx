package phaser.utils;

@:native("")
extern class Utils {
	
	/**
	 * @class Phaser.Utils
	 */
	static var Utils:Dynamic;
	
	/**
	 * Gets an objects property by string.
	 */
	function getProperty (obj:Dynamic, prop:String):Dynamic;
	
	/**
	 * Sets an objects property by string.
	 */
	function setProperty (obj:Dynamic, prop:String):Dynamic;
	
	/**
	 * Generate a random bool result based on the chance value.
	 * 
	 * Returns true or false based on the chance value (default 50%). For example if you wanted a player to have a 30% chance
	 * of getting a bonus, call chanceRoll(30) - true means the chance passed, false means it failed.
	 */
	function chanceRoll (chance:Float):Bool;
	
	/**
	 * Choose between one of two values randomly.
	 */
	function randomChoice (choice1:Dynamic, choice2:Dynamic):Dynamic;
	
	/**
	 * Transposes the elements of the given matrix (array of arrays).
	 */
	function transposeArray (array:Dynamic):Dynamic;
	
	/**
	 * Rotates the given matrix (array of arrays).
	 * 
	 * Based on the routine from {@link <a href='http://jsfiddle.net/MrPolywhirl/NH42z/}'>http://jsfiddle.net/MrPolywhirl/NH42z/}</a>.
	 */
	@:overload(function (matrix:Dynamic, direction:Float):Dynamic {})
	function rotateArray (matrix:Dynamic, direction:String):Dynamic;
	
	/**
	 * A standard Fisher-Yates Array shuffle implementation.
	 */
	function shuffle (array:Dynamic):Dynamic;
	
	/**
	 * Get a unit dimension from a string.
	 */
	@:overload(function (size:String, dimension:Float):Float {})
	function parseDimension (size:Float, dimension:Float):Float;
	
	/**
	 * Javascript string pad <a href='http://www.webtoolkit.info/'>http://www.webtoolkit.info/</a>.
	 */
	function pad (str:String, len:Float, pad:Float, ?dir:Float = 3):String;
	
	/**
	 * This is a slightly modified version of jQuery.isPlainObject.
	 * A plain object is an object whose internal class property is [object Object].
	 */
	function isPlainObject (obj:Dynamic):Bool;
	
	/**
	 * This is a slightly modified version of <a href='http://api.jquery.com/jQuery.extend/'>http://api.jquery.com/jQuery.extend/</a>
	 */
	function extend (deep:Bool, target:Dynamic):Dynamic;
	
	/**
	 * Mixes the source object into the destination object, returning the newly modified destination object.
	 * Based on original code by @mudcube
	 */
	function mixin (from:Dynamic, to:Dynamic):Dynamic;
	
}
