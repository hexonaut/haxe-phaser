package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja.AABB")
extern class AABB {
	
	/**
	 * Ninja Physics AABB constructor.
	 * Note: This class could be massively optimised and reduced in size. I leave that challenge up to you.
	 */
	function new (body:phaser.physics.ninja.Body, x:Float, y:Float, width:Float, height:Float);
	
	/**
	 * A reference to the body that owns this shape.
	 */
	var body:phaser.physics.ninja.Body;
	
	/**
	 * A reference to the physics system.
	 */
	var system:phaser.physics.ninja.World;
	
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
	 * Internal var.
	 */
	var oH:Float;
	
	/**
	 * Internal var.
	 */
	var oV:Float;
	
	/**
	 * The velocity of this object.
	 */
	var velocity:phaser.geom.Point;
	
	/**
	 * All of the collision response handlers.
	 */
	var aabbTileProjections:Dynamic;
	
	/**
	 * Updates this AABBs position.
	 */
	function integrate ():Void;
	
	/**
	 * Process a world collision and apply the resulting forces.
	 */
	function reportCollisionVsWorld (px:Float, py:Float, dx:Float, dy:Float, obj:Float):Void;
	
	/**
	 * Process a body collision and apply the resulting forces. Still very much WIP and doesn't work fully. Feel free to fix!
	 */
	function reportCollisionVsBody (px:Float, py:Float, dx:Float, dy:Float, obj:Float):Void;
	
	/**
	 * Collides this AABB against the world bounds.
	 */
	function collideWorldBounds ():Void;
	
	/**
	 * Collides this AABB against a AABB.
	 */
	function collideAABBVsAABB (aabb:phaser.physics.ninja.AABB):Void;
	
	/**
	 * Collides this AABB against a Tile.
	 */
	function collideAABBVsTile (tile:phaser.physics.ninja.Tile):Void;
	
	/**
	 * Resolves tile collision.
	 */
	function resolveTile (x:Float, y:Float, body:phaser.physics.ninja.AABB, tile:phaser.physics.ninja.Tile):Bool;
	
	/**
	 * Resolves Full tile collision.
	 */
	function projAABB_Full (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves Half tile collision.
	 */
	function projAABB_Half (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 45 Degree tile collision.
	 */
	function projAABB_45Deg (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 22 Degree tile collision.
	 */
	function projAABB_22DegS (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 22 Degree tile collision.
	 */
	function projAABB_22DegB (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 67 Degree tile collision.
	 */
	function projAABB_67DegS (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 67 Degree tile collision.
	 */
	function projAABB_67DegB (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves Convex tile collision.
	 */
	function projAABB_Convex (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves Concave tile collision.
	 */
	function projAABB_Concave (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Destroys this AABB's reference to Body and System
	 */
	function destroy ():Void;
	
	/**
	 * Render this AABB for debugging purposes.
	 */
	function render (context:Dynamic, xOffset:Float, yOffset:Float, color:String, filled:Bool):Void;
	
}
