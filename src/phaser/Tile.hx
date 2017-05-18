package phaser;

/**
* A Tile is a representation of a single tile within the Tilemap.
*/
@:native("Phaser.Tile")
extern class Tile {

	/**
	* A Tile is a representation of a single tile within the Tilemap.
	* 
	* @param layer The layer in the Tilemap data that this tile belongs to.
	* @param index The index of this tile type in the core map data.
	* @param x The x coordinate of this tile.
	* @param y The y coordinate of this tile.
	* @param width Width of the tile.
	* @param height Height of the tile.
	*/
	function new(layer:Dynamic, index:Float, x:Float, y:Float, width:Float, height:Float);
	
	/**
	* The alpha value at which this tile is drawn to the canvas.
	*/
	var alpha:Float;
	
	/**
	* The sum of the y and height properties.
	*/
	var bottom:Float;
	
	var callback:Dynamic;
	
	var callbackContext:Dynamic;
	
	/**
	* The width of the tile in pixels.
	*/
	var centerX:Float;
	
	/**
	* The height of the tile in pixels.
	*/
	var centerY:Float;
	
	/**
	* True if this tile can collide on any of its faces or has a collision callback set.
	*/
	var canCollide:Bool;
	
	/**
	* Indicating collide with any object on the bottom.
	*/
	var collideDown:Bool;
	
	/**
	* Indicating collide with any object on the left.
	*/
	var collideLeft:Bool;
	
	var collideNone:Bool;
	
	/**
	* Indicating collide with any object on the right.
	*/
	var collideRight:Bool;
	
	/**
	* Tile collision callback.
	*/
	var collisionCallback:Dynamic;
	
	/**
	* The context in which the collision callback will be called.
	*/
	var collisionCallbackContext:Dynamic;
	
	/**
	* True if this tile can collide on any of its faces.
	*/
	var collides:Bool;
	
	/**
	* Indicating collide with any object on the top.
	*/
	var collideUp:Bool;
	
	/**
	* Is the bottom of this tile an interesting edge?
	*/
	var faceBottom:Bool;
	
	/**
	* Is the left of this tile an interesting edge?
	*/
	var faceLeft:Bool;
	
	/**
	* Is the right of this tile an interesting edge?
	*/
	var faceRight:Bool;
	
	/**
	* Is the top of this tile an interesting edge?
	*/
	var faceTop:Bool;
	
	var game:phaser.Game;
	
	/**
	* The height of the tile in pixels.
	*/
	var height:Float;
	
	/**
	* The index of this tile within the map data corresponding to the tileset, or -1 if this represents a blank/null tile.
	*/
	var index:Float;
	
	/**
	* The layer in the Tilemap data that this tile belongs to.
	*/
	var layer:Dynamic;
	
	/**
	* The x value in pixels.
	*/
	var left:Float;
	
	/**
	* Tile specific properties.
	*/
	var properties:Dynamic;
	
	/**
	* The sum of the x and width properties.
	*/
	var right:Float;
	
	/**
	* Has this tile been walked / turned into a poly?
	*/
	var scanned:Bool;
	
	/**
	* The y value.
	*/
	var top:Float;
	
	/**
	* The width of the tile in pixels.
	*/
	var width:Float;
	
	/**
	* The x map coordinate of this tile.
	*/
	var worldX:Float;
	
	/**
	* The y map coordinate of this tile.
	*/
	var worldY:Float;
	
	/**
	* The x map coordinate of this tile.
	*/
	var x:Float;
	
	/**
	* The y map coordinate of this tile.
	*/
	var y:Float;
	
	/**
	* Copies the tile data and properties from the given tile to this tile.
	* 
	* @param tile The tile to copy from.
	*/
	function copy(tile:phaser.Tile):phaser.Tile;
	
	/**
	* Check if the given x and y world coordinates are within this Tile.
	* 
	* @param x The x coordinate to test.
	* @param y The y coordinate to test.
	* @return True if the coordinates are within this Tile, otherwise false.
	*/
	function containsPoint(x:Float, y:Float):Bool;
	
	/**
	* Clean up memory.
	*/
	function destroy():Void;
	
	/**
	* Check for intersection with this tile.
	* 
	* @param x The x axis in pixels.
	* @param y The y axis in pixels.
	* @param right The right point.
	* @param bottom The bottom point.
	*/
	function intersects(x:Float, y:Float, right:Float, bottom:Float):Bool;
	
	function isInterested(collides:Bool, faces:Bool):Bool;
	
	/**
	* Reset collision status flags.
	*/
	function resetCollision():Void;
	
	/**
	* Sets the collision flags for each side of this tile and updates the interesting faces list.
	* 
	* @param left Indicating collide with any object on the left.
	* @param right Indicating collide with any object on the right.
	* @param up Indicating collide with any object on the top.
	* @param down Indicating collide with any object on the bottom.
	*/
	function setCollision(left:Bool, right:Bool, up:Bool, down:Bool):Void;
	
	/**
	* Set a callback to be called when this tile is hit by an object.
	* The callback must true true for collision processing to take place.
	* 
	* @param callback Callback function.
	* @param context Callback will be called within this context.
	*/
	function setCollisionCallback(callback:Dynamic, context:Dynamic):Void;
	
}

