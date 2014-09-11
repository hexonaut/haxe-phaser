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
	 * Transposes the elements of the given Array.
	 */
	function transposeArray (array:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * Rotates the given array.
	 * Based on the routine from <a href='http://jsfiddle.net/MrPolywhirl/NH42z/'>http://jsfiddle.net/MrPolywhirl/NH42z/</a>
	 */
	@:overload(function (matrix:Array<Dynamic>, direction:Float):Array<Dynamic> {})
	function rotateArray (matrix:Array<Dynamic>, direction:String):Array<Dynamic>;
	
	/**
	 * Get a unit dimension from a string.
	 */
	@:overload(function (size:String, dimension:Float):Float {})
	function parseDimension (size:Float, dimension:Float):Float;
	
	/**
	 * A standard Fisher-Yates Array shuffle implementation.
	 */
	function shuffle (array:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * Javascript string pad <a href='http://www.webtoolkit.info/'>http://www.webtoolkit.info/</a>.
	 * pad = the string to pad it out with (defaults to a space)
	 * dir = 1 (left), 2 (right), 3 (both)
	 */
	function pad (str:String, len:Float, pad:Float, ?dir:Float = 3):String;
	
	/**
	 * This is a slightly modified version of jQuery.isPlainObject. A plain object is an object whose internal class property is [object Object].
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
	
	/**
	 * jshint freeze: false
	 */
	var bind:Dynamic;
	
}
