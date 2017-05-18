package phaser;

import js.html.CanvasRenderingContext2D;

/**
* A Tile set is a combination of an image containing the tiles and collision data per tile.
* 
* Tilesets are normally created automatically when Tiled data is loaded.
*/
@:native("Phaser.Tileset")
extern class Tileset {

	/**
	* A Tile set is a combination of an image containing the tiles and collision data per tile.
	* 
	* Tilesets are normally created automatically when Tiled data is loaded.
	* 
	* @param name The name of the tileset in the map data.
	* @param firstgid The first tile index this tileset contains.
	* @param width Width of each tile (in pixels). - Default: 32
	* @param height Height of each tile (in pixels). - Default: 32
	* @param margin The margin around all tiles in the sheet (in pixels).
	* @param spacing The spacing between each tile in the sheet (in pixels).
	* @param properties Custom Tileset properties. - Default: {}
	*/
	function new(name:String, firstgid:Float, ?width:Float, ?height:Float, ?margin:Float, ?spacing:Float, ?properties:Dynamic);
	
	/**
	* The number of tile columns in the tileset.
	*/
	var columns:Float;
	
	/**
	* The Tiled firstgid value.
	* This is the starting index of the first tile index this Tileset contains.
	*/
	var firstgid:Float;
	
	/**
	* The cached image that contains the individual tiles. Use {@link Phaser.Tileset.setImage setImage} to set.
	*/
	var image:Dynamic;
	
	var lastgid:Float;
	
	/**
	* The name of the Tileset.
	*/
	var name:String;
	
	/**
	* Tileset-specific properties that are typically defined in the Tiled editor.
	*/
	var properties:Dynamic;
	
	/**
	* The number of tile rows in the the tileset.
	*/
	var rows:Float;
	
	/**
	* The height of each tile (in pixels).
	*/
	var tileHeight:Float;
	
	/**
	* The margin around the tiles in the sheet (in pixels).
	* Use `setSpacing` to change.
	*/
	var tileMargin:Float;
	
	/**
	* The spacing between each tile in the sheet (in pixels).
	* Use `setSpacing` to change.
	*/
	var tileSpacing:Float;
	
	/**
	* The width of each tile (in pixels).
	*/
	var tileWidth:Float;
	
	/**
	* The total number of tiles in the tileset.
	*/
	var total:Float;
	
	/**
	* Returns true if and only if this tileset contains the given tile index.
	* 
	* @return True if this tileset contains the given index.
	*/
	function containsTileIndex(tileIndex:Float):Bool;
	
	/**
	* Draws a tile from this Tileset at the given coordinates on the context.
	* 
	* @param context The context to draw the tile onto.
	* @param x The x coordinate to draw to.
	* @param y The y coordinate to draw to.
	* @param index The index of the tile within the set to draw.
	*/
	function draw(context:CanvasRenderingContext2D, x:Float, y:Float, index:Float):Void;
	
	function drawGl(glBatch:Array<Dynamic>, x:Float, y:Float, index:Float, alpha:Float, flippedVal:Float):Void;
	
	/**
	* Set the image associated with this Tileset and update the tile data.
	* 
	* @param image The image that contains the tiles.
	*/
	function setImage(image:Dynamic):Void;
	
	/**
	* Sets tile spacing and margins.
	* 
	* @param margin The margin around the tiles in the sheet (in pixels).
	* @param spacing The spacing between the tiles in the sheet (in pixels).
	*/
	function setSpacing(?margin:Float, ?spacing:Float):Void;
	
}

