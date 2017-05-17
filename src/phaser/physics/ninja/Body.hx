package phaser.physics.ninja;

/**
* The Physics Body is linked to a single Sprite. All physics operations should be performed against the body rather than
* the Sprite itself. For example you can set the velocity, bounce values etc all on the Body.
*/
@:native("Phaser.Physics.Ninja.Body")
extern class Body {

	/**
	* The Physics Body is linked to a single Sprite. All physics operations should be performed against the body rather than
	* the Sprite itself. For example you can set the velocity, bounce values etc all on the Body.
	* 
	* @param system The physics system this Body belongs to.
	* @param sprite The Sprite object this physics body belongs to.
	* @param type The type of Ninja shape to create. 1 = AABB, 2 = Circle or 3 = Tile. - Default: 1
	* @param id If this body is using a Tile shape, you can set the Tile id here, i.e. Phaser.Physics.Ninja.Tile.SLOPE_45DEGpn, Phaser.Physics.Ninja.Tile.CONVEXpp, etc. - Default: 1
	* @param radius If this body is using a Circle shape this controls the radius. - Default: 16
	* @param x The x coordinate of this Body. This is only used if a sprite is not provided.
	* @param y The y coordinate of this Body. This is only used if a sprite is not provided.
	* @param width The width of this Body. This is only used if a sprite is not provided.
	* @param height The height of this Body. This is only used if a sprite is not provided.
	*/
	function new(system:phaser.physics.Ninja, sprite:phaser.Sprite, ?type:Float, ?id:Float, ?radius:Float, ?x:Float, ?y:Float, ?width:Float, ?height:Float);
	
	/**
	* The AABB object this body is using for collision.
	*/
	var aabb:phaser.physics.ninja.AABB;
	
	/**
	* The angle of this Body
	*/
	var angle:Float;
	
	/**
	* The bottom value of this Body (same as Body.y + Body.height)
	*/
	var bottom:Float;
	
	/**
	* The bounciness of this object when it collides. A value between 0 and 1. We recommend setting it to 0.999 to avoid jittering.
	* Default: 0.3
	*/
	var bounce:Float;
	
	/**
	* Set the checkCollision properties to control which directions collision is processed for this Body.
	* For example checkCollision.up = false means it won't collide when the collision happened while moving up. An object containing allowed collision.
	*/
	var checkCollision:phaser.physics.arcade.FaceChoices;
	
	/**
	* The Circle object this body is using for collision.
	*/
	var circle:phaser.physics.ninja.Circle;
	
	/**
	* A Body can be set to collide against the World bounds automatically and rebound back into the World if this is set to true. Otherwise it will leave the World. Should the Body collide with the World bounds?
	*/
	var collideWorldBounds:Bool;
	
	/**
	* The drag applied to this object as it moves.
	* Default: 1
	*/
	var drag:Float;
	
	/**
	* A const reference to the direction the Body is traveling or facing.
	*/
	var facing:Float;
	
	/**
	* The friction applied to this object as it moves.
	* Default: 0.05
	*/
	var friction:Float;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* How much of the world gravity should be applied to this object? 1 = all of it, 0.5 = 50%, etc.
	* Default: 1
	*/
	var gravityScale:Float;
	
	/**
	* The height of this Body
	*/
	var height:Float;
	
	/**
	* An immovable Body will not receive any impacts from other bodies. Not fully implemented.
	*/
	var immovable:Bool;
	
	/**
	* The maximum speed this body can travel at (taking drag and friction into account)
	* Default: 8
	*/
	var maxSpeed:Float;
	
	/**
	* The right value of this Body (same as Body.x + Body.width)
	*/
	var right:Float;
	
	/**
	* Reference to the parent Sprite.
	*/
	var sprite:phaser.Sprite;
	
	/**
	* The parent physics system.
	*/
	var system:phaser.physics.Ninja;
	
	/**
	* The Tile object this body is using for collision.
	*/
	var tile:phaser.physics.ninja.Tile;
	
	/**
	* This object is populated with boolean values when the Body collides with another.
	* touching.up = true means the collision happened to the top of this Body for example. An object containing touching results.
	*/
	var touching:phaser.physics.arcade.FaceChoices;
	
	/**
	* The type of physics system this body belongs to.
	*/
	var type:Float;
	
	/**
	* A local reference to the body shape.
	*/
	var shape:Dynamic;
	
	/**
	* The speed of this Body
	*/
	var speed:Float;
	
	/**
	* The velocity in pixels per second sq. of the Body.
	*/
	var velocity:phaser.Point;
	
	/**
	* This object is populated with previous touching values from the bodies previous collision. An object containing previous touching results.
	*/
	var wasTouching:phaser.physics.arcade.FaceChoices;
	
	/**
	* The width of this Body
	*/
	var width:Float;
	
	/**
	* The x position.
	*/
	var x:Float;
	
	/**
	* The y position.
	*/
	var y:Float;
	
	/**
	* Returns the absolute delta x value.
	* 
	* @return The absolute delta value.
	*/
	function deltaAbsX():Float;
	
	/**
	* Returns the absolute delta y value.
	* 
	* @return The absolute delta value.
	*/
	function deltaAbsY():Float;
	
	/**
	* Returns the delta x value. The difference between Body.x now and in the previous step.
	* 
	* @return The delta value. Positive if the motion was to the right, negative if to the left.
	*/
	function deltaX():Float;
	
	/**
	* Returns the delta y value. The difference between Body.y now and in the previous step.
	* 
	* @return The delta value. Positive if the motion was downwards, negative if upwards.
	*/
	function deltaY():Float;
	
	/**
	* Destroys this body's reference to the sprite and system, and destroys its shape.
	*/
	function destroy():Void;
	
	/**
	* Stops all movement of this body.
	*/
	function setZeroVelocity():Void;
	
	function moveTo(speed:Float, angle:Float):Void;
	
	function moveFrom(speed:Float, angle:Float):Void;
	
	function moveLeft(speed:Float):Void;
	
	function moveRight(speed:Float):Void;
	
	function moveUp(speed:Float):Void;
	
	function moveDown(speed:Float):Void;
	
	function poseUpdate():Void;
	
	/**
	* Internal method.
	*/
	function preUpdate():Void;
	
	/**
	* Render Sprite's Body.
	* 
	* @param context The context to render to.
	* @param body The Body to render.
	* @param color color of the debug shape to be rendered. (format is css color string). - Default: 'rgba(0,255,0,0.4)'
	* @param filled Render the shape as a filled (default, true) or a stroked (false) - Default: true
	*/
	function render(context:Dynamic, body:phaser.physics.ninja.Body, ?color:String, ?filled:Bool):Void;
	
	/**
	* Resets all Body values and repositions on the Sprite.
	*/
	function reset():Void;
	
}

