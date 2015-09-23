package phaser.loader;

@:native("Phaser.LoaderParser")
extern class LoaderParser {
	
	/**
	 * Alias for xmlBitmapFont, for backwards compatibility.
	 */
	function bitmapFont (xml:Dynamic, baseTexture:phaser.pixi.textures.BaseTexture, ?xSpacing:Float = 0, ?ySpacing:Float = 0):Dynamic;
	
	/**
	 * Parse a Bitmap Font from an XML file.
	 */
	function xmlBitmapFont (xml:Dynamic, baseTexture:phaser.pixi.textures.BaseTexture, ?xSpacing:Float = 0, ?ySpacing:Float = 0):Dynamic;
	
	/**
	 * Parse a Bitmap Font from a JSON file.
	 */
	function jsonBitmapFont (json:Dynamic, baseTexture:phaser.pixi.textures.BaseTexture, ?xSpacing:Float = 0, ?ySpacing:Float = 0):Dynamic;
	
	/**
	 * Finalize Bitmap Font parsing.
	 */
	function finalizeBitmapFont (baseTexture:phaser.pixi.textures.BaseTexture, bitmapFontData:Dynamic):Dynamic;
	
}
