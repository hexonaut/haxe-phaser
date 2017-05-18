package phaser;

/**
* A QuadTree implementation. The original code was a conversion of the Java code posted to GameDevTuts.
* However I've tweaked it massively to add node indexing, removed lots of temp. var creation and significantly increased performance as a result.
* Original version at https://github.com/timohausmann/quadtree-js/
*/
@:native("Phaser.QuadTree")
extern class QuadTree {

	/**
	* A QuadTree implementation. The original code was a conversion of the Java code posted to GameDevTuts.
	* However I've tweaked it massively to add node indexing, removed lots of temp. var creation and significantly increased performance as a result.
	* Original version at https://github.com/timohausmann/quadtree-js/
	* 
	* @param x The top left coordinate of the quadtree.
	* @param y The top left coordinate of the quadtree.
	* @param width The width of the quadtree in pixels.
	* @param height The height of the quadtree in pixels.
	* @param maxObjects The maximum number of objects per node. - Default: 10
	* @param maxLevels The maximum number of levels to iterate to. - Default: 4
	* @param level Which level is this?
	*/
	function new(x:Float, y:Float, width:Float, height:Float, ?maxObject:Float, ?maxLevels:Float, ?level:Float);
	
	/**
	* Object that contains the quadtree bounds.
	*/
	var bounds:{x:Float, y:Float, width:Float, height:Float, subWidth:Float, subHeight:Float, right:Float, bottom:Float};
	
	/**
	* The current level.
	*/
	var level:Float;
	
	/**
	* The maximum number of objects per node.
	* Default: 10
	*/
	var maxObjects:Float;
	
	/**
	* The maximum number of levels to break down to.
	* Default: 4
	*/
	var maxLevels:Float;
	
	/**
	* Array of quadtree children.
	*/
	var objects:Array<Dynamic>;
	
	/**
	* Array of associated child nodes.
	*/
	var nodes:Array<Dynamic>;
	
	/**
	* Clear the quadtree.
	*/
	function clear():Void;
	
	/**
	* Determine which node the object belongs to.
	* 
	* @param rect The bounds in which to check.
	* @return index - Index of the subnode (0-3), or -1 if rect cannot completely fit within a subnode and is part of the parent node.
	*/
	function getIndex(rect:Dynamic):Float;
	
	/**
	* Insert the object into the node. If the node exceeds the capacity, it will split and add all objects to their corresponding subnodes.
	* 
	* @param body The Body object to insert into the quadtree. Can be any object so long as it exposes x, y, right and bottom properties.
	*/
	function insert(body:Dynamic):Void;
	
	/**
	* Populates this quadtree with the children of the given Group. In order to be added the child must exist and have a body property.
	* 
	* @param group The Group to add to the quadtree.
	*/
	function populate(group:phaser.Group):Void;
	
	/**
	* Handler for the populate method.
	* 
	* @param sprite The Sprite to check.
	*/
	function populateHandler(sprite:phaser.Sprite):Void;
	
	/**
	* Resets the QuadTree.
	* 
	* @param x The top left coordinate of the quadtree.
	* @param y The top left coordinate of the quadtree.
	* @param width The width of the quadtree in pixels.
	* @param height The height of the quadtree in pixels.
	* @param maxObjects The maximum number of objects per node. - Default: 10
	* @param maxLevels The maximum number of levels to iterate to. - Default: 4
	* @param level Which level is this?
	*/
	function reset(x:Float, y:Float, width:Float, height:Float, ?maxObject:Float, ?maxLevels:Float, ?level:Float):Void;
	
	/**
	* Return all objects that could collide with the given Sprite or Rectangle.
	* 
	* @param source The source object to check the QuadTree against. Either a Sprite or Rectangle.
	* @return - Array with all detected objects.
	*/
	function retrieve(source:Dynamic):Array<Dynamic>;
	
	/**
	* Split the node into 4 subnodes
	*/
	function split():Void;
	
}

