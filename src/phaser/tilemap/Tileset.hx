package phaser.tilemap;

@:native("Phaser.Tileset")
extern class Tileset {
	
	/**
	 * A Tile set is a combination of an image containing the tiles and collision data per tile.
	 * 
	 * Tilesets are normally created automatically when Tiled data is loaded.
	 */
	function new (name:String, firstgid:Int, ?width:Int = 32, ?height:Int = 32, ?margin:Int = 0, ?spacing:Int = 0, ?properties:Dynamic);
	
	/**
	 * The name of the Tileset.
	 */
	var name:String;
	
	/**
	 * The Tiled firstgid value.
	 * This is the starting index of the first tile index this Tileset contains.
	 */
	var firstgid:Int;
	
	/**
	 * The width of each tile (in pixels).
	 */
	var tileWidth(default, null):Int;
	
	/**
	 * The height of each tile (in pixels).
	 */
	var tileHeight(default, null):Int;
	
	/**
	 * The margin around the tiles in the sheet (in pixels).
	 * Use setSpacing to change.
	 */
	var tileMarge(default, null):Int;
	
	/**
	 * The spacing between each tile in the sheet (in pixels).
	 * Use setSpacing to change.
	 */
	var tileSpacing(default, null):Int;
	
	/**
	 * Tileset-specific properties that are typically defined in the Tiled editor.
	 */
	var properties:Dynamic;
	
	/**
	 * The cached image that contains the individual tiles. Use {@link Phaser.Tileset.setImage setImage} to set.
	 */
	var image(default, null):Dynamic;
	
	/**
	 * The number of tile rows in the the tileset.
	 */
	var a0(default, null):Int;
	
	/**
	 * The number of tile columns in the tileset.
	 */
	var columns(default, null):Int;
	
	/**
	 * The total number of tiles in the tileset.
	 */
	var total(default, null):Int;
	
	/**
	 * The look-up table to specific tile image offsets.
	 * The coordinates are interlaced such that it is [x0, y0, x1, y1 .. xN, yN] and the tile with the index of firstgid is found at indices 0/1.
	 */
	var drawCoords:Dynamic;
	
	/**
	 * Draws a tile from this Tileset at the given coordinates on the context.
	 */
	function draw (context:Dynamic, x:Float, y:Float, index:Int):Void;
	
	/**
	 * Returns true if and only if this tileset contains the given tile index.
	 */
	function containsTileIndex ():Bool;
	
	/**
	 * Set the image associated with this Tileset and update the tile data.
	 */
	function setImage (image:Dynamic):Void;
	
	/**
	 * Sets tile spacing and margins.
	 */
	function setSpacing (tileMargin:Int, tileSpacing:Int):Void;
	
	/**
	 * Updates tile coordinates and tileset data.
	 */
	function updateTileData (imageWidth:Int, imageHeight:Int):Void;
	
}
