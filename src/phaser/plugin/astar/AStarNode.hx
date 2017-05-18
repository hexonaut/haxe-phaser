package phaser.plugin.astar;

/**
* AStarNode is an object that stores AStar value. Each tile have an AStarNode in their properties
*/
@:native("Phaser.Plugin.AStar.AStarNode")
extern class AStarNode {

	/**
	* AStarNode is an object that stores AStar value. Each tile have an AStarNode in their properties
	* 
	* @param x The x coordinate of the tile.
	* @param y The y coordinate of the tile.
	* @param isWalkable Is this tile is walkable?
	*/
	function new(x:Float, y:Float, isWalkable:Bool);
	
	/**
	* The x coordinate of the tile.
	*/
	var x:Float;
	
	/**
	* The y coordinate of the tile.
	*/
	var y:Float;
	
	/**
	* The total travel cost from the start point. Sum of COST_ORTHOGONAL and COST_DIAGONAL
	*/
	var g:Float;
	
	/**
	* The remaing distance as the crow flies between this node and the goal.
	*/
	var h:Float;
	
	/**
	* The weight. Sum of g + h.
	*/
	var f:Float;
	
	/**
	* Where do we come from? It's an AStarNode reference needed to reconstruct a path backwards (from goal to start point)
	*/
	var parent:phaser.plugin.astar.AStarNode;
	
	/**
	* The cost to travel to this node, COST_ORTHOGONAL or COST_DIAGONAL
	*/
	var travelCost:Float;
	
	/**
	* Is this node is walkable?
	*/
	var walkable:Bool;
	
}

