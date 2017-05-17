package phaser;

/**
* Phaser.LoaderParser parses data objects from Phaser.Loader that need more preparation before they can be inserted into the Cache.
*/
@:native("Phaser.LoaderParser")
extern class LoaderParser {

	/**
	* Alias for xmlBitmapFont, for backwards compatibility.
	* 
	* @param xml XML data you want to parse.
	* @param baseTexture The BaseTexture this font uses.
	* @param xSpacing Additional horizontal spacing between the characters.
	* @param ySpacing Additional vertical spacing between the characters.
	* @param frame Optional Frame, if this font is embedded in a texture atlas.
	* @param resolution Optional game resolution to apply to the kerning data. - Default: 1
	* @return The parsed Bitmap Font data.
	*/
	static function bitmapFont(xml:Dynamic, baseTexture:pixi.BaseTexture, ?xSpacing:Float, ?ySpacing:Float, ?frame:phaser.Frame, ?resolution:Float):Dynamic;
	
	/**
	* Parse a Bitmap Font from an XML file.
	* 
	* @param xml XML data you want to parse.
	* @param baseTexture The BaseTexture this font uses.
	* @param xSpacing Additional horizontal spacing between the characters.
	* @param ySpacing Additional vertical spacing between the characters.
	* @param frame Optional Frame, if this font is embedded in a texture atlas.
	* @param resolution Optional game resolution to apply to the kerning data. - Default: 1
	* @return The parsed Bitmap Font data.
	*/
	static function xmlBitmapFont(xml:Dynamic, baseTexture:pixi.BaseTexture, ?xSpacing:Float, ?ySpacing:Float, ?frame:phaser.Frame, ?resolution:Float):Dynamic;
	
	/**
	* Parse a Bitmap Font from a JSON file.
	* 
	* @param json JSON data you want to parse.
	* @param baseTexture The BaseTexture this font uses.
	* @param xSpacing Additional horizontal spacing between the characters.
	* @param ySpacing Additional vertical spacing between the characters.
	* @param frame Optional Frame, if this font is embedded in a texture atlas.
	* @param resolution Optional game resolution to apply to the kerning data. - Default: 1
	* @return The parsed Bitmap Font data.
	*/
	static function jsonBitmapFont(json:Dynamic, baseTexture:pixi.BaseTexture, ?xSpacing:Float, ?ySpacing:Float, ?frame:phaser.Frame, ?resolution:Float):Dynamic;
	
}

