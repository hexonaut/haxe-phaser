package phaser.utils;

@:native("Phaser.Color")
extern class Color {
	
	/**
	 * Packs the r, g, b, a components into a single integer, for use with Int32Array.
	 * If device is little endian then ABGR order is used. Otherwise RGBA order is used.
	 */
	static function packPixel (r:Float, g:Float, b:Float, a:Float):Float;
	
	/**
	 * Unpacks the r, g, b, a components into the specified color object, or a new
	 * object, for use with Int32Array. If little endian, then ABGR order is used when
	 * unpacking, otherwise, RGBA order is used. The resulting color object has the
	 * r, g, b, a properties which are unrelated to endianness.
	 * 
	 * Note that the integer is assumed to be packed in the correct endianness. On little-endian
	 * the format is 0xAABBGGRR and on big-endian the format is 0xRRGGBBAA. If you want a
	 * endian-independent method, use fromRGBA(rgba) and toRGBA(r, g, b, a).
	 */
	static function unpackPixel (rgba:Float, ?out:Dynamic, ?hsl:Bool = false, ?hsv:Bool = false):Dynamic;
	
	/**
	 * A utility to convert an integer in 0xRRGGBBAA format to a color object.
	 * This does not rely on endianness.
	 */
	static function fromRGBA (rgba:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * A utility to convert RGBA components to a 32 bit integer in RRGGBBAA format.
	 */
	static function toRGBA (r:Float, g:Float, b:Float, a:Float):Float;
	
	/**
	 * Converts an RGB color value to HSL (hue, saturation and lightness).
	 * Conversion forumla from <a href='http://en.wikipedia.org/wiki/HSL_color_space'>http://en.wikipedia.org/wiki/HSL_color_space</a>.
	 * Assumes RGB values are contained in the set [0, 255] and returns h, s and l in the set [0, 1].
	 * Based on code by Michael Jackson (<a href='https://github.com/mjijackson'>https://github.com/mjijackson</a>)
	 */
	static function RGBtoHSL (r:Float, g:Float, b:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * Converts an HSL (hue, saturation and lightness) color value to RGB.
	 * Conversion forumla from <a href='http://en.wikipedia.org/wiki/HSL_color_space'>http://en.wikipedia.org/wiki/HSL_color_space</a>.
	 * Assumes HSL values are contained in the set [0, 1] and returns r, g and b values in the set [0, 255].
	 * Based on code by Michael Jackson (<a href='https://github.com/mjijackson'>https://github.com/mjijackson</a>)
	 */
	static function HSLtoRGB (h:Float, s:Float, l:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * Converts an RGB color value to HSV (hue, saturation and value).
	 * Conversion forumla from <a href='http://en.wikipedia.org/wiki/HSL_color_space'>http://en.wikipedia.org/wiki/HSL_color_space</a>.
	 * Assumes RGB values are contained in the set [0, 255] and returns h, s and v in the set [0, 1].
	 * Based on code by Michael Jackson (<a href='https://github.com/mjijackson'>https://github.com/mjijackson</a>)
	 */
	static function RGBtoHSV (r:Float, g:Float, b:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * Converts an HSV (hue, saturation and value) color value to RGB.
	 * Conversion forumla from <a href='http://en.wikipedia.org/wiki/HSL_color_space'>http://en.wikipedia.org/wiki/HSL_color_space</a>.
	 * Assumes HSV values are contained in the set [0, 1] and returns r, g and b values in the set [0, 255].
	 * Based on code by Michael Jackson (<a href='https://github.com/mjijackson'>https://github.com/mjijackson</a>)
	 */
	static function HSVtoRGB (h:Float, s:Float, v:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * Converts a hue to an RGB color.
	 * Based on code by Michael Jackson (<a href='https://github.com/mjijackson'>https://github.com/mjijackson</a>)
	 */
	static function hueToColor (p:Float, q:Float, t:Float):Float;
	
	/**
	 * A utility function to create a lightweight 'color' object with the default components.
	 * Any components that are not specified will default to zero.
	 * 
	 * This is useful when you want to use a shared color object for the getPixel and getPixelAt methods.
	 */
	static function createColor (?r:Float = 0, ?g:Float = 0, ?b:Float = 0, ?a:Float = 1, ?h:Float = 0, ?s:Float = 0, ?l:Float = 0, ?v:Float = 0):Dynamic;
	
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
	
	/**
	 * Converts the given color values into a string.
	 * If prefix was '#' it will be in the format #RRGGBB otherwise 0xAARRGGBB.
	 */
	static function RGBtoString (r:Float, g:Float, b:Float, ?a:Float = 255, ?prefix:String = '#'):String;
	
	/**
	 * Converts a hex string into an integer color value.
	 */
	static function hexToRGB (hex:String):Float;
	
	/**
	 * Converts a hex string into a Phaser Color object.
	 * 
	 * The hex string can supplied as '#0033ff' or the short-hand format of '#03f'; it can begin with an optional "#" or "0x", or be unprefixed.    
	 * 
	 * An alpha channel is <em>not</em> supported.
	 */
	static function hexToColor (hex:String, ?out:Dynamic):Dynamic;
	
	/**
	 * Converts a CSS 'web' string into a Phaser Color object.
	 * 
	 * The web string can be in the format 'rgb(r,g,b)' or 'rgba(r,g,b,a)' where r/g/b are in the range [0..255] and a is in the range [0..1].
	 */
	static function webToColor (web:String, ?out:Dynamic):Dynamic;
	
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
	 * Return a string containing a hex representation of the given color component.
	 */
	static function componentToHex (color:Float):String;
	
	/**
	 * Get HSV color wheel values in an array which will be 360 elements in size.
	 */
	static function HSVColorWheel (?s:Float = 1, ?v:Float = 1):Array<Dynamic>;
	
	/**
	 * Get HSL color wheel values in an array which will be 360 elements in size.
	 */
	static function HSLColorWheel (?s:Float = 0.5, ?l:Float = 0.5):Array<Dynamic>;
	
	/**
	 * Interpolates the two given colours based on the supplied step and currentStep properties.
	 */
	static function interpolateColor (color1:Float, color2:Float, steps:Float, currentStep:Float, alpha:Float):Float;
	
	/**
	 * Interpolates the two given colours based on the supplied step and currentStep properties.
	 */
	static function interpolateColorWithRGB (color:Float, r:Float, g:Float, b:Float, steps:Float, currentStep:Float):Float;
	
	/**
	 * Interpolates the two given colours based on the supplied step and currentStep properties.
	 */
	static function interpolateRGB (r1:Float, g1:Float, b1:Float, r2:Float, g2:Float, b2:Float, steps:Float, currentStep:Float):Float;
	
	/**
	 * Returns a random color value between black and white
	 * Set the min value to start each channel from the given offset.
	 * Set the max value to restrict the maximum color used per channel.
	 */
	static function getRandomColor (min:Float, max:Float, alpha:Float):Float;
	
	/**
	 * Return the component parts of a color as an Object with the properties alpha, red, green, blue.
	 * 
	 * Alpha will only be set if it exist in the given color (0xAARRGGBB)
	 */
	static function getRGB (color:Float):Dynamic;
	
	/**
	 * Returns a CSS friendly string value from the given color.
	 */
	@:overload(function (color:Float):String {})
	static function getWebRGB (color:Dynamic):String;
	
	/**
	 * Given a native color value (in the format 0xAARRGGBB) this will return the Alpha component, as a value between 0 and 255.
	 */
	static function getAlpha (color:Float):Float;
	
	/**
	 * Given a native color value (in the format 0xAARRGGBB) this will return the Alpha component as a value between 0 and 1.
	 */
	static function getAlphaFloat (color:Float):Float;
	
	/**
	 * Given a native color value (in the format 0xAARRGGBB) this will return the Red component, as a value between 0 and 255.
	 */
	static function getRed (color:Float):Float;
	
	/**
	 * Given a native color value (in the format 0xAARRGGBB) this will return the Green component, as a value between 0 and 255.
	 */
	static function getGreen (color:Float):Float;
	
	/**
	 * Given a native color value (in the format 0xAARRGGBB) this will return the Blue component, as a value between 0 and 255.
	 */
	static function getBlue (color:Float):Float;
	
	/**
	 * DEPRECATED: This method will be removed in Phaser 2.1.
	 * Returns a string containing handy information about the given color including string hex value,
	 * RGB format information. Each section starts on a newline, 3 lines in total.
	 */
	static function getColorInfo (color:Float):String;
	
	/**
	 * DEPRECATED: This method will be removed in Phaser 2.1. Please use Phaser.Color.RGBtoString instead.
	 * Return a string representation of the color in the format 0xAARRGGBB.
	 */
	static function RGBtoHexstring (color:Float):String;
	
	/**
	 * DEPRECATED: This method will be removed in Phaser 2.1. Please use Phaser.Color.RGBtoString instead.
	 * Return a string representation of the color in the format #RRGGBB.
	 */
	static function RGBtoWebstring (color:Float):String;
	
	/**
	 * DEPRECATED: This method will be removed in Phaser 2.1. Please use Phaser.Color.componentToHex instead.
	 * Return a string containing a hex representation of the given color.
	 */
	static function colorToHexstring (color:Float):String;
	
}
