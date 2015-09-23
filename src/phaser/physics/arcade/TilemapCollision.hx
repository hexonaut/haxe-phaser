package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade.TilemapCollision")
extern class TilemapCollision {
	
	/**
	 * The Arcade Physics Tile map collision methods.
	 */
	function new ();
	
	/**
	 * An internal function. Use Phaser.Physics.Arcade.collide instead.
	 */
	function collideSpriteVsTilemapLayer (sprite:phaser.gameobjects.Sprite, tilemapLayer:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	
	/**
	 * An internal function. Use Phaser.Physics.Arcade.collide instead.
	 */
	function collideGroupVsTilemapLayer (group:phaser.core.Group, tilemapLayer:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	
	/**
	 * The core separation function to separate a physics body and a tile.
	 */
	function separateTile (body:phaser.physics.arcade.Body, tile:phaser.tilemap.Tile):Bool;
	
	/**
	 * Check the body against the given tile on the X axis.
	 */
	function tileCheckX (body:phaser.physics.arcade.Body, tile:phaser.tilemap.Tile):Float;
	
	/**
	 * Check the body against the given tile on the Y axis.
	 */
	function tileCheckY (body:phaser.physics.arcade.Body, tile:phaser.tilemap.Tile):Float;
	
	/**
	 * Internal function to process the separation of a physics body from a tile.
	 */
	function processTileSeparationX (body:phaser.physics.arcade.Body, x:Float):Void;
	
	/**
	 * Internal function to process the separation of a physics body from a tile.
	 */
	function processTileSeparationY (body:phaser.physics.arcade.Body, y:Float):Void;
	
}
