package phaser.stubs;

@:native("Phaser.Color")
extern class Color {
	
	/**
	 * Converts a value - a "hex" string, a "CSS 'web' string", or a number - into red, green, blue, and alpha components.
	 * 
	 * The value can be a string (see hexToColor and webToColor for the supported formats) or a packed integer (see getRGB).
	 * 
	 * An alpha channel is <em>not</em> supported when specifying a hex string.
	 */
	@:overload(function (value:String, ?out:Dynamic):Dynamic {})
	static function valueToColor (value:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * Return the component parts of a color as an Object with the properties alpha, red, green, blue.
	 * 
	 * Alpha will only be set if it exist in the given color (0xAARRGGBB)
	 */
	static function getRGB (color:Float):Dynamic;
	
	/**
	 * Converts a CSS 'web' string into a Phaser Color object.
	 * 
	 * The web string can be in the format 'rgb(r,g,b)' or 'rgba(r,g,b,a)' where r/g/b are in the range [0..255] and a is in the range [0..1].
	 */
	static function webToColor (web:String, ?out:Dynamic):Dynamic;
	
	/**
	 * Converts a hex string into a Phaser Color object.
	 * 
	 * The hex string can supplied as '#0033ff' or the short-hand format of '#03f'; it can begin with an optional "#" or "0x", or be unprefixed.    
	 * 
	 * An alpha channel is <em>not</em> supported.
	 */
	static function hexToColor (hex:String, ?out:Dynamic):Dynamic;
	
	/**
	 * Takes a color object and updates the rgba property.
	 */
	static function updateColor (out:Dynamic):Float;
	
	/**
	 * Given an alpha and 3 color values this will return an integer representation of it.
	 */
	static function getColor32 (a:Float, r:Float, g:Float, b:Float):Float;
	
	/**
	 * Given 3 color values this will return an integer representation of it.
	 */
	static function getColor (r:Float, g:Float, b:Float):Float;
	
}
