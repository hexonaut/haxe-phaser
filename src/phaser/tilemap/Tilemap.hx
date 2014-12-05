package phaser.tilemap;

@:native("Phaser.Tilemap")
extern class Tilemap {
	
	/**
	 * Creates a new Phaser.Tilemap object. The map can either be populated with data from a Tiled JSON file or from a CSV file.
	 * To do this pass the Cache key as the first parameter. When using Tiled data you need only provide the key.
	 * When using CSV data you must provide the key and the tileWidth and tileHeight parameters.
	 * If creating a blank tilemap to be populated later, you can either specify no parameters at all and then use Tilemap.create or pass the map and tile dimensions here.
	 * Note that all Tilemaps use a base tile size to calculate dimensions from, but that a TilemapLayer may have its own unique tile size that overrides it.
	 * A Tile map is rendered to the display using a TilemapLayer. It is not added to the display list directly itself.
	 * A map may have multiple layers. You can perform operations on the map data such as copying, pasting, filling and shuffling the tiles around.
	 */
	function new (game:phaser.core.Game, ?key:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32, ?width:Float = 10, ?height:Float = 10);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The key of this map data in the Phaser.Cache.
	 */
	var key:String;
	
	/**
	 * The width of the map (in tiles).
	 */
	var width:Float;
	
	/**
	 * The height of the map (in tiles).
	 */
	var height:Float;
	
	/**
	 * The base width of the tiles in the map (in pixels).
	 */
	var tileWidth:Float;
	
	/**
	 * The base height of the tiles in the map (in pixels).
	 */
	var tileHeight:Float;
	
	/**
	 * The orientation of the map data (as specified in Tiled), usually 'orthogonal'.
	 */
	var orientation:String;
	
	/**
	 * The format of the map data, either Phaser.Tilemap.CSV or Phaser.Tilemap.TILED_JSON.
	 */
	var format:Float;
	
	/**
	 * The version of the map data (as specified in Tiled, usually 1).
	 */
	var version:Float;
	
	/**
	 * Map specific properties as specified in Tiled.
	 */
	var properties:Dynamic;
	
	/**
	 * The width of the map in pixels based on width * tileWidth.
	 */
	var widthInPixels:Float;
	
	/**
	 * The height of the map in pixels based on height * tileHeight.
	 */
	var heightInPixels:Float;
	
	/**
	 * An array of Tilemap layer data.
	 */
	var layers:Array<Dynamic>;
	
	/**
	 * An array of Tilesets.
	 */
	var tilesets:Array<Dynamic>;
	
	/**
	 * The super array of Tiles.
	 */
	var tiles:Array<Dynamic>;
	
	/**
	 * An array of Tiled Object Layers.
	 */
	var objects:Array<Dynamic>;
	
	/**
	 * An array of tile indexes that collide.
	 */
	var collideIndexes:Array<Dynamic>;
	
	/**
	 * An array of collision data (polylines, etc).
	 */
	var collision:Array<Dynamic>;
	
	/**
	 * An array of Tiled Image Layers.
	 */
	var images:Array<Dynamic>;
	
	/**
	 * The current layer.
	 */
	var currentLayer:Float;
	
	/**
	 * Map data used for debug values only.
	 */
	var debugMap:Array<Dynamic>;
	
	/**
	 * Internal var.
	 */
	var _results:Array<Dynamic>;
	
	/**
	 * Internal var.
	 */
	var _tempA:Float;
	
	/**
	 * Internal var.
	 */
	var _tempB:Float;
	
	/**
	 * @constant
	 */
	static var CSV:Float;
	
	/**
	 * @constant
	 */
	static var TILED_JSON:Float;
	
	/**
	 * @constant
	 */
	static var NORTH:Float;
	
	/**
	 * @constant
	 */
	static var EAST:Float;
	
	/**
	 * @constant
	 */
	static var SOUTH:Float;
	
	/**
	 * @constant
	 */
	static var WEST:Float;
	
	/**
	 * Creates an empty map of the given dimensions and one blank layer. If layers already exist they are erased.
	 */
	function create (name:String, width:Float, height:Float, tileWidth:Float, tileHeight:Float, ?group:phaser.core.Group):phaser.tilemap.TilemapLayer;
	
	/**
	 * Sets the base tile size for the map.
	 */
	function setTileSize (tileWidth:Float, tileHeight:Float):Void;
	
	/**
	 * Adds an image to the map to be used as a tileset. A single map may use multiple tilesets.
	 * Note that the tileset name can be found in the JSON file exported from Tiled, or in the Tiled editor.
	 */
	function addTilesetImage (tileset:String, ?key:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32, ?tileMargin:Float = 0, ?tileSpacing:Float = 0, ?gid:Float = 0):phaser.tilemap.Tileset;
	
	/**
	 * Creates a Sprite for every object matching the given gid in the map data. You can optionally specify the group that the Sprite will be created in. If none is
	 * given it will be created in the World. All properties from the map data objectgroup are copied across to the Sprite, so you can use this as an easy way to
	 * configure Sprite properties from within the map editor. For example giving an object a property of alpha: 0.5 in the map editor will duplicate that when the
	 * Sprite is created. You could also give it a value like: body.velocity.x: 100 to set it moving automatically.
	 */
	@:overload(function (name:String, gid:Float, key:String, ?frame:Float, ?exists:Bool = true, ?autoCull:Bool = false, ?group:phaser.core.Group, ?CustomClass:Dynamic, ?adjustY:Bool = true):Void {})
	function createFromObjects (name:String, gid:Float, key:String, ?frame:String, ?exists:Bool = true, ?autoCull:Bool = false, ?group:phaser.core.Group, ?CustomClass:Dynamic, ?adjustY:Bool = true):Void;
	
	/**
	 * Creates a Sprite for every object matching the given tile indexes in the map data.
	 * You can specify the group that the Sprite will be created in. If none is given it will be created in the World.
	 * You can optional specify if the tile will be replaced with another after the Sprite is created. This is useful if you want to lay down special 
	 * tiles in a level that are converted to Sprites, but want to replace the tile itself with a floor tile or similar once converted.
	 */
	@:overload(function (tiles:Int, replacements:Int, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:Float):Int {})
	@:overload(function (tiles:Array<Dynamic>, replacements:Int, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:Float):Int {})
	@:overload(function (tiles:Int, replacements:Array<Dynamic>, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:Float):Int {})
	@:overload(function (tiles:Array<Dynamic>, replacements:Array<Dynamic>, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:Float):Int {})
	@:overload(function (tiles:Int, replacements:Int, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:String):Int {})
	@:overload(function (tiles:Array<Dynamic>, replacements:Int, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:String):Int {})
	@:overload(function (tiles:Int, replacements:Array<Dynamic>, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:String):Int {})
	@:overload(function (tiles:Array<Dynamic>, replacements:Array<Dynamic>, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:String):Int {})
	@:overload(function (tiles:Int, replacements:Int, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Int {})
	@:overload(function (tiles:Array<Dynamic>, replacements:Int, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Int {})
	@:overload(function (tiles:Int, replacements:Array<Dynamic>, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Int {})
	function createFromTiles (tiles:Array<Dynamic>, replacements:Array<Dynamic>, key:String, ?group:phaser.core.Group, ?properties:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Int;
	
	/**
	 * Creates a new TilemapLayer object. By default TilemapLayers are fixed to the camera.
	 * The layer parameter is important. If you've created your map in Tiled then you can get this by looking in Tiled and looking at the Layer name.
	 * Or you can open the JSON file it exports and look at the layers[].name value. Either way it must match.
	 * If you wish to create a blank layer to put your own tiles on then see Tilemap.createBlankLayer.
	 */
	@:overload(function (layer:Float, ?width:Float, ?height:Float, ?group:phaser.core.Group):phaser.tilemap.TilemapLayer {})
	function createLayer (layer:String, ?width:Float, ?height:Float, ?group:phaser.core.Group):phaser.tilemap.TilemapLayer;
	
	/**
	 * Creates a new and empty layer on this Tilemap. By default TilemapLayers are fixed to the camera.
	 */
	function createBlankLayer (name:String, width:Float, height:Float, tileWidth:Float, tileHeight:Float, ?group:phaser.core.Group):phaser.tilemap.TilemapLayer;
	
	/**
	 * Gets the layer index based on the layers name.
	 */
	function getIndex (location:Array<Dynamic>, name:String):Float;
	
	/**
	 * Gets the layer index based on its name.
	 */
	function getLayerIndex (name:String):Float;
	
	/**
	 * Gets the tileset index based on its name.
	 */
	function getTilesetIndex (name:String):Float;
	
	/**
	 * Gets the image index based on its name.
	 */
	function getImageIndex (name:String):Float;
	
	/**
	 * Gets the object index based on its name.
	 */
	function getObjectIndex (name:String):Float;
	
	/**
	 * Sets a global collision callback for the given tile index within the layer. This will affect all tiles on this layer that have the same index.
	 * If a callback is already set for the tile index it will be replaced. Set the callback to null to remove it.
	 * If you want to set a callback for a tile at a specific location on the map then see setTileLocationCallback.
	 */
	@:overload(function (indexes:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:Float):Void {})
	@:overload(function (indexes:Array<Dynamic>, callback:Dynamic, callbackContext:Dynamic, ?layer:Float):Void {})
	@:overload(function (indexes:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:String):Void {})
	@:overload(function (indexes:Array<Dynamic>, callback:Dynamic, callbackContext:Dynamic, ?layer:String):Void {})
	@:overload(function (indexes:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Void {})
	function setTileIndexCallback (indexes:Array<Dynamic>, callback:Dynamic, callbackContext:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Sets a global collision callback for the given map location within the layer. This will affect all tiles on this layer found in the given area.
	 * If a callback is already set for the tile index it will be replaced. Set the callback to null to remove it.
	 * If you want to set a callback for a tile at a specific location on the map then see setTileLocationCallback.
	 */
	@:overload(function (x:Float, y:Float, width:Float, height:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:Float):Void {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:String):Void {})
	function setTileLocationCallback (x:Float, y:Float, width:Float, height:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Sets collision the given tile or tiles. You can pass in either a single numeric index or an array of indexes: [ 2, 3, 15, 20].
	 * The collides parameter controls if collision will be enabled (true) or disabled (false).
	 */
	@:overload(function (indexes:Float, ?collides:Bool = true, ?layer:Float, ?recalculate:Bool = true):Void {})
	@:overload(function (indexes:Array<Dynamic>, ?collides:Bool = true, ?layer:Float, ?recalculate:Bool = true):Void {})
	@:overload(function (indexes:Float, ?collides:Bool = true, ?layer:String, ?recalculate:Bool = true):Void {})
	@:overload(function (indexes:Array<Dynamic>, ?collides:Bool = true, ?layer:String, ?recalculate:Bool = true):Void {})
	@:overload(function (indexes:Float, ?collides:Bool = true, ?layer:phaser.tilemap.TilemapLayer, ?recalculate:Bool = true):Void {})
	function setCollision (indexes:Array<Dynamic>, ?collides:Bool = true, ?layer:phaser.tilemap.TilemapLayer, ?recalculate:Bool = true):Void;
	
	/**
	 * Sets collision on a range of tiles where the tile IDs increment sequentially.
	 * Calling this with a start value of 10 and a stop value of 14 would set collision for tiles 10, 11, 12, 13 and 14.
	 * The collides parameter controls if collision will be enabled (true) or disabled (false).
	 */
	@:overload(function (start:Float, stop:Float, ?collides:Bool = true, ?layer:Float, ?recalculate:Bool = true):Void {})
	@:overload(function (start:Float, stop:Float, ?collides:Bool = true, ?layer:String, ?recalculate:Bool = true):Void {})
	function setCollisionBetween (start:Float, stop:Float, ?collides:Bool = true, ?layer:phaser.tilemap.TilemapLayer, ?recalculate:Bool = true):Void;
	
	/**
	 * Sets collision on all tiles in the given layer, except for the IDs of those in the given array.
	 * The collides parameter controls if collision will be enabled (true) or disabled (false).
	 */
	@:overload(function (indexes:Array<Dynamic>, ?collides:Bool = true, ?layer:Float, ?recalculate:Bool = true):Void {})
	@:overload(function (indexes:Array<Dynamic>, ?collides:Bool = true, ?layer:String, ?recalculate:Bool = true):Void {})
	function setCollisionByExclusion (indexes:Array<Dynamic>, ?collides:Bool = true, ?layer:phaser.tilemap.TilemapLayer, ?recalculate:Bool = true):Void;
	
	/**
	 * Sets collision values on a tile in the set.
	 * You shouldn't usually call this method directly, instead use setCollision, setCollisionBetween or setCollisionByExclusion.
	 */
	function setCollisionByIndex (index:Float, ?collides:Bool = true, ?layer:Float, ?recalculate:Bool = true):Void;
	
	/**
	 * Gets the TilemapLayer index as used in the setCollision calls.
	 */
	@:overload(function (layer:Float):Float {})
	@:overload(function (layer:String):Float {})
	function getLayer (layer:phaser.tilemap.TilemapLayer):Float;
	
	/**
	 * Turn off/on the recalculation of faces for tile or collision updates. 
	 * setPreventRecalculate(true) puts recalculation on hold while setPreventRecalculate(false) recalculates all the changed layers.
	 */
	function setPreventRecalculate (value:Bool):Void;
	
	/**
	 * Internal function.
	 */
	function calculateFaces (layer:Float):Void;
	
	/**
	 * Gets the tile above the tile coordinates given.
	 * Mostly used as an internal function by calculateFaces.
	 */
	function getTileAbove (layer:Float, x:Float, y:Float):Void;
	
	/**
	 * Gets the tile below the tile coordinates given.
	 * Mostly used as an internal function by calculateFaces.
	 */
	function getTileBelow (layer:Float, x:Float, y:Float):Void;
	
	/**
	 * Gets the tile to the left of the tile coordinates given.
	 * Mostly used as an internal function by calculateFaces.
	 */
	function getTileLeft (layer:Float, x:Float, y:Float):Void;
	
	/**
	 * Gets the tile to the right of the tile coordinates given.
	 * Mostly used as an internal function by calculateFaces.
	 */
	function getTileRight (layer:Float, x:Float, y:Float):Void;
	
	/**
	 * Sets the current layer to the given index.
	 */
	@:overload(function (layer:Float):Void {})
	@:overload(function (layer:String):Void {})
	function setLayer (layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Checks if there is a tile at the given location.
	 */
	@:overload(function (x:Float, y:Float, layer:Float):Bool {})
	@:overload(function (x:Float, y:Float, layer:String):Bool {})
	function hasTile (x:Float, y:Float, layer:phaser.tilemap.TilemapLayer):Bool;
	
	/**
	 * Removes the tile located at the given coordinates and updates the collision data.
	 */
	@:overload(function (x:Float, y:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (x:Float, y:Float, ?layer:String):phaser.tilemap.Tile {})
	function removeTile (x:Float, y:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile;
	
	/**
	 * Removes the tile located at the given coordinates and updates the collision data. The coordinates are given in pixel values.
	 */
	@:overload(function (x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:String):phaser.tilemap.Tile {})
	function removeTileWorldXY (x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile;
	
	/**
	 * Puts a tile of the given index value at the coordinate specified.
	 * If you pass null as the tile it will pass your call over to Tilemap.removeTile instead.
	 */
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (tile:Float, x:Float, y:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (tile:Dynamic, x:Float, y:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, ?layer:String):phaser.tilemap.Tile {})
	@:overload(function (tile:Float, x:Float, y:Float, ?layer:String):phaser.tilemap.Tile {})
	@:overload(function (tile:Dynamic, x:Float, y:Float, ?layer:String):phaser.tilemap.Tile {})
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile {})
	@:overload(function (tile:Float, x:Float, y:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile {})
	function putTile (tile:Dynamic, x:Float, y:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile;
	
	/**
	 * Puts a tile into the Tilemap layer. The coordinates are given in pixel values.
	 */
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (tile:Float, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:String):phaser.tilemap.Tile {})
	@:overload(function (tile:Float, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:String):phaser.tilemap.Tile {})
	@:overload(function (tile:phaser.tilemap.Tile, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile {})
	function putTileWorldXY (tile:Float, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile;
	
	/**
	 * Searches the entire map layer for the first tile matching the given index, then returns that Phaser.Tile object.
	 * If no match is found it returns null.
	 * The search starts from the top-left tile and continues horizontally until it hits the end of the row, then it drops down to the next column.
	 * If the reverse boolean is true, it scans starting from the bottom-right corner travelling up to the top-left.
	 */
	@:overload(function (index:Float, ?skip:Float = 0, ?reverse:Float = false, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (index:Float, ?skip:Float = 0, ?reverse:Float = false, ?layer:String):phaser.tilemap.Tile {})
	function searchTileIndex (index:Float, ?skip:Float = 0, ?reverse:Float = false, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile;
	
	/**
	 * Gets a tile from the Tilemap Layer. The coordinates are given in tile values.
	 */
	@:overload(function (x:Float, y:Float, ?layer:Float, ?nonNull:Bool = false):phaser.tilemap.Tile {})
	@:overload(function (x:Float, y:Float, ?layer:String, ?nonNull:Bool = false):phaser.tilemap.Tile {})
	function getTile (x:Float, y:Float, ?layer:phaser.tilemap.TilemapLayer, ?nonNull:Bool = false):phaser.tilemap.Tile;
	
	/**
	 * Gets a tile from the Tilemap layer. The coordinates are given in pixel values.
	 */
	@:overload(function (x:Float, y:Float, ?tileWidth:Float, ?tileHeight:Float, ?layer:Float):phaser.tilemap.Tile {})
	@:overload(function (x:Float, y:Float, ?tileWidth:Float, ?tileHeight:Float, ?layer:String):phaser.tilemap.Tile {})
	function getTileWorldXY (x:Float, y:Float, ?tileWidth:Float, ?tileHeight:Float, ?layer:phaser.tilemap.TilemapLayer):phaser.tilemap.Tile;
	
	/**
	 * Copies all of the tiles in the given rectangular block into the tilemap data buffer.
	 */
	@:overload(function (x:Int, y:Int, width:Int, height:Int, ?layer:Int):Array<Dynamic> {})
	@:overload(function (x:Int, y:Int, width:Int, height:Int, ?layer:String):Array<Dynamic> {})
	function copy (x:Int, y:Int, width:Int, height:Int, ?layer:phaser.tilemap.TilemapLayer):Array<Dynamic>;
	
	/**
	 * Pastes a previously copied block of tile data into the given x/y coordinates. Data should have been prepared with Tilemap.copy.
	 */
	@:overload(function (x:Float, y:Float, tileblock:Array<Dynamic>, ?layer:Float):Void {})
	@:overload(function (x:Float, y:Float, tileblock:Array<Dynamic>, ?layer:String):Void {})
	function paste (x:Float, y:Float, tileblock:Array<Dynamic>, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Scans the given area for tiles with an index matching tileA and swaps them with tileB.
	 */
	@:overload(function (tileA:Float, tileB:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (tileA:Float, tileB:Float, x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function swap (tileA:Float, tileB:Float, x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Internal function that handles the swapping of tiles.
	 */
	function swapHandler (value:Float):Void;
	
	/**
	 * For each tile in the given area defined by x/y and width/height run the given callback.
	 */
	@:overload(function (callback:Float, context:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (callback:Float, context:Float, x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function forEach (callback:Float, context:Float, x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Scans the given area for tiles with an index matching source and updates their index to match dest.
	 */
	@:overload(function (source:Float, dest:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (source:Float, dest:Float, x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function replace (source:Float, dest:Float, x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Randomises a set of tiles in a given area.
	 */
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function random (x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Shuffles a set of tiles in a given area. It will only randomise the tiles in that area, so if they're all the same nothing will appear to have changed!
	 */
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function shuffle (x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Fills the given area with the specified tile.
	 */
	@:overload(function (index:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Float):Void {})
	@:overload(function (index:Float, x:Float, y:Float, width:Float, height:Float, ?layer:String):Void {})
	function fill (index:Float, x:Float, y:Float, width:Float, height:Float, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Removes all layers from this tile map.
	 */
	function removeAllLayers ():Void;
	
	/**
	 * Dumps the tilemap data out to the console.
	 */
	function dump ():Void;
	
	/**
	 * Removes all layer data from this tile map and nulls the game reference.
	 * Note: You are responsible for destroying any TilemapLayer objects you generated yourself, as Tilemap doesn't keep a reference to them.
	 */
	function destroy ():Void;
	
	/**
	 * @name Phaser.Tilemap#layer
	 */
	var layer:Dynamic;
	
}
