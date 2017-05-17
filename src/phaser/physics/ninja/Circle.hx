package phaser.physics.ninja;

/**
* Ninja Physics Circle constructor.
* Note: This class could be massively optimised and reduced in size. I leave that challenge up to you.
*/
@:native("Phaser.Physics.Ninja.Circle")
extern class Circle {

	/**
	* Ninja Physics Circle constructor.
	* Note: This class could be massively optimised and reduced in size. I leave that challenge up to you.
	* 
	* @param body The body that owns this shape.
	* @param x The x coordinate to create this shape at.
	* @param y The y coordinate to create this shape at.
	* @param radius The radius of this Circle.
	*/
	function new(body:phaser.physics.ninja.Body, x:Float, y:Float, radius:Float);
	
	var COL_NONE:Float;
	
	var COL_AXIS:Float;
	
	var COL_OTHER:Float;
	
	/**
	* A reference to the body that owns this shape.
	*/
	var body:phaser.physics.ninja.Body;
	
	/**
	* All of the collision response handlers.
	*/
	var circleTileProjections:Dynamic;
	
	var oldPos:phaser.Point;
	
	/**
	* The height.
	*/
	var height:Float;
	
	/**
	* The position of this object.
	*/
	var pos:phaser.Point;
	
	/**
	* The radius of this circle shape.
	*/
	var radius:Float;
	
	/**
	* A reference to the physics system.
	*/
	var system:phaser.physics.Ninja;
	
	var type:Float;
	
	/**
	* The velocity of this object.
	*/
	var velocity:phaser.Point;
	
	/**
	* The width.
	*/
	var width:Float;
	
	/**
	* Half the width.
	*/
	var xw:Float;
	
	/**
	* Half the height.
	*/
	var yw:Float;
	
	/**
	* Collides this Circle with a Tile.
	* 
	* @param t The Tile involved in the collision.
	* @return True if they collide, otherwise false.
	*/
	function collideCircleVsTile(tile:phaser.physics.ninja.Tile):Bool;
	
	/**
	* Collides this Circle against the world bounds.
	*/
	function collideWorldBounds():Void;
	
	/**
	* Destroys this Circle's reference to Body and System
	*/
	function destroy():Void;
	
	function distance(dest:Float, ?round:Bool):Float;
	
	/**
	* Updates this Circles position.
	*/
	function integrate():Void;
	
	/**
	* Render this circle for debugging purposes.
	* 
	* @param context The context to render to.
	* @param xOffset X offset from circle's position to render at.
	* @param yOffset Y offset from circle's position to render at.
	* @param color color of the debug shape to be rendered. (format is css color string).
	* @param filled Render the shape as solid (true) or hollow (false).
	*/
	function render(context:Dynamic, xOffset:Float, yOffset:Float, color:String, filled:Bool):Void;
	
	/**
	* Process a world collision and apply the resulting forces.
	* 
	* @param px The tangent velocity
	* @param py The tangent velocity
	* @param dx Collision normal
	* @param dy Collision normal
	* @param obj Object this Circle collided with
	*/
	function reportCollisionVsWorld(px:Float, py:Float, dx:Float, dy:Float, obj:Dynamic):Void;
	
	function reportCollisionVsBody(px:Float, py:Float, dx:Float, dy:Float, obj:Dynamic):Void;
	
	/**
	* Resolves tile collision.
	* 
	* @param x Penetration depth on the x axis.
	* @param y Penetration depth on the y axis.
	* @param oH Grid / voronoi region.
	* @param oV Grid / voronoi region.
	* @param obj The Circle involved in the collision.
	* @param t The Tile involved in the collision.
	* @return The result of the collision.
	*/
	function resolveCircleTile(x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Bool;
	
}

