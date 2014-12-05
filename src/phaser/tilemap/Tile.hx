package phaser.tilemap;

@:native("Phaser.Tile")
extern class Tile {
	
	/**
	 * A Tile is a representation of a single tile within the Tilemap.
	 */
	function new (layer:Dynamic, index:Float, x:Float, y:Float, width:Float, height:Float);
	
	/**
	 * The layer in the Tilemap data that this tile belongs to.
	 */
	var layer:Dynamic;
	
	/**
	 * The index of this tile within the map data corresponding to the tileset, or -1 if this represents a blank/null tile.
	 */
	var index:Float;
	
	/**
	 * The x map coordinate of this tile.
	 */
	var x:Float;
	
	/**
	 * The y map coordinate of this tile.
	 */
	var y:Float;
	
	/**
	 * The x map coordinate of this tile.
	 */
	var worldX:Float;
	
	/**
	 * The y map coordinate of this tile.
	 */
	var worldY:Float;
	
	/**
	 * The width of the tile in pixels.
	 */
	var width:Float;
	
	/**
	 * The height of the tile in pixels.
	 */
	var height:Float;
	
	/**
	 * The width of the tile in pixels.
	 */
	var centerX:Float;
	
	/**
	 * The height of the tile in pixels.
	 */
	var centerY:Float;
	
	/**
	 * The alpha value at which this tile is drawn to the canvas.
	 */
	var alpha:Float;
	
	/**
	 * Tile specific properties.
	 */
	var properties:Dynamic;
	
	/**
	 * Has this tile been walked / turned into a poly?
	 */
	var scanned:Bool;
	
	/**
	 * Is the top of this tile an interesting edge?
	 */
	var faceTop:Bool;
	
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
	 * Indicating collide with any object on the left.
	 */
	var collideLeft:Bool;
	
	/**
	 * Indicating collide with any object on the right.
	 */
	var collideRight:Bool;
	
	/**
	 * Indicating collide with any object on the top.
	 */
	var collideUp:Bool;
	
	/**
	 * Indicating collide with any object on the bottom.
	 */
	var collideDown:Bool;
	
	/**
	 * Tile collision callback.
	 */
	var collisionCallback:Dynamic;
	
	/**
	 * The context in which the collision callback will be called.
	 */
	var collisionCallbackContext:Dynamic;
	
	/**
	 * Check if the given x and y world coordinates are within this Tile.
	 */
	function containsPoint (x:Float, y:Float):Bool;
	
	/**
	 * Check for intersection with this tile.
	 */
	function intersects (x:Float, y:Float, right:Float, bottom:Float):Void;
	
	/**
	 * Set a callback to be called when this tile is hit by an object.
	 * The callback must true true for collision processing to take place.
	 */
	function setCollisionCallback (callback:Dynamic, context:Dynamic):Void;
	
	/**
	 * Clean up memory.
	 */
	function destroy ():Void;
	
	/**
	 * Sets the collision flags for each side of this tile and updates the interesting faces list.
	 */
	function setCollision (left:Bool, right:Bool, up:Bool, down:Bool):Void;
	
	/**
	 * Reset collision status flags.
	 */
	function resetCollision ():Void;
	
	/**
	 * Is this tile interesting?
	 */
	function isInteresting (collides:Bool, faces:Bool):Bool;
	
	/**
	 * Copies the tile data and properties from the given tile to this tile.
	 */
	function copy (tile:phaser.tilemap.Tile):Void;
	
	/**
	 * @name Phaser.Tile#collides
	 */
	var collides(default, null):Bool;
	
	/**
	 * @name Phaser.Tile#canCollide
	 */
	var canCollide(default, null):Bool;
	
	/**
	 * @name Phaser.Tile#left
	 */
	var left(default, null):Float;
	
	/**
	 * @name Phaser.Tile#right
	 */
	var right(default, null):Float;
	
	/**
	 * @name Phaser.Tile#top
	 */
	var top(default, null):Float;
	
	/**
	 * @name Phaser.Tile#bottom
	 */
	var bottom(default, null):Float;
	
}
