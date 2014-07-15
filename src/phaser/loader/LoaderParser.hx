package phaser.loader;

@:native("Phaser.LoaderParser")
extern class LoaderParser {
	
	/**
	 * Parse a Bitmap Font from an XML file.
	 */
	function bitmapFont (game:phaser.core.Game, xml:Dynamic, cacheKey:String, ?xSpacing:Float = 0, ?ySpacing:Float = 0):Void;
	
}
