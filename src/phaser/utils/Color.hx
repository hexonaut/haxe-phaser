package phaser.utils;

@:native("Phaser.Color")
extern class Color {
	
	/**
	 * Given an alpha and 3 color values this will return an integer representation of it.
	 */
	static function getColor32 (alpha:Float, red:Float, green:Float, blue:Float):Float;
	
	/**
	 * Given 3 color values this will return an integer representation of it.
	 */
	static function getColor (red:Float, green:Float, blue:Float):Float;
	
	/**
	 * Converts the given hex string into an integer color value.
	 */
	static function hexToRGB (h:String):Float;
	
	/**
	 * Returns a string containing handy information about the given color including string hex value,
	 * RGB format information and HSL information. Each section starts on a newline, 3 lines in total.
	 */
	static function getColorInfo (color:Float):String;
	
	/**
	 * Return a string representation of the color in the format 0xAARRGGBB.
	 */
	static function RGBtoHexstring (color:Float):String;
	
	/**
	 * Return a string representation of the color in the format #RRGGBB.
	 */
	static function RGBtoWebstring (color:Float):String;
	
	/**
	 * Return a string containing a hex representation of the given color.
	 */
	static function colorToHexstring (color:Float):String;
	
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
	 * Return the component parts of a color as an Object with the properties alpha, red, green, blue
	 * 
	 * Alpha will only be set if it exist in the given color (0xAARRGGBB)
	 */
	static function getRGB (color:Float):Dynamic;
	
	/**
	 * Returns a CSS friendly string value from the given color.
	 */
	static function getWebRGB (color:Float):String;
	
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
	
}
