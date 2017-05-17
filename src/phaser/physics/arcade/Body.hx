package phaser.physics.arcade;

/**
* The Physics Body is linked to a single Sprite. All physics operations should be performed against the body rather than
* the Sprite itself. For example you can set the velocity, acceleration, bounce values etc all on the Body.
*/
@:native("Phaser.Physics.Arcade.Body")
extern class Body {

	/**
	* The Physics Body is linked to a single Sprite. All physics operations should be performed against the body rather than
	* the Sprite itself. For example you can set the velocity, acceleration, bounce values etc all on the Body.
	* 
	* @param sprite The Sprite object this physics body belongs to.
	*/
	function new(sprite:phaser.Sprite);
	
	/**
	* The acceleration is the rate of change of the velocity. Measured in pixels per second squared.
	*/
	var acceleration:phaser.Point;
	
	/**
	* Allow this Body to be influenced by gravity? Either world or local.
	* Default: true
	*/
	var allowGravity:Bool;
	
	/**
	* Allow this Body to be rotated? (via angularVelocity, etc)
	* Default: true
	*/
	var allowRotation:Bool;
	
	/**
	* The angle of the Body's **velocity** in radians.
	*/
	var angle:Float;
	
	/**
	* The angular acceleration is the rate of change of the angular velocity. Measured in degrees per second squared.
	*/
	var angularAcceleration:Float;
	
	/**
	* The drag applied during the rotation of the Body. Measured in degrees per second squared.
	*/
	var angularDrag:Float;
	
	/**
	* The angular velocity is the rate of change of the Body's rotation. It is measured in degrees per second.
	*/
	var angularVelocity:Float;
	
	/**
	* This object is populated with boolean values when the Body collides with the World bounds or a Tile.
	* For example if blocked.up is true then the Body cannot move up. An object containing on which faces this Body is blocked from moving, if any.
	*/
	var blocked:FaceChoices;
	
	/**
	* The bottom value of this Body (same as Body.y + Body.height)
	*/
	var bottom:Float;
	
	/**
	* The elasticity of the Body when colliding. bounce.x/y = 1 means full rebound, bounce.x/y = 0.5 means 50% rebound velocity.
	*/
	var bounce:phaser.Point;
	
	/**
	* The center coordinate of the Physics Body.
	*/
	var center:phaser.Point;
	
	/**
	* Set the checkCollision properties to control which directions collision is processed for this Body.
	* For example checkCollision.up = false means it won't collide when the collision happened while moving up.
	* If you need to disable a Body entirely, use `body.enable = false`, this will also disable motion.
	* If you need to disable just collision and/or overlap checks, but retain motion, set `checkCollision.none = true`. An object containing allowed collision (none, up, down, left, right).
	*/
	var checkCollision:FaceChoices;
	
	/**
	* A Body can be set to collide against the World bounds automatically and rebound back into the World if this is set to true. Otherwise it will leave the World. Should the Body collide with the World bounds?
	*/
	var collideWorldBounds:Bool;
	
	/**
	* This flag allows you to disable the custom x separation that takes place by Physics.Arcade.separate.
	* Used in combination with your own collision processHandler you can create whatever type of collision response you need. Use a custom separation system or the built-in one?
	*/
	var customSeparateX:Bool;
	
	/**
	* This flag allows you to disable the custom y separation that takes place by Physics.Arcade.separate.
	* Used in combination with your own collision processHandler you can create whatever type of collision response you need. Use a custom separation system or the built-in one?
	*/
	var customSeparateY:Bool;
	
	/**
	* The Sprite position is updated based on the delta x/y values. You can set a cap on those (both +-) using deltaMax.
	*/
	var deltaMax:phaser.Point;
	
	/**
	* If this Body in a preUpdate (true) or postUpdate (false) state?
	*/
	var dirty:Bool;
	
	/**
	* The drag applied to the motion of the Body. Measured in pixels per second squared.
	*/
	var drag:phaser.Point;
	
	/**
	* If a body is overlapping with another body, but neither of them are moving (maybe they spawned on-top of each other?) this is set to true. Body embed value.
	*/
	var embedded:Bool;
	
	/**
	* A disabled body won't be checked for any form of collision or overlap or have its pre/post updates run.
	* Default: true
	*/
	var enable:Bool;
	
	/**
	* A const reference to the direction the Body is traveling or facing: Phaser.NONE, Phaser.LEFT, Phaser.RIGHT, Phaser.UP, or Phaser.DOWN. If the Body is moving on both axes, UP and DOWN take precedence.
	*/
	var facing:Float;
	
	/**
	* If this Body is moving, and another Body is 'riding' this one, this is the amount of motion the riding Body receives on each axis.
	*/
	var friction:phaser.Point;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* This Body's local gravity, **added** to any world gravity, unless Body.allowGravity is set to false.
	*/
	var gravity:phaser.Point;
	
	/**
	* The calculated width / 2 of the physics body.
	*/
	var halfWidth:Float;
	
	/**
	* The calculated height / 2 of the physics body.
	*/
	var halfHeight:Float;
	
	/**
	* The calculated height of the physics body.
	*/
	var height:Float;
	
	/**
	* An immovable Body will not receive any impacts from other bodies. **Two** immovable Bodies can't separate or exchange momentum and will pass through each other.
	*/
	var immovable:Bool;
	
	/**
	* If `true` this Body is using circular collision detection. If `false` it is using rectangular.
	* Use `Body.setCircle` to control the collision shape this Body uses.
	*/
	var isCircle:Bool;
	
	/**
	* Set by the `moveTo` and `moveFrom` methods.
	*/
	var isMoving:Bool;
	
	/**
	* The mass of the Body. When two bodies collide their mass is used in the calculation to determine the exchange of velocity.
	* Default: 1
	*/
	var mass:Float;
	
	/**
	* The maximum angular velocity in degrees per second that the Body can reach.
	* Default: 1000
	*/
	var maxAngular:Float;
	
	/**
	* The maximum velocity (in pixels per second squared) that the Body can reach.
	*/
	var maxVelocity:phaser.Point;
	
	/**
	* Whether the physics system should update the Body's position and rotation based on its velocity, acceleration, drag, and gravity.
	* 
	* If you have a Body that is being moved around the world via a tween or a Group motion, but its local x/y position never
	* actually changes, then you should set Body.moves = false. Otherwise it will most likely fly off the screen.
	* If you want the physics system to move the body around, then set moves to true.
	* 
	* A Body with moves = false can still be moved slightly (but not accelerated) during collision separation unless you set {@link Phaser.Physics.Arcade.Body#immovable immovable} as well. Set to true to allow the Physics system to move this Body, otherwise false to move it manually.
	* Default: true
	*/
	var moves:Bool;
	
	/**
	* Optional callback. If set, invoked during the running of `moveTo` or `moveFrom` events.
	*/
	var movementCallback:Dynamic;
	
	/**
	* Context in which to call the movementCallback.
	*/
	var movementCallbackContext:Dynamic;
	
	/**
	* The distanced traveled during the last update, equal to `velocity * physicsElapsed`. Calculated during the Body.preUpdate and applied to its position.
	*/
	var newVelocity:phaser.Point;
	
	/**
	* The offset of the Physics Body from the Sprite x/y position.
	*/
	var offset:phaser.Point;
	
	/**
	* A Signal that is dispatched when this Body collides with another Body.
	* 
	* You still need to call `game.physics.arcade.collide` in your `update` method in order
	* for this signal to be dispatched.
	* 
	* Usually you'd pass a callback to the `collide` method, but this signal provides for
	* a different level of notification.
	* 
	* Due to the potentially high volume of signals this could create it is disabled by default.
	* 
	* To use this feature set this property to a Phaser.Signal: `sprite.body.onCollide = new Phaser.Signal()`
	* and it will be called when a collision happens, passing two arguments: the sprites which collided.
	* The first sprite in the argument is always the owner of this Body.
	* 
	* If two Bodies with this Signal set collide, both will dispatch the Signal.
	*/
	var onCollide:phaser.Signal;
	
	/**
	* Listen for the completion of `moveTo` or `moveFrom` events.
	*/
	var onMoveComplete:phaser.Signal;
	
	/**
	* A Signal that is dispatched when this Body overlaps with another Body.
	* 
	* You still need to call `game.physics.arcade.overlap` in your `update` method in order
	* for this signal to be dispatched.
	* 
	* Usually you'd pass a callback to the `overlap` method, but this signal provides for
	* a different level of notification.
	* 
	* Due to the potentially high volume of signals this could create it is disabled by default.
	* 
	* To use this feature set this property to a Phaser.Signal: `sprite.body.onOverlap = new Phaser.Signal()`
	* and it will be called when a collision happens, passing two arguments: the sprites which collided.
	* The first sprite in the argument is always the owner of this Body.
	* 
	* If two Bodies with this Signal set collide, both will dispatch the Signal.
	*/
	var onOverlap:phaser.Signal;
	
	/**
	* A Signal that is dispatched when this Body collides with the world bounds.
	* Due to the potentially high volume of signals this could create it is disabled by default.
	* To use this feature set this property to a Phaser.Signal: `sprite.body.onWorldBounds = new Phaser.Signal()`
	* and it will be called when a collision happens, passing five arguments:
	* `onWorldBounds(sprite, up, down, left, right)`
	* where the Sprite is a reference to the Sprite that owns this Body, and the other arguments are booleans
	* indicating on which side of the world the Body collided.
	*/
	var onWorldBounds:phaser.Signal;
	
	/**
	* When this body collides with another, the amount of overlap is stored here. The amount of horizontal overlap during the collision.
	*/
	var overlapX:Float;
	
	/**
	* When this body collides with another, the amount of overlap is stored here. The amount of vertical overlap during the collision.
	*/
	var overlapY:Float;
	
	var phase:Float;
	
	/**
	* The position of the physics body.
	*/
	var position:phaser.Point;
	
	/**
	* The previous rotation of the physics body, in degrees.
	*/
	var preRotation:Float;
	
	/**
	* The previous position of the physics body.
	*/
	var prev:phaser.Point;
	
	/**
	* The radius of the circular collision shape this Body is using if Body.setCircle has been enabled.
	* If you wish to change the radius then call `setCircle` again with the new value.
	* If you wish to stop the Body using a circle then call `setCircle` with a radius of zero (or undefined).
	*/
	var radius:Float;
	
	/**
	* The right value of this Body (same as Body.x + Body.width)
	*/
	var right:Float;
	
	/**
	* The Body's rotation in degrees, as calculated by its angularVelocity and angularAcceleration. Please understand that the collision Body
	* itself never rotates, it is always axis-aligned. However these values are passed up to the parent Sprite and updates its rotation.
	*/
	var rotation:Float;
	
	/**
	* If true and you collide this Sprite against a Group, it will disable the collision check from using a QuadTree.
	*/
	var skipQuadTree:Bool;
	
	/**
	* The un-scaled original size.
	*/
	var sourceWidth:Float;
	
	/**
	* The un-scaled original size.
	*/
	var sourceHeight:Float;
	
	/**
	* The speed of the Body in pixels per second, equal to the magnitude of the velocity.
	*/
	var speed:Float;
	
	/**
	* Reference to the parent Sprite.
	*/
	var sprite:phaser.Sprite;
	
	/**
	* Set by the `moveTo` and `moveFrom` methods.
	*/
	var stopVelocityOnCollide:Bool;
	
	/**
	* If true the Body will check itself against the Sprite.getBounds() dimensions and adjust its width and height accordingly.
	* If false it will compare its dimensions against the Sprite scale instead, and adjust its width height if the scale has changed.
	* Typically you would need to enable syncBounds if your sprite is the child of a responsive display object such as a FlexLayer,
	* or in any situation where the Sprite scale doesn't change, but its parents scale is effecting the dimensions regardless.
	*/
	var syncBounds:Bool;
	
	/**
	* If this is an especially small or fast moving object then it can sometimes skip over tilemap collisions if it moves through a tile in a step.
	* Set this padding value to add extra padding to its bounds. tilePadding.x applied to its width, y to its height. Extra padding to be added to this sprite's dimensions when checking for tile collision.
	*/
	var tilePadding:phaser.Point;
	
	/**
	* This object is populated with boolean values when the Body collides with another.
	* touching.up = true means the collision happened to the top of this Body for example. An object containing touching results (none, up, down, left, right).
	*/
	var touching:FaceChoices;
	
	/**
	* The type of physics system this body belongs to.
	*/
	var type:Float;
	
	/**
	* This object is populated with previous touching values from the bodies previous collision. An object containing previous touching results (none, up, down, left, right).
	*/
	var wasTouching:FaceChoices;
	
	/**
	* The calculated width of the physics body.
	*/
	var width:Float;
	
	/**
	* The elasticity of the Body when colliding with the World bounds.
	* By default this property is `null`, in which case `Body.bounce` is used instead. Set this property
	* to a Phaser.Point object in order to enable a World bounds specific bounce value.
	*/
	var worldBounce:phaser.Point;
	
	/**
	* The velocity, or rate of change the Body's position. Measured in pixels per second.
	*/
	var velocity:phaser.Point;
	
	/**
	* The x position.
	*/
	var x:Float;
	
	/**
	* The y position.
	*/
	var y:Float;
	
	/**
	* Internal method.
	* 
	* @return True if the Body collided with the world bounds, otherwise false.
	*/
	function checkWorldBounds():Void;
	
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
	* Returns the delta z value. The difference between Body.rotation now and in the previous step.
	* 
	* @return The delta value. Positive if the motion was clockwise, negative if anti-clockwise.
	*/
	function deltaZ():Float;
	
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
	* Destroys this Body.
	* 
	* First it calls Group.removeFromHash if the Game Object this Body belongs to is part of a Group.
	* Then it nulls the Game Objects body reference, and nulls this Body.sprite reference.
	*/
	function destroy():Void;
	
	/**
	* Returns the bounds of this physics body.
	* 
	* Only used internally by the World collision methods.
	* 
	* @param obj The object in which to set the bounds values.
	* @return The object that was given to this method.
	*/
	function getBounds(obj:Dynamic):Dynamic;
	
	/**
	* Tests if a world point lies within this Body.
	* 
	* @param x The world x coordinate to test.
	* @param y The world y coordinate to test.
	* @return True if the given coordinates are inside this Body, otherwise false.
	*/
	function hitTest(x:Float, y:Float):Bool;
	
	/**
	* Note: This method is experimental, and may be changed or removed in a future release.
	* 
	* This method moves the Body in the given direction, for the duration specified.
	* It works by setting the velocity on the Body, and an internal timer, and then
	* monitoring the duration each frame. When the duration is up the movement is
	* stopped and the `Body.onMoveComplete` signal is dispatched.
	* 
	* Movement also stops if the Body collides or overlaps with any other Body.
	* 
	* You can control if the velocity should be reset to zero on collision, by using
	* the property `Body.stopVelocityOnCollide`.
	* 
	* Stop the movement at any time by calling `Body.stopMovement`.
	* 
	* You can optionally set a speed in pixels per second. If not specified it
	* will use the current `Body.speed` value. If this is zero, the function will return false.
	* 
	* Please note that due to browser timings you should allow for a variance in
	* when the duration will actually expire. Depending on system it may be as much as
	* +- 50ms. Also this method doesn't take into consideration any other forces acting
	* on the Body, such as Gravity, drag or maxVelocity, all of which may impact the
	* movement.
	* 
	* @param duration The duration of the movement, in ms.
	* @param speed The speed of the movement, in pixels per second. If not provided `Body.speed` is used.
	* @param direction The angle of movement. If not provided `Body.angle` is used.
	* @return True if the movement successfully started, otherwise false.
	*/
	function moveFrom(duration:Float, ?speed:Float, ?direction:Float):Bool;
	
	/**
	* Note: This method is experimental, and may be changed or removed in a future release.
	* 
	* This method moves the Body in the given direction, for the duration specified.
	* It works by setting the velocity on the Body, and an internal distance counter.
	* The distance is monitored each frame. When the distance equals the distance
	* specified in this call, the movement is stopped, and the `Body.onMoveComplete`
	* signal is dispatched.
	* 
	* Movement also stops if the Body collides or overlaps with any other Body.
	* 
	* You can control if the velocity should be reset to zero on collision, by using
	* the property `Body.stopVelocityOnCollide`.
	* 
	* Stop the movement at any time by calling `Body.stopMovement`.
	* 
	* Please note that due to browser timings you should allow for a variance in
	* when the distance will actually expire.
	* 
	* Note: This method doesn't take into consideration any other forces acting
	* on the Body, such as Gravity, drag or maxVelocity, all of which may impact the
	* movement.
	* 
	* @param duration The duration of the movement, in ms.
	* @param distance The distance, in pixels, the Body will move.
	* @param direction The angle of movement. If not provided `Body.angle` is used.
	* @return True if the movement successfully started, otherwise false.
	*/
	function moveTo(duration:Float, distance:Float, ?direction:Float):Bool;
	
	/**
	* Returns true if the bottom of this Body is in contact with either the world bounds or a tile.
	* 
	* @return True if in contact with either the world bounds or a tile.
	*/
	function onFloor():Bool;
	
	/**
	* Returns true if either side of this Body is in contact with either the world bounds or a tile.
	* 
	* @return True if in contact with either the world bounds or a tile.
	*/
	function onWall():Bool;
	
	/**
	* Internal method.
	*/
	function preUpdate():Void;
	
	/**
	* Internal method.
	*/
	function postUpdate():Void;
	
	/**
	* Render Sprite Body.
	* 
	* @param context The context to render to.
	* @param body The Body to render the info of.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgba(0,255,0,0.4)'
	* @param filled Render the objected as a filled (default, true) or a stroked (false) - Default: true
	*/
	function render(context:Dynamic, body:phaser.physics.arcade.Body, ?color:String, ?filled:Bool):Void;
	
	/**
	* Render Sprite Body Physics Data as text.
	* 
	* @param body The Body to render the info of.
	* @param x X position of the debug info to be rendered.
	* @param y Y position of the debug info to be rendered.
	* @param color color of the debug info to be rendered. (format is css color string). - Default: 'rgb(255,255,255)'
	*/
	function renderBodyInfo(debug:phaser.utils.Debug, body:phaser.physics.arcade.Body):Void;
	
	/**
	* Resets all Body values (velocity, acceleration, rotation, etc)
	* 
	* @param x The new x position of the Body.
	* @param y The new y position of the Body.
	*/
	function reset(x:Float, y:Float):Void;
	
	/**
	* Sets this Body as using a circle, of the given radius, for all collision detection instead of a rectangle.
	* The radius is given in pixels and is the distance from the center of the circle to the edge.
	* 
	* You can also control the x and y offset, which is the position of the Body relative to the top-left of the Sprite.
	* 
	* To change a Body back to being rectangular again call `Body.setSize`.
	* 
	* Note: Circular collision only happens with other Arcade Physics bodies, it does not
	* work against tile maps, where rectangular collision is the only method supported.
	* 
	* @param radius The radius of the Body in pixels. Pass a value of zero / undefined, to stop the Body using a circle for collision.
	* @param offsetX The X offset of the Body from the Sprite position.
	* @param offsetY The Y offset of the Body from the Sprite position.
	*/
	function setCircle(radius:Float, ?offsetX:Float, ?offsetY:Float):Void;
	
	/**
	* You can modify the size of the physics Body to be any dimension you need.
	* This allows you to make it smaller, or larger, than the parent Sprite.
	* You can also control the x and y offset of the Body. This is the position of the
	* Body relative to the top-left of the Sprite _texture_.
	* 
	* For example: If you have a Sprite with a texture that is 80x100 in size,
	* and you want the physics body to be 32x32 pixels in the middle of the texture, you would do:
	* 
	* `setSize(32 / Math.abs(this.scale.x), 32 / Math.abs(this.scale.y), 24, 34)`
	* 
	* Where the first two parameters are the new Body size (32x32 pixels) relative to the Sprite's scale.
	* 24 is the horizontal offset of the Body from the top-left of the Sprites texture, and 34
	* is the vertical offset.
	* 
	* If you've scaled a Sprite by altering its `width`, `height`, or `scale` and you want to
	* position the Body relative to the Sprite's dimensions (which will differ from its texture's
	* dimensions), you should divide these arguments by the Sprite's current scale:
	* 
	* `setSize(32 / sprite.scale.x, 32 / sprite.scale.y)`
	* 
	* Calling `setSize` on a Body that has already had `setCircle` will reset all of the Circle
	* properties, making this Body rectangular again.
	* 
	* @param width The width of the Body.
	* @param height The height of the Body.
	* @param offsetX The X offset of the Body from the top-left of the Sprite's texture.
	* @param offsetY The Y offset of the Body from the top-left of the Sprite's texture.
	*/
	function setSize(width:Float, height:Float, ?offsetX:Float, ?offsetY:Float):Void;
	
	/**
	* Internal method.
	*/
	function updateBounds():Bool;
	
}

