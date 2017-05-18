package phaser.plugin.astar;

/**
* AStarPath is an object that stores a searchPath result.
*/
@:native("Phaser.Plugin.AStar.AStarPath")
extern class AStarPath {

	/**
	* AStarPath is an object that stores a searchPath result.
	* 
	* @param nodes An array of nodes coordinates sorted backward from goal to start point.
	* @param start The start AStarNode used for the searchPath.
	* @param goal The goal AStarNode used for the searchPath.
	*/
	function new(?nodes:Array<AStarNodeArray>, ?start:phaser.plugin.astar.AStarNode, ?goal:phaser.plugin.astar.AStarNode);
	
	/**
	* Array of AstarNodes x, y coordiantes that are the path solution from goal to start point.
	*/
	var nodes:Array<AStarNodeArray>;
	
	/**
	* Reference to the start point used by findPath.
	*/
	var start:phaser.plugin.astar.AStarNode;
	
	/**
	* Reference to the goal point used by findPath.
	*/
	var goal:phaser.plugin.astar.AStarNode;
	
	/**
	* Array of AStarNodes that the findPath algorythm has visited. Used for debug only.
	*/
	var visited:Array<phaser.plugin.astar.AStarNode>;
	
}

