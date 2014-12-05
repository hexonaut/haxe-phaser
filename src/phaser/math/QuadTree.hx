package phaser.math;

@:native("Phaser.QuadTree")
extern class QuadTree {
	
	/**
	 * A QuadTree implementation. The original code was a conversion of the Java code posted to GameDevTuts.
	 * However I've tweaked it massively to add node indexing, removed lots of temp. var creation and significantly increased performance as a result.
	 * Original version at <a href='https://github.com/timohausmann/quadtree-js/'>https://github.com/timohausmann/quadtree-js/</a>
	 */
	function new (x:Float, y:Float, width:Float, height:Float, ?maxObjects:Float = 10, ?maxLevels:Float = 4, ?level:Float = 0);
	
	/**
	 * The maximum number of objects per node.
	 */
	var maxObjects:Float;
	
	/**
	 * The maximum number of levels to break down to.
	 */
	var maxLevels:Float;
	
	/**
	 * The current level.
	 */
	var level:Float;
	
	/**
	 * Object that contains the quadtree bounds.
	 */
	var bounds:Dynamic;
	
	/**
	 * Array of quadtree children.
	 */
	var objects:Array<Dynamic>;
	
	/**
	 * Array of associated child nodes.
	 */
	var nodes:Array<Dynamic>;
	
	/**
	 * Internal empty array.
	 */
	var _empty:Array<Dynamic>;
	
	/**
	 * Resets the QuadTree.
	 */
	function reset (x:Float, y:Float, width:Float, height:Float, ?maxObjects:Float = 10, ?maxLevels:Float = 4, ?level:Float = 0):Void;
	
	/**
	 * Populates this quadtree with the children of the given Group. In order to be added the child must exist and have a body property.
	 */
	function populate (group:phaser.core.Group):Void;
	
	/**
	 * Handler for the populate method.
	 */
	@:overload(function (sprite:phaser.gameobjects.Sprite):Void {})
	function populateHandler (sprite:Dynamic):Void;
	
	/**
	 * Split the node into 4 subnodes
	 */
	function split ():Void;
	
	/**
	 * Insert the object into the node. If the node exceeds the capacity, it will split and add all objects to their corresponding subnodes.
	 */
	@:overload(function (body:phaser.physics.arcade.Body):Void {})
	function insert (body:Dynamic):Void;
	
	/**
	 * Determine which node the object belongs to.
	 */
	@:overload(function (rect:phaser.geom.Rectangle):Float {})
	function getIndex (rect:Dynamic):Float;
	
	/**
	 * Return all objects that could collide with the given Sprite or Rectangle.
	 */
	@:overload(function (source:phaser.gameobjects.Sprite):Array<Dynamic> {})
	function retrieve (source:phaser.geom.Rectangle):Array<Dynamic>;
	
	/**
	 * Clear the quadtree.
	 */
	function clear ():Void;
	
}
