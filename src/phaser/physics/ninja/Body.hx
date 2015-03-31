package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja.Body")
extern class Body {
	
	/**
	 * The Physics Body is linked to a single Sprite. All physics operations should be performed against the body rather than
	 * the Sprite itself. For example you can set the velocity, bounce values etc all on the Body.
	 */
	function new (system:phaser.physics.ninja.World, sprite:phaser.gameobjects.Sprite, ?type:Float = 1, ?id:Float = 1, ?radius:Float = 16, ?x:Float = 0, ?y:Float = 0, ?width:Float = 0, ?height:Float = 0);
	
	/**
	 * Reference to the parent Sprite.
	 */
	var sprite:phaser.gameobjects.Sprite;
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The type of physics system this body belongs to.
	 */
	var type:Float;
	
	/**
	 * The parent physics system.
	 */
	var system:phaser.physics.ninja.World;
	
	/**
	 * The AABB object this body is using for collision.
	 */
	var aabb:phaser.physics.ninja.AABB;
	
	/**
	 * The Tile object this body is using for collision.
	 */
	var tile:phaser.physics.ninja.Tile;
	
	/**
	 * The Circle object this body is using for collision.
	 */
	var circle:phaser.physics.ninja.Circle;
	
	/**
	 * A local reference to the body shape.
	 */
	var shape:Dynamic;
	
	/**
	 * The drag applied to this object as it moves.
	 */
	var drag:Float;
	
	/**
	 * The friction applied to this object as it moves.
	 */
	var friction:Float;
	
	/**
	 * How much of the world gravity should be applied to this object? 1 = all of it, 0.5 = 50%, etc.
	 */
	var gravityScale:Float;
	
	/**
	 * The bounciness of this object when it collides. A value between 0 and 1. We recommend setting it to 0.999 to avoid jittering.
	 */
	var bounce:Float;
	
	/**
	 * The velocity in pixels per second sq. of the Body.
	 */
	var velocity:phaser.geom.Point;
	
	/**
	 * A const reference to the direction the Body is traveling or facing.
	 */
	var facing:Float;
	
	/**
	 * An immovable Body will not receive any impacts from other bodies. Not fully implemented.
	 */
	var immovable:Bool;
	
	/**
	 * A Body can be set to collide against the World bounds automatically and rebound back into the World if this is set to true. Otherwise it will leave the World.
	 */
	var collideWorldBounds:Bool;
	
	/**
	 * Set the checkCollision properties to control which directions collision is processed for this Body.
	 * For example checkCollision.up = false means it won't collide when the collision happened while moving up.
	 */
	var checkCollision:Dynamic;
	
	/**
	 * This object is populated with boolean values when the Body collides with another.
	 * touching.up = true means the collision happened to the top of this Body for example.
	 */
	var touching:Dynamic;
	
	/**
	 * This object is populated with previous touching values from the bodies previous collision.
	 */
	var wasTouching:Dynamic;
	
	/**
	 * The maximum speed this body can travel at (taking drag and friction into account)
	 */
	var maxSpeed:Float;
	
	/**
	 * Internal method.
	 */
	function preUpdate ():Void;
	
	/**
	 * Internal method.
	 */
	function postUpdate ():Void;
	
	/**
	 * Stops all movement of this body.
	 */
	function setZeroVelocity ():Void;
	
	/**
	 * Moves the Body forwards based on its current angle and the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveTo (speed:Float, angle:Float):Void;
	
	/**
	 * Moves the Body backwards based on its current angle and the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveBackward (speed:Float, angle:Float):Void;
	
	/**
	 * If this Body is dynamic then this will move it to the left by setting its x velocity to the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveLeft (speed:Float):Void;
	
	/**
	 * If this Body is dynamic then this will move it to the right by setting its x velocity to the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveRight (speed:Float):Void;
	
	/**
	 * If this Body is dynamic then this will move it up by setting its y velocity to the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveUp (speed:Float):Void;
	
	/**
	 * If this Body is dynamic then this will move it down by setting its y velocity to the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveDown (speed:Float):Void;
	
	/**
	 * Resets all Body values and repositions on the Sprite.
	 */
	function reset ():Void;
	
	/**
	 * Returns the absolute delta x value.
	 */
	function deltaAbsX ():Float;
	
	/**
	 * Returns the absolute delta y value.
	 */
	function deltaAbsY ():Float;
	
	/**
	 * Returns the delta x value. The difference between Body.x now and in the previous step.
	 */
	function deltaX ():Float;
	
	/**
	 * Returns the delta y value. The difference between Body.y now and in the previous step.
	 */
	function deltaY ():Float;
	
	/**
	 * Destroys this body's reference to the sprite and system, and destroys its shape.
	 */
	function destroy ():Void;
	
	/**
	 * @name Phaser.Physics.Ninja.Body#x
	 */
	var x:Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Body#y
	 */
	var y:Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Body#width
	 */
	var width(default, null):Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Body#height
	 */
	var height(default, null):Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Body#bottom
	 */
	var bottom(default, null):Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Body#right
	 */
	var right(default, null):Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Body#speed
	 */
	var speed(default, null):Float;
	
	/**
	 * @name Phaser.Physics.Ninja.Body#angle
	 */
	var angle(default, null):Float;
	
	/**
	 * Render Sprite's Body.
	 */
	function render (context:Dynamic, body:phaser.physics.ninja.Body, ?color:String = 'rgba(0,255,0,0.4)', ?filled:Bool = true):Void;
	
}
