package phaser.utils;

@:native("")
extern class Utils {
	
	/**
	 * @class Phaser.Utils
	 */
	static var Utils:Dynamic;
	
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
	 * jshint freeze: false
	 */
	var bind:Dynamic;
	
}
