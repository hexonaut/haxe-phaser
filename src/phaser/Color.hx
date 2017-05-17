package phaser;

import haxe.extern.EitherType;

/**
* The Phaser.Color class is a set of static methods that assist in color manipulation and conversion.
*/
@:native("Phaser.Color")
extern class Color {

	/**
	* Return a string containing a hex representation of the given color component.
	* 
	* @param color The color channel to get the hex value for, must be a value between 0 and 255.
	* @return A string of length 2 characters, i.e. 255 = ff, 100 = 64.
	*/
	static function componentToHex(color:Float):String;
	
	/**
	* A utility function to create a lightweight 'color' object with the default components.
	* Any components that are not specified will default to zero.
	* 
	* This is useful when you want to use a shared color object for the getPixel and getPixelAt methods.
	* 
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @param a The alpha color component, in the range 0 - 1. - Default: 1
	* @param h The hue, in the range 0 - 1.
	* @param s The saturation, in the range 0 - 1.
	* @param l The lightness, in the range 0 - 1.
	* @param v The value, in the range 0 - 1.
	* @return The resulting object with r, g, b, a properties and h, s, l and v.
	*/
	static function createColor(?r:Float, ?g:Float, ?b:Float, ?a:Float, ?h:Float, ?s:Float, ?l:Float, ?v:Float):ColorComponents;
	
	/**
	* A utility to convert an integer in 0xRRGGBBAA format to a color object.
	* This does not rely on endianness.
	* 
	* @param rgba An RGBA hex
	* @param out The object to use, optional.
	* @return A color object.
	*/
	static function fromRGBA(rgba:Float, ?out:ColorComponents):ColorComponents;
	
	/**
	* Given a native color value (in the format 0xAARRGGBB) this will return the Alpha component, as a value between 0 and 255.
	* 
	* @param color In the format 0xAARRGGBB.
	* @return The Alpha component of the color, will be between 0 and 1 (0 being no Alpha (opaque), 1 full Alpha (transparent)).
	*/
	static function getAlpha(color:Float):Float;
	
	/**
	* Given a native color value (in the format 0xAARRGGBB) this will return the Alpha component as a value between 0 and 1.
	* 
	* @param color In the format 0xAARRGGBB.
	* @return The Alpha component of the color, will be between 0 and 1 (0 being no Alpha (opaque), 1 full Alpha (transparent)).
	*/
	static function getAlphaFloat(color:Float):Float;
	
	/**
	* Given a native color value (in the format 0xAARRGGBB) this will return the Blue component, as a value between 0 and 255.
	* 
	* @param color In the format 0xAARRGGBB.
	* @return The Blue component of the color, will be between 0 and 255 (0 being no color, 255 full Blue).
	*/
	static function getBlue(color:Float):Float;
	
	/**
	* Given 3 color values this will return an integer representation of it.
	* 
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @return A native color value integer (format: 0xRRGGBB).
	*/
	static function getColor(red:Float, green:Float, blue:Float):Float;
	
	/**
	* Given an alpha and 3 color values this will return an integer representation of it.
	* 
	* @param a The alpha color component, in the range 0 - 255.
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @return A native color value integer (format: 0xAARRGGBB).
	*/
	static function getColor32(alpha:Float, red:Float, green:Float, blue:Float):Float;
	
	/**
	* Given a native color value (in the format 0xAARRGGBB) this will return the Green component, as a value between 0 and 255.
	* 
	* @param color In the format 0xAARRGGBB.
	* @return The Green component of the color, will be between 0 and 255 (0 being no color, 255 full Green).
	*/
	static function getGreen(color:Float):Float;
	
	/**
	* Returns a random color value between black and white
	* Set the min value to start each channel from the given offset.
	* Set the max value to restrict the maximum color used per channel.
	* 
	* @param min The lowest value to use for the color.
	* @param max The highest value to use for the color. - Default: 255
	* @param alpha The alpha value of the returning color (default 255 = fully opaque). - Default: 255
	* @return 32-bit color value with alpha.
	*/
	static function getRandomColor(?min:Float, ?max:Float, ?alpha:Float):Float;
	
	/**
	* Given a native color value (in the format 0xAARRGGBB) this will return the Red component, as a value between 0 and 255.
	* 
	* @param color In the format 0xAARRGGBB.
	* @return The Red component of the color, will be between 0 and 255 (0 being no color, 255 full Red).
	*/
	static function getRed(color:Float):Float;
	
	/**
	* Return the component parts of a color as an Object with the properties alpha, red, green, blue.
	* 
	* Alpha will only be set if it exist in the given color (0xAARRGGBB)
	* 
	* @param color Color in RGB (0xRRGGBB) or ARGB format (0xAARRGGBB).
	* @return An Object with properties: alpha, red, green, blue (also r, g, b and a). Alpha will only be present if a color value > 16777215 was given.
	*/
	static function getRGB(color:Float):RGBColor;
	
	/**
	* Returns a CSS friendly string value from the given color.
	* 
	* @param color Color in RGB (0xRRGGBB), ARGB format (0xAARRGGBB) or an Object with r, g, b, a properties.
	* @return A string in the format: 'rgba(r,g,b,a)'
	*/
	static function getWebRGB(color:EitherType<Float, RGBColor>):String;
	
	/**
	* Converts a hex color value to an [R, G, B] array.
	* 
	* @param color The color to convert to an RGB array. In the format 0xRRGGBB.
	* @return An array with element 0 containing the Red value, 1 containing Green, and 2 containing Blue.
	*/
	static function hexToRGBArray(color:Float):Array<Float>;
	
	/**
	* Converts a hex string into an integer color value.
	* 
	* @param hex The hex string to convert. Can be in the short-hand format `#03f` or `#0033ff`.
	* @return The rgb color value in the format 0xAARRGGBB.
	*/
	static function hexToRGB(h:String):Float;
	
	/**
	* Converts a hex string into a Phaser Color object.
	* 
	* The hex string can supplied as `'#0033ff'` or the short-hand format of `'#03f'`; it can begin with an optional "#" or "0x", or be unprefixed.
	* 
	* An alpha channel is _not_ supported.
	* 
	* @param hex The color string in a hex format.
	* @param out An object into which 3 properties will be created or set: r, g and b. If not provided a new object will be created.
	* @return An object with the red, green and blue values set in the r, g and b properties.
	*/
	static function hexToColor(hex:String, ?out:ColorComponents):ColorComponents;
	
	/**
	* Converts an HSL (hue, saturation and lightness) color value to RGB.
	* Conversion forumla from http://en.wikipedia.org/wiki/HSL_color_space.
	* Assumes HSL values are contained in the set [0, 1] and returns r, g and b values in the set [0, 255].
	* Based on code by Michael Jackson (https://github.com/mjijackson)
	* 
	* @param h The hue, in the range 0 - 1.
	* @param s The saturation, in the range 0 - 1.
	* @param l The lightness, in the range 0 - 1.
	* @param out An object into which 3 properties will be created: r, g and b. If not provided a new object will be created.
	* @return An object with the red, green and blue values set in the r, g and b properties.
	*/
	static function HSLtoRGB(h:Float, s:Float, l:Float, ?out:ColorComponents):ColorComponents;
	
	/**
	* Get HSL color wheel values in an array which will be 360 elements in size.
	* 
	* @param s The saturation, in the range 0 - 1. - Default: 0.5
	* @param l The lightness, in the range 0 - 1. - Default: 0.5
	* @return An array containing 360 elements corresponding to the HSL color wheel.
	*/
	static function HSLColorWheel(?s:Float, ?l:Float):Array<ColorComponents>;
	
	/**
	* Converts an HSV (hue, saturation and value) color value to RGB.
	* Conversion forumla from http://en.wikipedia.org/wiki/HSL_color_space.
	* Assumes HSV values are contained in the set [0, 1] and returns r, g and b values in the set [0, 255].
	* Based on code by Michael Jackson (https://github.com/mjijackson)
	* 
	* @param h The hue, in the range 0 - 1.
	* @param s The saturation, in the range 0 - 1.
	* @param v The value, in the range 0 - 1.
	* @param out An object into which 3 properties will be created: r, g and b. If not provided a new object will be created.
	* @return An object with the red, green and blue values set in the r, g and b properties.
	*/
	static function HSVtoRGB(h:Float, s:Float, v:Float, ?out:ColorComponents):ColorComponents;
	
	/**
	* Get HSV color wheel values in an array which will be 360 elements in size.
	* 
	* @param s The saturation, in the range 0 - 1. - Default: 1
	* @param v The value, in the range 0 - 1. - Default: 1
	* @return An array containing 360 elements corresponding to the HSV color wheel.
	*/
	static function HSVColorWheel(?s:Float, ?v:Float):Array<ColorComponents>;
	
	/**
	* Converts a hue to an RGB color.
	* Based on code by Michael Jackson (https://github.com/mjijackson)
	* 
	* @param p 
	* @param q 
	* @param t 
	* @return The color component value.
	*/
	static function hueToColor(p:Float, q:Float, t:Float):Float;
	
	/**
	* Interpolates the two given colours based on the supplied step and currentStep properties.
	* 
	* @param color1 The first color value.
	* @param color2 The second color value.
	* @param steps The number of steps to run the interpolation over.
	* @param currentStep The currentStep value. If the interpolation will take 100 steps, a currentStep value of 50 would be half-way between the two.
	* @param alpha The alpha of the returned color.
	* @return The interpolated color value.
	*/
	static function interpolateColor(color1:Float, color2:Float, steps:Float, currentStep:Float, ?alpha:Float):Float;
	
	/**
	* Interpolates the two given colours based on the supplied step and currentStep properties.
	* 
	* @param color The first color value.
	* @param r The red color value, between 0 and 0xFF (255).
	* @param g The green color value, between 0 and 0xFF (255).
	* @param b The blue color value, between 0 and 0xFF (255).
	* @param steps The number of steps to run the interpolation over.
	* @param currentStep The currentStep value. If the interpolation will take 100 steps, a currentStep value of 50 would be half-way between the two.
	* @return The interpolated color value.
	*/
	static function interpolateColorWithRGB(color:Float, r:Float, g:Float, b:Float, steps:Float, currentStep:Float):Float;
	
	/**
	* Interpolates the two given colours based on the supplied step and currentStep properties.
	* 
	* @param r1 The red color value, between 0 and 0xFF (255).
	* @param g1 The green color value, between 0 and 0xFF (255).
	* @param b1 The blue color value, between 0 and 0xFF (255).
	* @param r2 The red color value, between 0 and 0xFF (255).
	* @param g2 The green color value, between 0 and 0xFF (255).
	* @param b2 The blue color value, between 0 and 0xFF (255).
	* @param steps The number of steps to run the interpolation over.
	* @param currentStep The currentStep value. If the interpolation will take 100 steps, a currentStep value of 50 would be half-way between the two.
	* @return The interpolated color value.
	*/
	static function interpolateRGB(r1:Float, g1:Float, b1:Float, r2:Float, g2:Float, b2:Float, steps:Float, currentStep:Float):Float;
	
	/**
	* Packs the r, g, b, a components into a single integer, for use with Int32Array.
	* If device is little endian then ABGR order is used. Otherwise RGBA order is used.
	* 
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @param a The alpha color component, in the range 0 - 255.
	* @return The packed color as uint32
	*/
	static function packPixel(r:Float, g:Float, b:Float, a:Float):Float;
	
	/**
	* Converts an RGB color array, in the format: [R, G, B], to a hex color value.
	* 
	* @param rgb An array with element 0 containing the Red value, 1 containing Green, and 2 containing Blue.
	* @return The color value, in the format 0xRRGGBB.
	*/
	static function RGBArrayToHex(rgb:Array<Float>):Float;
	
	/**
	* Converts an RGB color value to HSL (hue, saturation and lightness).
	* Conversion forumla from http://en.wikipedia.org/wiki/HSL_color_space.
	* Assumes RGB values are contained in the set [0, 255] and returns h, s and l in the set [0, 1].
	* Based on code by Michael Jackson (https://github.com/mjijackson)
	* 
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @param out An object into which 3 properties will be created, h, s and l. If not provided a new object will be created.
	* @return An object with the hue, saturation and lightness values set in the h, s and l properties.
	*/
	static function RGBtoHSL(r:Float, g:Float, b:Float, ?out:ColorComponents):ColorComponents;
	
	/**
	* Converts an RGB color value to HSV (hue, saturation and value).
	* Conversion forumla from http://en.wikipedia.org/wiki/HSL_color_space.
	* Assumes RGB values are contained in the set [0, 255] and returns h, s and v in the set [0, 1].
	* Based on code by Michael Jackson (https://github.com/mjijackson)
	* 
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @param out An object into which 3 properties will be created, h, s and v. If not provided a new object will be created.
	* @return An object with the hue, saturation and value set in the h, s and v properties.
	*/
	static function RGBtoHSV(r:Float, g:Float, b:Float, ?out:ColorComponents):ColorComponents;
	
	/**
	* Converts the given color values into a string.
	* If prefix was '#' it will be in the format `#RRGGBB` otherwise `0xAARRGGBB`.
	* 
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @param a The alpha color component, in the range 0 - 255. - Default: 255
	* @param prefix The prefix used in the return string. If '#' it will return `#RRGGBB`, else `0xAARRGGBB`. - Default: '#'
	* @return A string containing the color values. If prefix was '#' it will be in the format `#RRGGBB` otherwise `0xAARRGGBB`.
	*/
	static function RGBtoString(r:Float, g:Float, b:Float, ?a:Float, ?prefix:String):String;
	
	/**
	* A utility to convert RGBA components to a 32 bit integer in RRGGBBAA format.
	* 
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @param a The alpha color component, in the range 0 - 255.
	* @return A RGBA-packed 32 bit integer
	*/
	static function toRGBA(r:Float, g:Float, b:Float, a:Float):Float;
	
	/**
	* Converts RGBA components to a 32 bit integer in AABBGGRR format.
	* 
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @param a The alpha color component, in the range 0 - 255.
	* @return A RGBA-packed 32 bit integer
	*/
	static function toABGR(r:Float, g:Float, b:Float, a:Float):Float;
	
	/**
	* Unpacks the r, g, b, a components into the specified color object, or a new
	* object, for use with Int32Array. If little endian, then ABGR order is used when
	* unpacking, otherwise, RGBA order is used. The resulting color object has the
	* `r, g, b, a` properties which are unrelated to endianness.
	* 
	* Note that the integer is assumed to be packed in the correct endianness. On little-endian
	* the format is 0xAABBGGRR and on big-endian the format is 0xRRGGBBAA. If you want a
	* endian-independent method, use fromRGBA(rgba) and toRGBA(r, g, b, a).
	* 
	* @param rgba The integer, packed in endian order by packPixel.
	* @param out An object into which 3 properties will be created: r, g and b. If not provided a new object will be created.
	* @param hsl Also convert the rgb values into hsl?
	* @param hsv Also convert the rgb values into hsv?
	* @return An object with the red, green and blue values set in the r, g and b properties.
	*/
	static function unpackPixel(rgba:Float, ?out:ColorComponents, ?hsl:Bool, ?hsv:Bool):ColorComponents;
	
	/**
	* Takes a color object and updates the rgba, color and color32 properties.
	* 
	* @param out The color object to update.
	* @return A native color value integer (format: 0xAARRGGBB).
	*/
	static function updateColor(out:ColorComponents):ColorComponents;
	
	/**
	* Converts a value - a "hex" string, a "CSS 'web' string", or a number - into red, green, blue, and alpha components.
	* 
	* The value can be a string (see `hexToColor` and `webToColor` for the supported formats) or a packed integer (see `getRGB`).
	* 
	* An alpha channel is _not_ supported when specifying a hex string.
	* 
	* @param value The color expressed as a recognized string format or a packed integer.
	* @param out The object to use for the output. If not provided a new object will be created.
	* @return The (`out`) object with the red, green, blue, and alpha values set as the r/g/b/a properties.
	*/
	static function valueToColor(value:String, ?out:ColorComponents):ColorComponents;
	
	/**
	* Converts a CSS 'web' string into a Phaser Color object.
	* 
	* The web string can be in the format `'rgb(r,g,b)'` or `'rgba(r,g,b,a)'` where r/g/b are in the range [0..255] and a is in the range [0..1].
	* 
	* @param web The color string in CSS 'web' format.
	* @param out An object into which 4 properties will be created: r, g, b and a. If not provided a new object will be created.
	* @return An object with the red, green, blue and alpha values set in the r, g, b and a properties.
	*/
	static function webToColor(web:String, ?out:ColorComponents):ColorComponents;
	
	/**
	* Blends the source color, ignoring the backdrop.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendNormal(a:Float):Float;
	
	/**
	* Selects the lighter of the backdrop and source colors.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendLighten(a:Float, b:Float):Float;
	
	/**
	* Selects the darker of the backdrop and source colors.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendDarken(a:Float, b:Float):Float;
	
	/**
	* Multiplies the backdrop and source color values.
	* The result color is always at least as dark as either of the two constituent
	* colors. Multiplying any color with black produces black;
	* multiplying with white leaves the original color unchanged.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendMultiply(a:Float, b:Float):Float;
	
	/**
	* Takes the average of the source and backdrop colors.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendAverage(a:Float, b:Float):Float;
	
	/**
	* Adds the source and backdrop colors together and returns the value, up to a maximum of 255.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendAdd(a:Float, b:Float):Float;
	
	/**
	* Combines the source and backdrop colors and returns their value minus 255.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendSubtract(a:Float, b:Float):Float;
	
	/**
	* Subtracts the darker of the two constituent colors from the lighter.
	* 
	* Painting with white inverts the backdrop color; painting with black produces no change.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendDifference(a:Float, b:Float):Float;
	
	/**
	* Negation blend mode.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendNegation(a:Float, b:Float):Float;
	
	/**
	* Multiplies the complements of the backdrop and source color values, then complements the result.
	* The result color is always at least as light as either of the two constituent colors.
	* Screening any color with white produces white; screening with black leaves the original color unchanged.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendScreen(a:Float, b:Float):Float;
	
	/**
	* Produces an effect similar to that of the Difference mode, but lower in contrast.
	* Painting with white inverts the backdrop color; painting with black produces no change.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendExclusion(a:Float, b:Float):Float;
	
	/**
	* Multiplies or screens the colors, depending on the backdrop color.
	* Source colors overlay the backdrop while preserving its highlights and shadows.
	* The backdrop color is not replaced, but is mixed with the source color to reflect the lightness or darkness of the backdrop.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendOverlay(a:Float, b:Float):Float;
	
	/**
	* Darkens or lightens the colors, depending on the source color value.
	* 
	* If the source color is lighter than 0.5, the backdrop is lightened, as if it were dodged;
	* this is useful for adding highlights to a scene.
	* 
	* If the source color is darker than 0.5, the backdrop is darkened, as if it were burned in.
	* The degree of lightening or darkening is proportional to the difference between the source color and 0.5;
	* if it is equal to 0.5, the backdrop is unchanged.
	* 
	* Painting with pure black or white produces a distinctly darker or lighter area, but does not result in pure black or white.
	* The effect is similar to shining a diffused spotlight on the backdrop.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendSoftLight(a:Float, b:Float):Float;
	
	/**
	* Multiplies or screens the colors, depending on the source color value.
	* 
	* If the source color is lighter than 0.5, the backdrop is lightened, as if it were screened;
	* this is useful for adding highlights to a scene.
	* 
	* If the source color is darker than 0.5, the backdrop is darkened, as if it were multiplied;
	* this is useful for adding shadows to a scene.
	* 
	* The degree of lightening or darkening is proportional to the difference between the source color and 0.5;
	* if it is equal to 0.5, the backdrop is unchanged.
	* 
	* Painting with pure black or white produces pure black or white. The effect is similar to shining a harsh spotlight on the backdrop.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendHardLight(a:Float, b:Float):Float;
	
	/**
	* Brightens the backdrop color to reflect the source color.
	* Painting with black produces no change.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendColorDodge(a:Float, b:Float):Float;
	
	/**
	* Darkens the backdrop color to reflect the source color.
	* Painting with white produces no change.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendColorBurn(a:Float, b:Float):Float;
	
	/**
	* An alias for blendAdd, it simply sums the values of the two colors.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendLinearDodge(a:Float, b:Float):Float;
	
	/**
	* An alias for blendSubtract, it simply sums the values of the two colors and subtracts 255.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendLinearBurn(a:Float, b:Float):Float;
	
	/**
	* This blend mode combines Linear Dodge and Linear Burn (rescaled so that neutral colors become middle gray).
	* Dodge applies to values of top layer lighter than middle gray, and burn to darker values.
	* The calculation simplifies to the sum of bottom layer and twice the top layer, subtract 128. The contrast decreases.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendLinearLight(a:Float, b:Float):Float;
	
	/**
	* This blend mode combines Color Dodge and Color Burn (rescaled so that neutral colors become middle gray).
	* Dodge applies when values in the top layer are lighter than middle gray, and burn to darker values.
	* The middle gray is the neutral color. When color is lighter than this, this effectively moves the white point of the bottom
	* layer down by twice the difference; when it is darker, the black point is moved up by twice the difference. The perceived contrast increases.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendVividLight(a:Float, b:Float):Float;
	
	/**
	* If the backdrop color (light source) is lighter than 50%, the blendDarken mode is used, and colors lighter than the backdrop color do not change.
	* If the backdrop color is darker than 50% gray, colors lighter than the blend color are replaced, and colors darker than the blend color do not change.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendPinLight(a:Float, b:Float):Float;
	
	/**
	* Runs blendVividLight on the source and backdrop colors.
	* If the resulting color is 128 or more, it receives a value of 255; if less than 128, a value of 0.
	* Therefore, all blended pixels have red, green, and blue channel values of either 0 or 255.
	* This changes all pixels to primary additive colors (red, green, or blue), white, or black.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendHardMix(a:Float, b:Float):Float;
	
	/**
	* Reflect blend mode. This mode is useful when adding shining objects or light zones to images.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendReflect(a:Float, b:Float):Float;
	
	/**
	* Glow blend mode. This mode is a variation of reflect mode with the source and backdrop colors swapped.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendGlow(a:Float, b:Float):Float;
	
	/**
	* Phoenix blend mode. This subtracts the lighter color from the darker color, and adds 255, giving a bright result.
	* 
	* @param a The source color to blend, in the range 1 to 255.
	* @param b The backdrop color to blend, in the range 1 to 255.
	* @return The blended color value, in the range 1 to 255.
	*/
	static function blendPhoenix(a:Float, b:Float):Float;
	
}

