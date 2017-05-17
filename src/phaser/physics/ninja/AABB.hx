package phaser.physics.ninja;

/**
* Ninja Physics AABB constructor.
* Note: This class could be massively optimised and reduced in size. I leave that challenge up to you.
*/
@:native("Phaser.Physics.Ninja.AABB")
extern class AABB {

	/**
	* Ninja Physics AABB constructor.
	* Note: This class could be massively optimised and reduced in size. I leave that challenge up to you.
	* 
	* @param body The body that owns this shape.
	* @param x The x coordinate to create this shape at.
	* @param y The y coordinate to create this shape at.
	* @param width The width of this AABB.
	* @param height The height of this AABB.
	*/
	function new(body:phaser.physics.ninja.Body, x:Float, y:Float, width:Float, height:Float);
	
	static var COL_NONE:Float;
	
	static var COL_AXIS:Float;
	
	static var COL_OTHER:Float;
	
	/**
	* All of the collision response handlers.
	*/
	var aabbTileProjections:Dynamic;
	
	/**
	* A reference to the body that owns this shape.
	*/
	var body:phaser.physics.ninja.Body;
	
	/**
	* The height.
	*/
	var height:Float;
	
	var oldPos:phaser.Point;
	
	/**
	* The position of this object.
	*/
	var pos:phaser.Point;
	
	/**
	* A reference to the physics system.
	*/
	var system:phaser.physics.Ninja;
	
	/**
	* The width.
	*/
	var width:Float;
	
	/**
	* The velocity of this object.
	*/
	var velocity:phaser.Point;
	
	/**
	* Half the width.
	*/
	var xw:Float;
	
	/**
	* Half the height.
	*/
	var yw:Float;
	
	/**
	* Collides this AABB against the world bounds.
	*/
	function collideWorldBounds():Void;
	
	/**
	* Collides this AABB against a AABB.
	* 
	* @param aabb The AABB to collide against.
	*/
	function collideAABBVsAABB(aabb:phaser.physics.ninja.AABB):Bool;
	
	/**
	* Collides this AABB against a Tile.
	* 
	* @param tile The Tile to collide against.
	*/
	function collideAABBVsTile(tile:phaser.physics.ninja.Tile):Bool;
	
	/**
	* Destroys this AABB's reference to Body and System
	*/
	function destroy():Void;
	
	/**
	* Updates this AABBs position.
	*/
	function integrate():Void;
	
	/**
	* Render this AABB for debugging purposes.
	* 
	* @param context The context to render to.
	* @param xOffset X offset from AABB's position to render at.
	* @param yOffset Y offset from AABB's position to render at.
	* @param color color of the debug shape to be rendered. (format is css color string).
	* @param filled Render the shape as solid (true) or hollow (false).
	*/
	function render(context:Dynamic, xOffset:Float, yOffset:Float, color:String, filled:Bool):Void;
	
	/**
	* Process a collision partner-agnostic collision response and apply the resulting forces.
	* 
	* @param px The tangent velocity
	* @param py The tangent velocity
	* @param dx Collision normal
	* @param dy Collision normal
	*/
	function reportCollision(px:Float, py:Float, dx:Float, dy:Float):Void;
	
	/**
	* Process a world collision and apply the resulting forces.
	* 
	* @param px The tangent velocity
	* @param py The tangent velocity
	* @param dx Collision normal
	* @param dy Collision normal
	*/
	function reportCollisionVsWorld(px:Float, py:Float, dx:Float, dy:Float, obj:Dynamic):Void;
	
	/**
	* Process a body collision and apply the resulting forces. Still very much WIP and doesn't work fully. Feel free to fix!
	* 
	* @param px The tangent velocity
	* @param py The tangent velocity
	* @param dx Collision normal
	* @param dy Collision normal
	* @param obj Object this AABB collided with
	*/
	function reportCollisionVsBody(px:Float, py:Float, dx:Float, dy:Float, obj:Dynamic):Void;
	
	/**
	* Resolves tile collision.
	* 
	* @param x Penetration depth on the x axis.
	* @param y Penetration depth on the y axis.
	* @param body The AABB involved in the collision.
	* @param tile The Tile involved in the collision.
	* @return True if the collision was processed, otherwise false.
	*/
	function resolveTile(x:Float, y:Float, body:phaser.physics.ninja.AABB, tile:phaser.physics.ninja.Tile):Bool;
	
	function reverse():Void;
	
}

