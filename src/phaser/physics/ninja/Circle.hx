package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja.Circle")
extern class Circle {
	
	/**
	 * Ninja Physics Circle constructor.
	 * Note: This class could be massively optimised and reduced in size. I leave that challenge up to you.
	 */
	function new (body:phaser.physics.ninja.Body, x:Float, y:Float, radius:Float);
	
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
	 * The radius of this circle shape.
	 */
	var radius:Float;
	
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
	var circleTileProjections:Dynamic;
	
	/**
	 * Updates this Circles position.
	 */
	function integrate ():Void;
	
	/**
	 * Process a world collision and apply the resulting forces.
	 */
	function reportCollisionVsWorld (px:Float, py:Float, dx:Float, dy:Float, obj:Float):Void;
	
	/**
	 * Collides this Circle against the world bounds.
	 */
	function collideWorldBounds ():Void;
	
	/**
	 * Collides this Circle with a Tile.
	 */
	function collideCircleVsTile (t:phaser.physics.ninja.Tile):Bool;
	
	/**
	 * Resolves tile collision.
	 */
	function resolveCircleTile (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves Full tile collision.
	 */
	function projCircle_Full (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 45 Degree tile collision.
	 */
	function projCircle_45Deg (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves Concave tile collision.
	 */
	function projCircle_Concave (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves Convex tile collision.
	 */
	function projCircle_Convex (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves Half tile collision.
	 */
	function projCircle_Half (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 22 Degree tile collision.
	 */
	function projCircle_22DegS (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 22 Degree tile collision.
	 */
	function projCircle_22DegB (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 67 Degree tile collision.
	 */
	function projCircle_67DegS (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Resolves 67 Degree tile collision.
	 */
	function projCircle_67DegB (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	
	/**
	 * Destroys this Circle's reference to Body and System
	 */
	function destroy ():Void;
	
	/**
	 * Render this circle for debugging purposes.
	 */
	function render (context:Dynamic, xOffset:Float, yOffset:Float, color:String, filled:Bool):Void;
	
}
