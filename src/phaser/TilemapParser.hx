package phaser;

/**
* Phaser.TilemapParser parses data objects from Phaser.Loader that need more preparation before they can be inserted into a Tilemap.
*/
@:native("Phaser.TilemapParser")
extern class TilemapParser {

	/**
	* When scanning the Tiled map data the TilemapParser can either insert a null value (true) or
	* a Phaser.Tile instance with an index of -1 (false, the default). Depending on your game type
	* depends how this should be configured. If you've a large sparsely populated map and the tile
	* data doesn't need to change then setting this value to `true` will help with memory consumption.
	* However if your map is small, or you need to update the tiles (perhaps the map dynamically changes
	* during the game) then leave the default value set.
	*/
	static var INSERT_NULL:Bool;
	
	/**
	* Returns an empty map data object.
	* 
	* @return Generated map data.
	*/
	static function getEmptyData(?tileWidth:Float, ?tileHeight:Float, ?width:Float, ?height:Float):Dynamic;
	
	/**
	* Parse tilemap data from the cache and creates data for a Tilemap object.
	* 
	* @param game Game reference to the currently running game.
	* @param key The key of the tilemap in the Cache.
	* @param tileWidth The pixel width of a single map tile. If using CSV data you must specify this. Not required if using Tiled map data. - Default: 32
	* @param tileHeight The pixel height of a single map tile. If using CSV data you must specify this. Not required if using Tiled map data. - Default: 32
	* @param width The width of the map in tiles. If this map is created from Tiled or CSV data you don't need to specify this. - Default: 10
	* @param height The height of the map in tiles. If this map is created from Tiled or CSV data you don't need to specify this. - Default: 10
	* @return The parsed map object.
	*/
	static function parse(game:phaser.Game, key:String, ?tileWidth:Float, ?tileHeight:Float, ?width:Float, ?height:Float):Dynamic;
	
	/**
	* Parses a CSV file into valid map data.
	* 
	* @param key The name you want to give the map data.
	* @param data The CSV file data.
	* @param tileWidth The pixel width of a single map tile. If using CSV data you must specify this. Not required if using Tiled map data. - Default: 32
	* @param tileHeight The pixel height of a single map tile. If using CSV data you must specify this. Not required if using Tiled map data. - Default: 32
	* @return Generated map data.
	*/
	static function parseCSV(key:String, data:String, ?tileWidth:Float, ?tileHeight:Float):Dynamic;
	
	/**
	* Parses a Tiled JSON file into valid map data.
	* 
	* @param json The JSON map data.
	* @return Generated and parsed map data.
	*/
	static function parseJSON(json:Dynamic):Dynamic;
	
}

