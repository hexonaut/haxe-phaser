package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja.Tile")
extern class Tile {
	
	/**
	 * Ninja Physics Tile constructor.
	 * A Tile is defined by its width, height and type. It's type can include slope data, such as 45 degree slopes, or convex slopes.
	 * Understand that for any type including a slope (types 2 to 29) the Tile must be SQUARE, i.e. have an equal width and height.
	 * Also note that as Tiles are primarily used for levels they have gravity disabled and world bounds collision disabled by default.
	 * 
	 * Note: This class could be massively optimised and reduced in size. I leave that challenge up to you.
	 */
	function new (body:phaser.physics.ninja.Body, x:Float, y:Float, width:Float, height:Float, ?type:Float = 1);
	
	/**
	 * A reference to the body that owns this shape.
	 */
	var body:phaser.physics.ninja.Body;
	
	/**
	 * A reference to the physics system.
	 */
	var system:phaser.physics.ninja.World;
	
	/**
	 * The ID of this Tile.
	 */
	var id(default, null):Float;
	
	/**
	 * The type of this Tile.
	 */
	var type(default, null):Float;
	
	/**
	 * The position of this object.
	 */
	var pos:phaser.geom.Point;
	
	/**
	 * The position of this object in the previous update.
	 */
	var oldpos:phaser.geom.Point;
	
	/**
	 * Half the width.
	 */
	var xw(default, null):Float;
	
	/**
	 * Half the height.
	 */
	var yw(default, null):Float;
	
	/**
	 * The width.
	 */
	var width(default, null):Float;
	
	/**
	 * The height.
	 */
	var height(default, null):Float;
	
	/**
	 * The velocity of this object.
	 */
	var velocity:phaser.geom.Point;
	
	/**
	 * Internal var.
	 */
	var signx:Float;
	
	/**
	 * Internal var.
	 */
	var signy:Float;
	
	/**
	 * Internal var.
	 */
	var sx:Float;
	
	/**
	 * Internal var.
	 */
	var sy:Float;
	
	/**
	 * Updates this objects position.
	 */
	function integrate ():Void;
	
	/**
	 * Tiles cannot collide with the world bounds, it's up to you to keep them where you want them. But we need this API stub to satisfy the Body.
	 */
	function collideWorldBounds ():Void;
	
	/**
	 * Process a world collision and apply the resulting forces.
	 */
	function reportCollisionVsWorld (px:Float, py:Float, dx:Float, dy:Float, obj:Float):Void;
	
	/**
	 * Tiles cannot collide with the world bounds, it's up to you to keep them where you want them. But we need this API stub to satisfy the Body.
	 */
	function setType (id:Float):Void;
	
	/**
	 * Sets this tile to be empty.
	 */
	function clear ():Void;
	
	/**
	 * Destroys this Tiles reference to Body and System.
	 */
	function destroy ():Void;
	
	/**
	 * This converts a tile from implicitly-defined (via id), to explicit (via properties).
	 * Don't call directly, instead of setType.
	 */
	function updateType ():Void;
	
	/**
	 * @name Phaser.Physics.Ninja.Tile#x
	 */
	var x:Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Tile#y
	 */
	var y:Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Tile#bottom
	 */
	var bottom(default, null):Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Tile#right
	 */
	var right(default, null):Float;
	
}
