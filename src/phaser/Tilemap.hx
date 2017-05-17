package phaser;

import haxe.extern.EitherType;

/**
* Creates a new Phaser.Tilemap object. The map can either be populated with data from a Tiled JSON file or from a CSV file.
* 
* Tiled is a free software package specifically for creating tile maps, and is available from http://www.mapeditor.org
* 
* To do this pass the Cache key as the first parameter. When using Tiled data you need only provide the key.
* When using CSV data you must provide the key and the tileWidth and tileHeight parameters.
* If creating a blank tilemap to be populated later, you can either specify no parameters at all and then use `Tilemap.create` or pass the map and tile dimensions here.
* Note that all Tilemaps use a base tile size to calculate dimensions from, but that a TilemapLayer may have its own unique tile size that overrides it.
* A Tile map is rendered to the display using a TilemapLayer. It is not added to the display list directly itself.
* A map may have multiple layers. You can perform operations on the map data such as copying, pasting, filling and shuffling the tiles around.
*/
@:native("Phaser.Tilemap")
extern class Tilemap {

	/**
	* Creates a new Phaser.Tilemap object. The map can either be populated with data from a Tiled JSON file or from a CSV file.
	* 
	* Tiled is a free software package specifically for creating tile maps, and is available from http://www.mapeditor.org
	* 
	* To do this pass the Cache key as the first parameter. When using Tiled data you need only provide the key.
	* When using CSV data you must provide the key and the tileWidth and tileHeight parameters.
	* If creating a blank tilemap to be populated later, you can either specify no parameters at all and then use `Tilemap.create` or pass the map and tile dimensions here.
	* Note that all Tilemaps use a base tile size to calculate dimensions from, but that a TilemapLayer may have its own unique tile size that overrides it.
	* A Tile map is rendered to the display using a TilemapLayer. It is not added to the display list directly itself.
	* A map may have multiple layers. You can perform operations on the map data such as copying, pasting, filling and shuffling the tiles around.
	* 
	* @param game Game reference to the currently running game.
	* @param key The key of the tilemap data as stored in the Cache. If you're creating a blank map either leave this parameter out or pass `null`.
	* @param tileWidth The pixel width of a single map tile. If using CSV data you must specify this. Not required if using Tiled map data. - Default: 32
	* @param tileHeight The pixel height of a single map tile. If using CSV data you must specify this. Not required if using Tiled map data. - Default: 32
	* @param width The width of the map in tiles. If this map is created from Tiled or CSV data you don't need to specify this. - Default: 10
	* @param height The height of the map in tiles. If this map is created from Tiled or CSV data you don't need to specify this. - Default: 10
	*/
	function new(game:phaser.Game, ?key:String, ?tileWidth:Float, ?tileHeight:Float, ?width:Float, ?height:Float);
	
	static var CSV:Float;
	
	static var TILED_JSON:Float;
	
	static var NORTH:Float;
	
	static var EAST:Float;
	
	static var SOUTH:Float;
	
	static var WEST:Float;
	
	/**
	* An array of collision data (polylines, etc).
	*/
	var collision:Array<Dynamic>;
	
	/**
	* An array of tile indexes that collide.
	*/
	var collideIndexes:Array<Dynamic>;
	
	/**
	* The current layer.
	*/
	var currentLayer:Float;
	
	/**
	* Map data used for debug values only.
	*/
	var debugMap:Array<Dynamic>;
	
	/**
	* If set then console.log is used to dump out useful layer creation debug data.
	*/
	var enableDebug:Bool;
	
	/**
	* The format of the map data, either Phaser.Tilemap.CSV or Phaser.Tilemap.TILED_JSON.
	*/
	var format:Float;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* The height of the map (in tiles).
	*/
	var height:Float;
	
	/**
	* The height of the map in pixels based on height * tileHeight.
	*/
	var heightInPixels:Float;
	
	/**
	* An array of Tiled Image Layers.
	*/
	var images:Array<Dynamic>;
	
	/**
	* An array of Image Collections.
	*/
	var imagecollections:Array<ImageCollection>;
	
	/**
	* The key of this map data in the Phaser.Cache.
	*/
	var key:String;
	
	/**
	* The current layer object.
	*/
	var layer:Array<phaser.TilemapLayer>;
	
	/**
	* An array of Tilemap layer data.
	*/
	var layers:Array<Dynamic>;
	
	/**
	* An array of Tiled Object Layers.
	*/
	var objects:Array<Dynamic>;
	
	/**
	* The orientation of the map data (as specified in Tiled), usually 'orthogonal'.
	*/
	var orientation:String;
	
	/**
	* Map specific properties as specified in Tiled.
	*/
	var properties:Dynamic;
	
	var rayStepRate:Float;
	
	/**
	* The base height of the tiles in the map (in pixels).
	*/
	var tileHeight:Float;
	
	/**
	* The super array of Tiles.
	*/
	var tiles:Array<phaser.Tile>;
	
	/**
	* An array of Tilesets.
	*/
	var tilesets:Array<phaser.Tileset>;
	
	/**
	* The base width of the tiles in the map (in pixels).
	*/
	var tileWidth:Float;
	
	/**
	* The version of the map data (as specified in Tiled, usually 1).
	*/
	var version:Float;
	
	/**
	* The width of the map (in tiles).
	*/
	var width:Float;
	
	/**
	* The width of the map in pixels based on width * tileWidth.
	*/
	var widthInPixels:Float;
	
	/**
	* Adds an image to the map to be used as a tileset. A single map may use multiple tilesets.
	* Note that the tileset name can be found in the JSON file exported from Tiled, or in the Tiled editor.
	* 
	* @param tileset The name of the tileset as specified in the map data.
	* @param key The key of the Phaser.Cache image used for this tileset.If `undefined` or `null` it will look for an image with a key matching the tileset parameter.You can also pass in a BitmapData which can be used instead of an Image.
	* @param tileWidth The width of the tiles in the Tileset Image. If not given it will default to the map.tileWidth value, if that isn't set then 32. - Default: 32
	* @param tileHeight The height of the tiles in the Tileset Image. If not given it will default to the map.tileHeight value, if that isn't set then 32. - Default: 32
	* @param tileMargin The width of the tiles in the Tileset Image.
	* @param tileSpacing The height of the tiles in the Tileset Image.
	* @param gid If adding multiple tilesets to a blank/dynamic map, specify the starting GID the set will use here.
	* @return Returns the Tileset object that was created or updated, or null if it failed.
	*/
	function addTilesetImage(tileset:String, ?key:EitherType<String, phaser.BitmapData>, ?tileWidth:Float, ?tileHeight:Float, ?tileMargin:Float, ?tileSpacing:Float, ?gid:Float):phaser.Tileset;
	
	/**
	* Internal function.
	* 
	* @param layer The index of the TilemapLayer to operate on.
	*/
	function calculateFaces(layer:Float):Void;
	
	/**
	* Copies all of the tiles in the given rectangular block into the tilemap data buffer.
	* 
	* @param x X position of the top left of the area to copy (given in tiles, not pixels)
	* @param y Y position of the top left of the area to copy (given in tiles, not pixels)
	* @param width The width of the area to copy (given in tiles, not pixels)
	* @param height The height of the area to copy (given in tiles, not pixels)
	* @param layer The layer to copy the tiles from.
	* @return An array of the tiles that were copied.
	*/
	function copy(x:Float, y:Float, width:Float, height:Float, ?layer:Dynamic):Array<phaser.Tile>;
	
	/**
	* Creates an empty map of the given dimensions and one blank layer. If layers already exist they are erased.
	* 
	* @param name The name of the default layer of the map.
	* @param width The width of the map in tiles.
	* @param height The height of the map in tiles.
	* @param tileWidth The width of the tiles the map uses for calculations.
	* @param tileHeight The height of the tiles the map uses for calculations.
	* @param group Optional Group to add the layer to. If not specified it will be added to the World group.
	* @return The TilemapLayer object. This is an extension of Phaser.Image and can be moved around the display list accordingly.
	*/
	function create(name:String, width:Float, height:Float, tileWidth:Float, tileHeight:Float, ?group:phaser.Group):phaser.TilemapLayer;
	
	/**
	* Creates a new and empty layer on this Tilemap. By default TilemapLayers are fixed to the camera.
	* 
	* @param name The name of this layer. Must be unique within the map.
	* @param width The width of the layer in tiles.
	* @param height The height of the layer in tiles.
	* @param tileWidth The width of the tiles the layer uses for calculations.
	* @param tileHeight The height of the tiles the layer uses for calculations.
	* @param group Optional Group to add the layer to. If not specified it will be added to the World group.
	* @return The TilemapLayer object. This is an extension of Phaser.Image and can be moved around the display list accordingly.
	*/
	function createBlankLayer(name:String, width:Float, height:Float, tileWidth:Float, tileHeight:Float, ?group:phaser.Group):phaser.TilemapLayer;
	
	/**
	* Creates a Sprite for every {@link http://doc.mapeditor.org/reference/tmx-map-format/#object object} matching the `gid` argument. You can optionally specify the group that the Sprite will be created in. If none is
	* given it will be created in the World. All properties from the map data objectgroup are copied across to the Sprite, so you can use this as an easy way to
	* configure Sprite properties from within the map editor. For example giving an object a property of `alpha: 0.5` in the map editor will duplicate that when the
	* Sprite is created. You could also give it a value like: `body.velocity.x: 100` to set it moving automatically.
	* 
	* The `gid` argument is matched against:
	* 
	* 1. For a tile object, the tile identifier (`gid`); or
	* 2. The object's unique ID (`id`); or
	* 3. The object's `name` (a string)
	* 
	* @param name The name of the Object Group to create Sprites from.
	* @param gid The object's tile reference (gid), unique ID (id) or name.
	* @param key The Game.cache key of the image that this Sprite will use.
	* @param frame If the Sprite image contains multiple frames you can specify which one to use here.
	* @param exists The default exists state of the Sprite. - Default: true
	* @param autoCull The default autoCull state of the Sprite. Sprites that are autoCulled are culled from the camera if out of its range.
	* @param group Group to add the Sprite to. If not specified it will be added to the World group. - Default: Phaser.World
	* @param CustomClass If you wish to create your own class, rather than Phaser.Sprite, pass the class here. Your class must extend Phaser.Sprite and have the same constructor parameters. - Default: Phaser.Sprite
	* @param adjustY By default the Tiled map editor uses a bottom-left coordinate system. Phaser uses top-left. So most objects will appear too low down. This parameter moves them up by their height. - Default: true
	*/
	function createFromObjects(name:String, gid:Float, key:String, ?frame:Dynamic, ?exists:Bool, ?autoCull:Bool, ?group:phaser.Group, ?CustomClass:Dynamic, ?adjustY:Bool):Void;
	
	/**
	* Creates a Sprite for every object matching the given tile indexes in the map data.
	* You can specify the group that the Sprite will be created in. If none is given it will be created in the World.
	* You can optional specify if the tile will be replaced with another after the Sprite is created. This is useful if you want to lay down special
	* tiles in a level that are converted to Sprites, but want to replace the tile itself with a floor tile or similar once converted.
	* 
	* @param tiles The tile index, or array of indexes, to create Sprites from.
	* @param replacements The tile index, or array of indexes, to change a converted tile to. Set to `null` to not change.
	* @param key The Game.cache key of the image that this Sprite will use.
	* @param layer The layer to operate on.
	* @param group Group to add the Sprite to. If not specified it will be added to the World group. - Default: Phaser.World
	* @param properties An object that contains the default properties for your newly created Sprite. This object will be iterated and any matching Sprite property will be set.
	* @return The number of Sprites that were created.
	*/
	function createFromTiles(tiles:Dynamic, replacements:Dynamic, key:String, ?layer:Dynamic, ?group:phaser.Group, ?properties:Dynamic):Float;
	
	/**
	* Creates a new TilemapLayer object. By default TilemapLayers are fixed to the camera.
	* The `layer` parameter is important. If you've created your map in Tiled then you can get this by looking in Tiled and looking at the Layer name.
	* Or you can open the JSON file it exports and look at the layers[].name value. Either way it must match.
	* If you wish to create a blank layer to put your own tiles on then see Tilemap.createBlankLayer.
	* 
	* @param layer The layer array index value, or if a string is given the layer name, within the map data that this TilemapLayer represents.
	* @param width The rendered width of the layer, should never be wider than Game.width. If not given it will be set to Game.width.
	* @param height The rendered height of the layer, should never be wider than Game.height. If not given it will be set to Game.height.
	* @param group Optional Group to add the object to. If not specified it will be added to the World group.
	* @return The TilemapLayer object. This is an extension of Phaser.Sprite and can be moved around the display list accordingly.
	*/
	function createLayer(layer:Dynamic, ?width:Float, ?height:Float, ?group:phaser.Group):phaser.TilemapLayer;
	
	/**
	* Removes all layer data from this tile map and nulls the game reference.
	* Note: You are responsible for destroying any TilemapLayer objects you generated yourself, as Tilemap doesn't keep a reference to them.
	*/
	function destroy():Void;
	
	/**
	* Dumps the tilemap data out to the console.
	*/
	function dump():Void;
	
	/**
	* Fills the given area with the specified tile.
	* 
	* @param index The index of the tile that the area will be filled with.
	* @param x X position of the top left of the area to operate one, given in tiles, not pixels.
	* @param y Y position of the top left of the area to operate one, given in tiles, not pixels.
	* @param width The width in tiles of the area to operate on.
	* @param height The height in tiles of the area to operate on.
	* @param layer The layer to operate on.
	*/
	function fill(index:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Dynamic):Void;
	
	/**
	* For each tile in the given area defined by x/y and width/height run the given callback.
	* 
	* @param callback The callback. Each tile in the given area will be passed to this callback as the first and only parameter.
	* @param context The context under which the callback should be run.
	* @param x X position of the top left of the area to operate one, given in tiles, not pixels.
	* @param y Y position of the top left of the area to operate one, given in tiles, not pixels.
	* @param width The width in tiles of the area to operate on.
	* @param height The height in tiles of the area to operate on.
	* @param layer The layer to operate on.
	*/
	function forEach(callback:Dynamic, context:Dynamic, x:Float, y:Float, width:Float, height:Float, ?layer:Dynamic):Void;
	
	/**
	* Gets the image index based on its name.
	* 
	* @param name The name of the image to get.
	* @return The index of the image in this tilemap, or null if not found.
	*/
	function getImageIndex(name:String):Float;
	
	/**
	* Gets the layer index based on the layers name.
	* 
	* @param location The local array to search.
	* @param name The name of the array element to get.
	* @return The index of the element in the array, or null if not found.
	*/
	function getIndex(location:Array<Dynamic>, name:String):Float;
	
	/**
	* Gets the TilemapLayer index as used in the setCollision calls.
	* 
	* @param layer The layer to operate on. If not given will default to this.currentLayer.
	* @return The TilemapLayer index.
	*/
	function getLayer(layer:Dynamic):Float;
	
	/**
	* Gets the layer index based on its name.
	* 
	* @param name The name of the layer to get.
	* @return The index of the layer in this tilemap, or null if not found.
	*/
	function getLayerIndex(name:String):Float;
	
	function getObjectIndex(name:String):Float;
	
	/**
	* Gets a tile from the Tilemap Layer. The coordinates are given in tile values.
	* 
	* @param x X position to get the tile from (given in tile units, not pixels)
	* @param y Y position to get the tile from (given in tile units, not pixels)
	* @param layer The layer to get the tile from.
	* @param nonNull If true getTile won't return null for empty tiles, but a Tile object with an index of -1.
	* @return The tile at the given coordinates or null if no tile was found or the coordinates were invalid.
	*/
	function getTile(x:Float, y:Float, ?layer:Dynamic, ?nonNull:Bool):phaser.Tile;
	
	/**
	* Gets the tile above the tile coordinates given.
	* Mostly used as an internal function by calculateFaces.
	* 
	* @param layer The local layer index to get the tile from. Can be determined by Tilemap.getLayer().
	* @param x The x coordinate to get the tile from. In tiles, not pixels.
	* @param y The y coordinate to get the tile from. In tiles, not pixels.
	*/
	function getTileAbove(layer:Float, x:Float, y:Float):phaser.Tile;
	
	/**
	* Gets the tile below the tile coordinates given.
	* Mostly used as an internal function by calculateFaces.
	* 
	* @param layer The local layer index to get the tile from. Can be determined by Tilemap.getLayer().
	* @param x The x coordinate to get the tile from. In tiles, not pixels.
	* @param y The y coordinate to get the tile from. In tiles, not pixels.
	*/
	function getTileBelow(layer:Float, x:Float, y:Float):phaser.Tile;
	
	/**
	* Gets the tile to the left of the tile coordinates given.
	* Mostly used as an internal function by calculateFaces.
	* 
	* @param layer The local layer index to get the tile from. Can be determined by Tilemap.getLayer().
	* @param x The x coordinate to get the tile from. In tiles, not pixels.
	* @param y The y coordinate to get the tile from. In tiles, not pixels.
	*/
	function getTileLeft(layer:Float, x:Float, y:Float):phaser.Tile;
	
	/**
	* Gets the tile to the right of the tile coordinates given.
	* Mostly used as an internal function by calculateFaces.
	* 
	* @param layer The local layer index to get the tile from. Can be determined by Tilemap.getLayer().
	* @param x The x coordinate to get the tile from. In tiles, not pixels.
	* @param y The y coordinate to get the tile from. In tiles, not pixels.
	*/
	function getTileRight(layer:Float, x:Float, y:Float):phaser.Tile;
	
	/**
	* Gets the tileset index based on its name.
	* 
	* @param name The name of the tileset to get.
	* @return The index of the tileset in this tilemap, or null if not found.
	*/
	function getTilesetIndex(name:String):Float;
	
	/**
	* Gets a tile from the Tilemap layer. The coordinates are given in pixel values.
	* 
	* @param x X position to get the tile from (given in pixels)
	* @param y Y position to get the tile from (given in pixels)
	* @param tileWidth The width of the tiles. If not given the map default is used.
	* @param tileHeight The height of the tiles. If not given the map default is used.
	* @param layer The layer to get the tile from.
	* @param nonNull If true getTile won't return null for empty tiles, but a Tile object with an index of -1.
	* @return The tile at the given coordinates.
	*/
	function getTileWorldXY(x:Float, y:Float, ?tileWidth:Float, ?tileHeight:Float, ?layer:EitherType<Float, EitherType<String, phaser.TilemapLayer>>, ?nonNull:Bool):phaser.Tile;
	
	/**
	* Checks if there is a tile at the given location.
	* 
	* @param x X position to check if a tile exists at (given in tile units, not pixels)
	* @param y Y position to check if a tile exists at (given in tile units, not pixels)
	* @param layer The layer to set as current.
	* @return True if there is a tile at the given location, otherwise false.
	*/
	function hasTile(x:Float, y:Float, layer:phaser.TilemapLayer):Bool;
	
	/**
	* Pastes a previously copied block of tile data into the given x/y coordinates. Data should have been prepared with Tilemap.copy.
	* 
	* @param x X position of the top left of the area to paste to (given in tiles, not pixels)
	* @param y Y position of the top left of the area to paste to (given in tiles, not pixels)
	* @param tileblock The block of tiles to paste.
	* @param layer The layer to paste the tiles into.
	*/
	function paste(x:Float, y:Float, tileblock:Array<phaser.Tile>, ?layer:Dynamic):Void;
	
	/**
	* Puts a tile of the given index value at the coordinate specified.
	* If you pass `null` as the tile it will pass your call over to Tilemap.removeTile instead.
	* 
	* @param tile The index of this tile to set or a Phaser.Tile object. If null the tile is removed from the map.
	* @param x X position to place the tile (given in tile units, not pixels)
	* @param y Y position to place the tile (given in tile units, not pixels)
	* @param layer The layer to modify.
	* @return The Tile object that was created or added to this map.
	*/
	function putTile(tile:Dynamic, x:Float, y:Float, ?layer:Dynamic):phaser.Tile;
	
	/**
	* Puts a tile into the Tilemap layer. The coordinates are given in pixel values.
	* 
	* @param tile The index of this tile to set or a Phaser.Tile object.
	* @param x X position to insert the tile (given in pixels)
	* @param y Y position to insert the tile (given in pixels)
	* @param tileWidth The width of the tile in pixels.
	* @param tileHeight The height of the tile in pixels.
	* @param layer The layer to modify.
	* @return The Tile object that was created or added to this map.
	*/
	function putTileWorldXY(tile:Dynamic, x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:Dynamic):Void;
	
	/**
	* Randomises a set of tiles in a given area.
	* 
	* @param x X position of the top left of the area to operate one, given in tiles, not pixels.
	* @param y Y position of the top left of the area to operate one, given in tiles, not pixels.
	* @param width The width in tiles of the area to operate on.
	* @param height The height in tiles of the area to operate on.
	* @param layer The layer to operate on.
	*/
	function random(x:Float, y:Float, width:Float, height:Float, ?layer:Dynamic):Void;
	
	/**
	* Removes all layers from this tile map.
	*/
	function removeAllLayers():Void;
	
	/**
	* Removes the tile located at the given coordinates and updates the collision data.
	* 
	* @param x X position to place the tile (given in tile units, not pixels)
	* @param y Y position to place the tile (given in tile units, not pixels)
	* @param layer The layer to modify.
	* @return The Tile object that was removed from this map.
	*/
	function removeTile(x:Float, y:Float, ?layer:Dynamic):phaser.Tile;
	
	/**
	* Removes the tile located at the given coordinates and updates the collision data. The coordinates are given in pixel values.
	* 
	* @param x X position to insert the tile (given in pixels)
	* @param y Y position to insert the tile (given in pixels)
	* @param tileWidth The width of the tile in pixels.
	* @param tileHeight The height of the tile in pixels.
	* @param layer The layer to modify.
	* @return The Tile object that was removed from this map.
	*/
	function removeTileWorldXY(x:Float, y:Float, tileWidth:Float, tileHeight:Float, ?layer:Dynamic):phaser.Tile;
	
	/**
	* Scans the given area for tiles with an index matching `source` and updates their index to match `dest`.
	* 
	* @param source The tile index value to scan for.
	* @param dest The tile index value to replace found tiles with.
	* @param x X position of the top left of the area to operate one, given in tiles, not pixels.
	* @param y Y position of the top left of the area to operate one, given in tiles, not pixels.
	* @param width The width in tiles of the area to operate on.
	* @param height The height in tiles of the area to operate on.
	* @param layer The layer to operate on.
	*/
	function replace(source:Float, dest:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Dynamic):Void;
	
	/**
	* Searches the entire map layer for the first tile matching the given index, then returns that Phaser.Tile object.
	* If no match is found it returns null.
	* The search starts from the top-left tile and continues horizontally until it hits the end of the row, then it drops down to the next column.
	* If the reverse boolean is true, it scans starting from the bottom-right corner traveling up to the top-left.
	* 
	* @param index The tile index value to search for.
	* @param skip The number of times to skip a matching tile before returning.
	* @param reverse If true it will scan the layer in reverse, starting at the bottom-right. Otherwise it scans from the top-left.
	* @param layer The layer to get the tile from.
	* @return The first (or n skipped) tile with the matching index.
	*/
	function searchTileIndex(index:Float, ?skip:Float, ?reverse:Bool, ?layer:Dynamic):phaser.Tile;
	
	/**
	* Sets collision on the given tile or tiles. You can pass in either a single numeric index or an array of indexes: [2, 3, 15, 20].
	* The `collides` parameter controls if collision will be enabled (true) or disabled (false).
	* 
	* Collision-enabled tiles can be collided against Sprites using {@link Phaser.Physics.Arcade#collide}.
	* 
	* @param indexes Either a single tile index, or an array of tile IDs to be checked for collision.
	* @param collides If true it will enable collision. If false it will clear collision. - Default: true
	* @param layer The layer to operate on. If not given will default to this.currentLayer.
	* @param recalculate Recalculates the tile faces after the update. - Default: true
	*/
	function setCollision(indexes:Dynamic, ?collides:Bool, ?layer:Dynamic, ?recalculate:Bool):Void;
	
	/**
	* Sets collision on a range of tiles where the tile IDs increment sequentially.
	* Calling this with a start value of 10 and a stop value of 14 would set collision for tiles 10, 11, 12, 13 and 14.
	* The `collides` parameter controls if collision will be enabled (true) or disabled (false).
	* 
	* @param start The first index of the tile to be set for collision.
	* @param stop The last index of the tile to be set for collision.
	* @param collides If true it will enable collision. If false it will clear collision. - Default: true
	* @param layer The layer to operate on. If not given will default to this.currentLayer.
	* @param recalculate Recalculates the tile faces after the update. - Default: true
	*/
	function setCollisionBetween(start:Float, stop:Float, ?collides:Bool, ?layer:Dynamic, ?recalculate:Bool):Void;
	
	/**
	* Sets collision on all tiles in the given layer, except for the IDs of those in the given array.
	* The `collides` parameter controls if collision will be enabled (true) or disabled (false).
	* 
	* @param indexes An array of the tile IDs to not be counted for collision.
	* @param collides If true it will enable collision. If false it will clear collision. - Default: true
	* @param layer The layer to operate on. If not given will default to this.currentLayer.
	* @param recalculate Recalculates the tile faces after the update. - Default: true
	*/
	function setCollisionByExclusion(indexes:Array<Dynamic>, ?collides:Bool, ?layer:Dynamic, ?recalculate:Bool):Void;
	
	/**
	* Sets collision values on a tile in the set.
	* You shouldn't usually call this method directly, instead use setCollision, setCollisionBetween or setCollisionByExclusion.
	* 
	* @param index The index of the tile on the layer.
	* @param collides If true it will enable collision on the tile. If false it will clear collision values from the tile. - Default: true
	* @param layer The layer to operate on. If not given will default to this.currentLayer.
	* @param recalculate Recalculates the tile faces after the update. - Default: true
	*/
	function setCollisionByIndex(index:Float, ?collides:Bool, ?layer:Float, ?recalculate:Bool):Void;
	
	/**
	* Sets the current layer to the given index.
	* 
	* @param layer The layer to set as current.
	*/
	function setLayer(layer:Dynamic):Void;
	
	/**
	* Turn off/on the recalculation of faces for tile or collision updates.
	* `setPreventRecalculate(true)` puts recalculation on hold while `setPreventRecalculate(false)` recalculates all the changed layers.
	* 
	* @param value If true it will put the recalculation on hold.
	*/
	function setPreventRecalculate(value:Bool):Void;
	
	/**
	* Sets a global collision callback for the given tile index within the layer. This will affect all tiles on this layer that have the same index.
	* If a callback is already set for the tile index it will be replaced. Set the callback to null to remove it.
	* If you want to set a callback for a tile at a specific location on the map then see setTileLocationCallback.
	* 
	* Return `true` from the callback to continue separating the tile and colliding object, or `false` to cancel the collision for the current tile (see {@link Phaser.Physics.Arcade#separateTile}).
	* 
	* @param indexes Either a single tile index, or an array of tile indexes to have a collision callback set for.
	* @param callback The callback that will be invoked when the tile is collided with (via {
	* @link Phaser.Physics.Arcade#collide}).
	* @param callbackContext The context under which the callback is called.
	* @param layer The layer to operate on. If not given will default to this.currentLayer.
	*/
	function setTileIndexCallback(indexes:Dynamic, callback:Dynamic, callbackContext:Dynamic, ?layer:Dynamic):Void;
	
	/**
	* Sets a global collision callback for the given map location within the layer. This will affect all tiles on this layer found in the given area.
	* If a callback is already set for the tile index it will be replaced. Set the callback to null to remove it.
	* If you want to set a callback for a tile at a specific location on the map then see setTileLocationCallback.
	* 
	* Return `true` from the callback to continue separating the tile and colliding object, or `false` to cancel the collision for the current tile (see {@link Phaser.Physics.Arcade#separateTile}).
	* 
	* @param x X position of the top left of the area to copy (given in tiles, not pixels)
	* @param y Y position of the top left of the area to copy (given in tiles, not pixels)
	* @param width The width of the area to copy (given in tiles, not pixels)
	* @param height The height of the area to copy (given in tiles, not pixels)
	* @param callback The callback that will be invoked when the tile is collided with (via {
	* @link Phaser.Physics.Arcade#collide}).
	* @param callbackContext The context under which the callback is called.
	* @param layer The layer to operate on. If not given will default to this.currentLayer.
	*/
	function setTileLocationCallback(x:Float, y:Float, width:Float, height:Float, callback:Dynamic, callbackContext:Dynamic, ?layer:Dynamic):Void;
	
	/**
	* Sets the base tile size for the map.
	* 
	* @param tileWidth The width of the tiles the map uses for calculations.
	* @param tileHeight The height of the tiles the map uses for calculations.
	*/
	function setTileSize(tileWidth:Float, tileHeight:Float):Void;
	
	/**
	* Shuffles a set of tiles in a given area. It will only randomise the tiles in that area, so if they're all the same nothing will appear to have changed!
	* 
	* @param x X position of the top left of the area to operate one, given in tiles, not pixels.
	* @param y Y position of the top left of the area to operate one, given in tiles, not pixels.
	* @param width The width in tiles of the area to operate on.
	* @param height The height in tiles of the area to operate on.
	* @param layer The layer to operate on.
	*/
	function shuffle(x:Float, y:Float, width:Float, height:Float, layer:Dynamic):Void;
	
	/**
	* Scans the given area for tiles with an index matching tileA and swaps them with tileB.
	* 
	* @param tileA First tile index.
	* @param tileB Second tile index.
	* @param x X position of the top left of the area to operate one, given in tiles, not pixels.
	* @param y Y position of the top left of the area to operate one, given in tiles, not pixels.
	* @param width The width in tiles of the area to operate on.
	* @param height The height in tiles of the area to operate on.
	* @param layer The layer to operate on.
	*/
	function swap(tileA:Float, tileB:Float, x:Float, y:Float, width:Float, height:Float, ?layer:Dynamic):Void;
	
}

