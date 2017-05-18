package phaser.plugin;

/**
* A collection of methods useful for manipulating and comparing colors.
*/
@:native("Phaser.Plugin.ColorHarmony")
extern class ColorHarmony extends phaser.Plugin {

	/**
	* Returns an Analogous Color Harmony for the given color.
	* <p>An Analogous harmony are hues adjacent to each other on the color wheel</p>
	* <p>Values returned in 0xAARRGGBB format with Alpha set to 255.</p>
	* 
	* @param color The color to base the harmony on.
	* @param threshold Control how adjacent the colors will be (default +- 30 degrees)
	* @return Object containing 3 properties: color1 (the original color), color2 (the warmer analogous color) and color3 (the colder analogous color)
	*/
	function getAnalogousHarmony(color:Float, ?threshold:Float):Dynamic;
	
	/**
	* Returns a Complementary Color Harmony for the given color.
	* <p>A complementary hue is one directly opposite the color given on the color wheel</p>
	* <p>Value returned in 0xAARRGGBB format with Alpha set to 255.</p>
	* 
	* @param color The color to base the harmony on.
	* @return 0xAARRGGBB format color value.
	*/
	function getComplementHarmony(color:Float):Float;
	
	/**
	* Returns an Split Complement Color Harmony for the given color.
	* <p>A Split Complement harmony are the two hues on either side of the color's Complement</p>
	* <p>Values returned in 0xAARRGGBB format with Alpha set to 255.</p>
	* 
	* @param color The color to base the harmony on
	* @param threshold Control how adjacent the colors will be to the Complement (default +- 30 degrees)
	* @return An object containing 3 properties: color1 (the original color), color2 (the warmer analogous color) and color3 (the colder analogous color)
	*/
	function getSplitComplementHarmony(color:Float, threshold:Float):Dynamic;
	
	/**
	* Returns a Triadic Color Harmony for the given color.
	* <p>A Triadic harmony are 3 hues equidistant from each other on the color wheel</p>
	* <p>Values returned in 0xAARRGGBB format with Alpha set to 255.</p>
	* 
	* @param color The color to base the harmony on.
	* @return An Object containing 3 properties: color1 (the original color), color2 and color3 (the equidistant colors)
	*/
	function getTriadicHarmony(color:Float):Dynamic;
	
}

