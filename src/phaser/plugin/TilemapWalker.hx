package phaser.plugin;

/**
* Creates an object that is placed within a layer of a Phaser.Tilemap and can be moved around and rotated using the direction commands.
*/
@:native("Phaser.Plugin.TilemapWalker")
extern class TilemapWalker extends phaser.Plugin {

	/**
	* Creates an object that is placed within a layer of a Phaser.Tilemap and can be moved around and rotated using the direction commands.
	* 
	* @param game Game reference to the currently running game.
	* @param map A reference to the Tilemap this TilemapWalker belongs to.
	* @param layer The layer to operate on. If not given will default to this.currentLayer.
	* @param x X position of the top left of the area to copy (given in tiles, not pixels)
	* @param y Y position of the top left of the area to copy (given in tiles, not pixels)
	*/
	function new(game:phaser.Game, map:phaser.Tilemap, ?layer:Dynamic, ?x:Float, ?y:Float);
	
	/**
	* Does the TilemapWalker collide with the tiles in the map set for collision? If so it cannot move through them.
	* Default: true
	*/
	var collides:Bool;
	
	/**
	* A reference to the currently running Game.
	*/
	@:native("game")
	var TilemapWalker_game:phaser.Game;
	
	/**
	* An array containing a history of movements through the map.
	*/
	var history:Bool;
	
	/**
	* The direction the location marker is facing. You can rotate it using the turn and face methods.
	*/
	var facing:Float;
	
	/**
	* A reference to the Tilemap this TilemapWalker belongs to.
	*/
	var map:phaser.Tilemap;
	
	/**
	* The current marker location. You can move the marker with the movement methods.
	*/
	var location:phaser.Point;
	
	/**
	* The current layer of the location marker.
	*/
	var locationLayer:Float;
	
	function checkTile(x:Float, y:Float):Bool;
	
	function getTileFromLocation(x:Float, y:Float):phaser.Tile;
	
	function getTiles(width:Float, height:Float, ?center:Bool):Array<Dynamic>;
	
	function getTileBehind(?distance:Float):phaser.Tile;
	
	function getTileBehindLeft(?distance:Float):phaser.Tile;
	
	function getTileBehindRight(?distance:Float):phaser.Tile;
	
	function getTileAhead(?distance:Float):phaser.Tile;
	
	function getTileAheadLeft(?distance:Float):phaser.Tile;
	
	function getTileAheadRight(?distance:Float):phaser.Tile;
	
	function getTileLeft(distance:Float):phaser.Tile;
	
	function getTileRight(distance:Float):phaser.Tile;
	
	function moveForward():Bool;
	
	function moveBackward():Bool;
	
	function moveLeft():Bool;
	
	function moveRight():Bool;
	
	function putTile(index:Float):Void;
	
	function setLocation(x:Float, y:Float, ?layer:Dynamic):Bool;
	
	function turnLeft():Void;
	
	function turnRight():Void;
	
	function updateLocation(x:Float, y:Float):Bool;
	
}

