package phaser.plugin;

/**
* AStar is a phaser pathfinding plugin based on an A* kind of algorythm
* It works with the Phaser.Tilemap
*/
@:native("Phaser.Plugin.AStar")
extern class AStar extends phaser.Plugin {

	static var VERSION:String;
	
	static var COST_ORTHOGONAL:Float;
	
	static var COST_DIAGONAL:Float;
	
	static var DISTANCE_MANHATTAN:String;
	
	static var DISTANCE_EUCLIDIAN:String;
	
	/**
	* AStar is a phaser pathfinding plugin based on an A* kind of algorythm
	* It works with the Phaser.Tilemap
	* 
	* @param parent The object that owns this plugin, usually Phaser.PluginManager.
	*/
	function new(parent:pixi.DisplayObject);
	
	var version:String;
	
	/**
	* Find a path between to tiles coordinates
	* 
	* @param startPoint The start point x, y in tiles coordinates to search a path.
	* @param goalPoint The goal point x, y in tiles coordinates that you trying to reach.
	* @return The Phaser.Plugin.AStar.AStarPath that results
	*/
	function findPath(startPoint:phaser.Point, goalPoint:phaser.Point):phaser.plugin.astar.AStarPath;
	
	function isWalkable(x:Float, y:Float):Bool;
	
	/**
	* Sets the Phaser.Tilemap used to searchPath into.
	* 
	* @param map the Phaser.Tilemap used to searchPath into. It must have a tileset with tile porperties to know if tiles are walkable or not.
	* @param layerName The name of the layer that handle tiles.
	* @param tilesetName The name of the tileset that have walkable properties.
	* @return The Phaser.Plugin.AStar itself.
	*/
	function setAStarMap(map:phaser.Tilemap, layerName:String, tilesetName:String):phaser.plugin.AStar;
	
}

