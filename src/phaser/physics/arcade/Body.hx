package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade.Body")
extern class Body {
	
	/**
	 * The Physics Body is linked to a single Sprite. All physics operations should be performed against the body rather than
	 * the Sprite itself. For example you can set the velocity, acceleration, bounce values etc all on the Body.
	 */
	function new (sprite:phaser.gameobjects.Sprite);
	
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
	 * A disabled body won't be checked for any form of collision or overlap or have its pre/post updates run.
	 */
	var enable:Bool;
	
	/**
	 * The offset of the Physics Body from the Sprite x/y position.
	 */
	var offset:phaser.geom.Point;
	
	/**
	 * The position of the physics body.
	 */
	var position(default, null):phaser.geom.Point;
	
	/**
	 * The previous position of the physics body.
	 */
	var prev(default, null):phaser.geom.Point;
	
	/**
	 * Allow this Body to be rotated? (via angularVelocity, etc)
	 */
	var allowRotation:Bool;
	
	/**
	 * The amount the Body is rotated.
	 */
	var rotation:Float;
	
	/**
	 * The previous rotation of the physics body.
	 */
	var preRotation(default, null):Float;
	
	/**
	 * The un-scaled original size.
	 */
	var sourceWidth(default, null):Float;
	
	/**
	 * The un-scaled original size.
	 */
	var sourceHeight(default, null):Float;
	
	/**
	 * The calculated width of the physics body.
	 */
	var width:Float;
	
	/**
	 * @property .numInternal ID cache
	 */
	var height:Dynamic;
	
	/**
	 * The calculated width / 2 of the physics body.
	 */
	var halfWidth:Float;
	
	/**
	 * The calculated height / 2 of the physics body.
	 */
	var halfHeight:Float;
	
	/**
	 * The center coordinate of the Physics Body.
	 */
	var center:phaser.geom.Point;
	
	/**
	 * The velocity in pixels per second sq. of the Body.
	 */
	var velocity:phaser.geom.Point;
	
	/**
	 * New velocity.
	 */
	var newVelocity(default, null):phaser.geom.Point;
	
	/**
	 * The Sprite position is updated based on the delta x/y values. You can set a cap on those (both +-) using deltaMax.
	 */
	var deltaMax:phaser.geom.Point;
	
	/**
	 * The velocity in pixels per second sq. of the Body.
	 */
	var acceleration:phaser.geom.Point;
	
	/**
	 * The drag applied to the motion of the Body.
	 */
	var drag:phaser.geom.Point;
	
	/**
	 * Allow this Body to be influenced by gravity? Either world or local.
	 */
	var allowGravity:Bool;
	
	/**
	 * A local gravity applied to this Body. If non-zero this over rides any world gravity, unless Body.allowGravity is set to false.
	 */
	var gravity:phaser.geom.Point;
	
	/**
	 * The elasticitiy of the Body when colliding. bounce.x/y = 1 means full rebound, bounce.x/y = 0.5 means 50% rebound velocity.
	 */
	var bounce:phaser.geom.Point;
	
	/**
	 * The maximum velocity in pixels per second sq. that the Body can reach.
	 */
	var maxVelocity:phaser.geom.Point;
	
	/**
	 * The angular velocity in pixels per second sq. of the Body.
	 */
	var angularVelocity:Float;
	
	/**
	 * The angular acceleration in pixels per second sq. of the Body.
	 */
	var angularAcceleration:Float;
	
	/**
	 * The angular drag applied to the rotation of the Body.
	 */
	var angularDrag:Float;
	
	/**
	 * The maximum angular velocity in pixels per second sq. that the Body can reach.
	 */
	var maxAngular:Float;
	
	/**
	 * The mass of the Body.
	 */
	var mass:Float;
	
	/**
	 * The angle of the Body in radians as calculated by its velocity, rather than its visual angle.
	 */
	var angle(default, null):Float;
	
	/**
	 * The speed of the Body as calculated by its velocity.
	 */
	var speed(default, null):Float;
	
	/**
	 * A const reference to the direction the Body is traveling or facing.
	 */
	var facing:Float;
	
	/**
	 * An immovable Body will not receive any impacts from other bodies.
	 */
	var immovable:Bool;
	
	/**
	 * If you have a Body that is being moved around the world via a tween or a Group motion, but its local x/y position never
	 * actually changes, then you should set Body.moves = false. Otherwise it will most likely fly off the screen.
	 * If you want the physics system to move the body around, then set moves to true.
	 */
	var moves:Bool;
	
	/**
	 * This flag allows you to disable the custom x separation that takes place by Physics.Arcade.separate.
	 * Used in combination with your own collision processHandler you can create whatever type of collision response you need.
	 */
	var customSeparateX:Bool;
	
	/**
	 * This flag allows you to disable the custom y separation that takes place by Physics.Arcade.separate.
	 * Used in combination with your own collision processHandler you can create whatever type of collision response you need.
	 */
	var customSeparateY:Bool;
	
	/**
	 * When this body collides with another, the amount of overlap is stored here.
	 */
	var overlapX:Float;
	
	/**
	 * When this body collides with another, the amount of overlap is stored here.
	 */
	var overlapY:Float;
	
	/**
	 * If a body is overlapping with another body, but neither of them are moving (maybe they spawned on-top of each other?) this is set to true.
	 */
	var embedded:Bool;
	
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
	 * This object is populated with boolean values when the Body collides with the World bounds or a Tile.
	 * For example if blocked.up is true then the Body cannot move up.
	 */
	var blocked:Dynamic;
	
	/**
	 * If this is an especially small or fast moving object then it can sometimes skip over tilemap collisions if it moves through a tile in a step.
	 * Set this padding value to add extra padding to its bounds. tilePadding.x applied to its width, y to its height.
	 */
	var tilePadding:phaser.geom.Point;
	
	/**
	 * Is this Body in a preUpdate (1) or postUpdate (2) state?
	 */
	var phase:Float;
	
	/**
	 * If true and you collide this Sprite against a Group, it will disable the collision check from using a QuadTree.
	 */
	var skipQuadTree:Bool;
	
	/**
	 * Internal cache var.
	 */
	var _reset:Bool;
	
	/**
	 * Internal cache var.
	 */
	var _sx:Float;
	
	/**
	 * Internal cache var.
	 */
	var _sy:Float;
	
	/**
	 * Internal cache var.
	 */
	var _dx:Float;
	
	/**
	 * Internal cache var.
	 */
	var _dy:Float;
	
	/**
	 * Internal method.
	 */
	function updateBounds ():Void;
	
	/**
	 * Internal method.
	 */
	function preUpdate ():Void;
	
	/**
	 * Internal method.
	 */
	function postUpdate ():Void;
	
	/**
	 * Removes this bodies reference to its parent sprite, freeing it up for gc.
	 */
	function destroy ():Void;
	
	/**
	 * Internal method.
	 */
	function checkWorldBounds ():Void;
	
	/**
	 * You can modify the size of the physics Body to be any dimension you need.
	 * So it could be smaller or larger than the parent Sprite. You can also control the x and y offset, which
	 * is the position of the Body relative to the top-left of the Sprite.
	 */
	function setSize (width:Float, height:Float, ?offsetX:Float, ?offsetY:Float):Void;
	
	/**
	 * Resets all Body values (velocity, acceleration, rotation, etc)
	 */
	function reset (x:Float, y:Float):Void;
	
	/**
	 * Tests if a world point lies within this Body.
	 */
	function hitTest (x:Float, y:Float):Bool;
	
	/**
	 * Returns true if the bottom of this Body is in contact with either the world bounds or a tile.
	 */
	function onFloor ():Bool;
	
	/**
	 * Returns true if either side of this Body is in contact with either the world bounds or a tile.
	 */
	function onWall ():Bool;
	
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
	 * Returns the delta z value. The difference between Body.rotation now and in the previous step.
	 */
	function deltaZ ():Float;
	
	/**
	 * @name Phaser.Physics.Arcade.Body#bottom
	 */
	var bottom(default, null):Float;
	
	/**
	 * @name Phaser.Physics.Arcade.Body#right
	 */
	var right(default, null):Float;
	
	/**
	 * @name Phaser.Physics.Arcade.Body#x
	 */
	var x:Float;
	
	/**
	 * @name Phaser.Physics.Arcade.Body#y
	 */
	var y:Float;
	
	/**
	 * Render Sprite Body.
	 */
	function render (context:Dynamic, body:phaser.physics.arcade.Body, ?color:String = 'rgba(0,255,0,0.4)', ?filled:Bool = true):Void;
	
	/**
	 * Render Sprite Body Physics Data as text.
	 */
	function renderBodyInfo (body:phaser.physics.arcade.Body, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
	
}
