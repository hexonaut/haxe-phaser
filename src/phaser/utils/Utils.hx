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
	 * Get a unit dimension from a string.
	 */
	@:overload(function (size:String, dimension:Float):Float {})
	function parseDimension (size:Float, dimension:Float):Float;
	
	/**
	 * JavaScript string pad <a href='http://www.webtoolkit.info/'>http://www.webtoolkit.info/</a>.
	 */
	function pad (str:String, ?len:Int = 0, ?pad:String, ?dir:Int = 3):String;
	
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
	 * Mixes in an existing mixin object with the target.
	 * 
	 * Values in the mixin that have either get or set functions are created as properties via defineProperty
	 * <em>except</em> if they also define a clone method - if a clone method is defined that is called instead and
	 * the result is assigned directly.
	 */
	function mixinPrototype (target:Dynamic, mixin:Dynamic, ?replace:Bool = false):Void;
	
	/**
	 * Mixes the source object into the destination object, returning the newly modified destination object.
	 * Based on original code by @mudcube
	 */
	function mixin (from:Dynamic, to:Dynamic):Dynamic;
	
}
