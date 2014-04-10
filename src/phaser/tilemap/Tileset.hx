package phaser.tilemap;

@:native("Phaser.Tileset")
extern class Tileset {
	
	/**
	 * A Tile set is a combination of an image containing the tiles and collision data per tile.
	 * You should not normally instantiate this class directly.
	 */
	function new (name:String, firstgid:Float, ?width:Float = 32, ?height:Float = 32, ?margin:Float = 0, ?spacing:Float = 0, ?properties:Dynamic);
	
	/**
	 * The name of the Tileset.
	 */
	var name:String;
	
	/**
	 * The Tiled firstgid value. In non-Tiled data this should be considered the starting index value of the first tile in this set.
	 */
	var firstgid:Float;
	
	/**
	 * The width of a tile in pixels.
	 */
	var tileWidth:Float;
	
	/**
	 * The height of a tile in pixels.
	 */
	var tileHeight:Float;
	
	/**
	 * The margin around the tiles in the tileset.
	 */
	var tileMargin:Float;
	
	/**
	 * The spacing in pixels between each tile in the tileset.
	 */
	var tileSpacing:Float;
	
	/**
	 * Tileset specific properties (typically defined in the Tiled editor).
	 */
	var properties:Dynamic;
	
	/**
	 * The image used for rendering. This is a reference to the image stored in Phaser.Cache.
	 */
	var image:Dynamic;
	
	/**
	 * The number of rows in the tile sheet.
	 */
	var rows:Float;
	
	/**
	 * The number of columns in the tile sheet.
	 */
	var columns:Float;
	
	/**
	 * The total number of tiles in the tilesheet.
	 */
	var total:Float;
	
	/**
	 * The tile drawImage look-up table
	 */
	var drawCoords:Array<Dynamic>;
	
	/**
	 * Draws a tile from this Tileset at the given coordinates on the context.
	 */
	function draw (context:Dynamic, x:Float, y:Float, index:Float):Void;
	
	/**
	 * Adds a reference from this Tileset to an Image stored in the Phaser.Cache.
	 */
	function setImage (image:Dynamic):Void;
	
	/**
	 * Sets tile spacing and margins.
	 */
	function setSpacing (?tileMargin:Float, ?tileSpacing:Float):Void;
	
}
