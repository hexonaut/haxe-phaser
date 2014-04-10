package phaser.tilemap;

@:native("Phaser.TilemapParser")
extern class TilemapParser {
	
	/**
	 * Parse tilemap data from the cache and creates a Tilemap object.
	 */
	function parse (game:phaser.core.Game, key:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32, ?width:Float = 10, ?height:Float = 10):Dynamic;
	
	/**
	 * Parses a CSV file into valid map data.
	 */
	function parseCSV (data:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32):Dynamic;
	
	/**
	 * Returns an empty map data object.
	 */
	function getEmptyData ():Dynamic;
	
	/**
	 * Parses a Tiled JSON file into valid map data.
	 */
	function parseJSON (json:Dynamic):Dynamic;
	
}
