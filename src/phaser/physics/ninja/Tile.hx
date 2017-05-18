package phaser.physics.ninja;

/**
* Ninja Physics Tile constructor.
* A Tile is defined by its width, height and type. It's type can include slope data, such as 45 degree slopes, or convex slopes.
* Understand that for any type including a slope (types 2 to 29) the Tile must be SQUARE, i.e. have an equal width and height.
* Also note that as Tiles are primarily used for levels they have gravity disabled and world bounds collision disabled by default.
* 
* Note: This class could be massively optimised and reduced in size. I leave that challenge up to you.
*/
@:native("Phaser.Physics.Ninja.Tile")
extern class Tile {

	/**
	* Ninja Physics Tile constructor.
	* A Tile is defined by its width, height and type. It's type can include slope data, such as 45 degree slopes, or convex slopes.
	* Understand that for any type including a slope (types 2 to 29) the Tile must be SQUARE, i.e. have an equal width and height.
	* Also note that as Tiles are primarily used for levels they have gravity disabled and world bounds collision disabled by default.
	* 
	* Note: This class could be massively optimised and reduced in size. I leave that challenge up to you.
	* 
	* @param body The body that owns this shape.
	* @param x The x coordinate to create this shape at.
	* @param y The y coordinate to create this shape at.
	* @param width The width of this AABB.
	* @param height The height of this AABB.
	* @param type The type of Ninja shape to create. 1 = AABB, 2 = Circle or 3 = Tile. - Default: 1
	*/
	function new(body:phaser.physics.ninja.Body, x:Float, y:Float, width:Float, height:Float, ?type:Float);
	
	/**
	* A reference to the body that owns this shape.
	*/
	var body:phaser.physics.ninja.Body;
	
	/**
	* The bottom value of this Body (same as Body.y + Body.height)
	*/
	var bottom:Float;
	
	var flipped:Bool;
	
	/**
	* The height.
	*/
	var height:Float;
	
	/**
	* The ID of this Tile.
	*/
	var id:Float;
	
	/**
	* The position of this object in the previous update.
	*/
	var oldpos:phaser.Point;
	
	/**
	* The position of this object.
	*/
	var pos:phaser.Point;
	
	/**
	* The right value of this Body (same as Body.x + Body.width)
	*/
	var right:Float;
	
	var rotation:Float;
	
	/**
	* A reference to the physics system.
	*/
	var system:phaser.physics.Ninja;
	
	/**
	* The type of this Tile.
	*/
	var type:phaser.physics.ninja.TileType;
	
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
	* The x position.
	*/
	var x:Float;
	
	/**
	* The y position.
	*/
	var y:Float;
	
	/**
	* Sets this tile to be empty.
	*/
	function clear():Void;
	
	/**
	* Tiles cannot collide with the world bounds, it's up to you to keep them where you want them. But we need this API stub to satisfy the Body.
	*/
	function collideWorldBounds():Void;
	
	/**
	* Destroys this Tiles reference to Body and System.
	*/
	function destroy():Void;
	
	/**
	* Updates this objects position.
	*/
	function integrate():Void;
	
	/**
	* Process a world collision and apply the resulting forces.
	* 
	* @param px The tangent velocity
	* @param py The tangent velocity
	* @param dx Collision normal
	* @param dy Collision normal
	* @param obj Object this Tile collided with
	*/
	function reportCollisionVsWorld(px:Float, py:Float, dx:Float, dy:Float, obj:Dynamic):Void;
	
	/**
	* Tiles cannot collide with the world bounds, it's up to you to keep them where you want them. But we need this API stub to satisfy the Body.
	* 
	* @param id The type of Tile this will use, i.e. Phaser.Physics.Ninja.Tile.SLOPE_45DEGpn, Phaser.Physics.Ninja.Tile.CONVEXpp, etc.
	*/
	function setType(id:Float):Float;
	
}

