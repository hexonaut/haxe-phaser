package phaser.physics;

/**
* The Arcade Physics world. Contains Arcade Physics related collision, overlap and motion methods.
*/
@:native("Phaser.Physics.Arcade")
extern class Arcade {

	/**
	* A constant used for the sortDirection value.
	* Use this if you don't wish to perform any pre-collision sorting at all, or will manually sort your Groups.
	*/
	static var SORT_NONE:Float;
	
	/**
	* A constant used for the sortDirection value.
	* Use this if your game world is wide but short and scrolls from the left to the right (i.e. Mario)
	*/
	static var LEFT_RIGHT:Float;
	
	/**
	* A constant used for the sortDirection value.
	* Use this if your game world is wide but short and scrolls from the right to the left (i.e. Mario backwards)
	*/
	static var RIGHT_LEFT:Float;
	
	/**
	* A constant used for the sortDirection value.
	* Use this if your game world is narrow but tall and scrolls from the top to the bottom (i.e. Dig Dug)
	*/
	static var TOP_BOTTOM:Float;
	
	/**
	* A constant used for the sortDirection value.
	* Use this if your game world is narrow but tall and scrolls from the bottom to the top (i.e. Commando or a vertically scrolling shoot-em-up)
	*/
	static var BOTTOM_TOP:Float;
	
	/**
	* A value added to the delta values during collision checks.
	*/
	static var OVERLAP_BIAS:Float;
	
	static var TILE_BIAS:Float;
	
	/**
	* The Arcade Physics world. Contains Arcade Physics related collision, overlap and motion methods.
	* 
	* @param game reference to the current game instance.
	*/
	function new(game:phaser.Game);
	
	/**
	* The bounds inside of which the physics world exists. Defaults to match the world bounds.
	*/
	var bounds:phaser.Rectangle;
	
	/**
	* Which edges of the World bounds Bodies can collide against when `collideWorldBounds` is `true`.
	* For example checkCollision.down = false means Bodies cannot collide with the World.bounds.bottom. An object containing allowed collision flags (up, down, left, right).
	*/
	var checkCollision:{up:Bool, down:Bool, left:Bool, right:Bool};
	
	/**
	* If true World.separate will always separate on the X axis before Y. Otherwise it will check gravity totals first.
	*/
	var forceX:Bool;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* The World gravity setting. Defaults to x: 0, y: 0, or no gravity.
	*/
	var gravity:phaser.Point;
	
	/**
	* The world QuadTree.
	*/
	var quadTree:phaser.QuadTree;
	
	/**
	* Used by the QuadTree to set the maximum number of objects per quad.
	*/
	var maxObjects:Float;
	
	/**
	* Used by the QuadTree to set the maximum number of iteration levels.
	*/
	var maxLevels:Float;
	
	/**
	* If true the QuadTree will not be used for any collision. QuadTrees are great if objects are well spread out in your game, otherwise they are a performance hit. If you enable this you can disable on a per body basis via `Body.skipQuadTree`.
	*/
	var skipQuadTree:Bool;
	
	/**
	* Used when colliding a Sprite vs. a Group, or a Group vs. a Group, this defines the direction the sort is based on. Default is Phaser.Physics.Arcade.LEFT_RIGHT.
	*/
	var sortDirection:Float;
	
	/**
	* Given the rotation (in radians) and speed calculate the acceleration and return it as a Point object, or set it to the given point object.
	* One way to use this is: accelerationFromRotation(rotation, 200, sprite.acceleration) which will set the values directly to the sprites acceleration and not create a new Point object.
	* 
	* @param rotation The angle in radians.
	* @param speed The speed it will move, in pixels per second sq. - Default: 60
	* @param point The Point object in which the x and y properties will be set to the calculated acceleration.
	* @return - A Point where point.x contains the acceleration x value and point.y contains the acceleration y value.
	*/
	function accelerationFromRotation(rotation:Float, ?speed:Float, ?point:phaser.Point):phaser.Point;
	
	/**
	* Sets the acceleration.x/y property on the display object so it will move towards the target at the given speed (in pixels per second sq.)
	* You must give a maximum speed value, beyond which the display object won't go any faster.
	* Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	* Note: The display object doesn't stop moving once it reaches the destination coordinates.
	* 
	* @param displayObject The display object to move.
	* @param destination The display object to move towards. Can be any object but must have visible x/y properties.
	* @param speed The speed it will accelerate in pixels per second. - Default: 60
	* @param xSpeedMax The maximum x velocity the display object can reach. - Default: 500
	* @param ySpeedMax The maximum y velocity the display object can reach. - Default: 500
	* @return The angle (in radians) that the object should be visually set to in order to match its new trajectory.
	*/
	function accelerateToObject(displayObject:Dynamic, destination:Dynamic, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float;
	
	/**
	* Sets the acceleration.x/y property on the display object so it will move towards the target at the given speed (in pixels per second sq.)
	* You must give a maximum speed value, beyond which the display object won't go any faster.
	* Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	* Note: The display object doesn't stop moving once it reaches the destination coordinates.
	* 
	* @param displayObject The display object to move.
	* @param pointer The pointer to move towards. Defaults to Phaser.Input.activePointer.
	* @param speed The speed it will accelerate in pixels per second. - Default: 60
	* @param xSpeedMax The maximum x velocity the display object can reach. - Default: 500
	* @param ySpeedMax The maximum y velocity the display object can reach. - Default: 500
	* @return The angle (in radians) that the object should be visually set to in order to match its new trajectory.
	*/
	function accelerateToPointer(displayObject:Dynamic, ?pointer:phaser.Pointer, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float;
	
	/**
	* Sets the acceleration.x/y property on the display object so it will move towards the x/y coordinates at the given speed (in pixels per second sq.)
	* You must give a maximum speed value, beyond which the display object won't go any faster.
	* Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	* Note: The display object doesn't stop moving once it reaches the destination coordinates.
	* 
	* @param displayObject The display object to move.
	* @param x The x coordinate to accelerate towards.
	* @param y The y coordinate to accelerate towards.
	* @param speed The speed it will accelerate in pixels per second. - Default: 60
	* @param xSpeedMax The maximum x velocity the display object can reach. - Default: 500
	* @param ySpeedMax The maximum y velocity the display object can reach. - Default: 500
	* @return The angle (in radians) that the object should be visually set to in order to match its new trajectory.
	*/
	function accelerateToXY(displayObject:Dynamic, x:Float, y:Float, ?speed:Float, ?xSpeedMax:Float, ?ySpeedMax:Float):Float;
	
	/**
	* Find the angle in radians between two display objects (like Sprites).
	* 
	* The optional `world` argument allows you to return the result based on the Game Objects `world` property,
	* instead of its `x` and `y` values. This is useful of the object has been nested inside an offset Group,
	* or parent Game Object.
	* 
	* @param source The Display Object to test from.
	* @param target The Display Object to test to.
	* @param world Calculate the angle using World coordinates (true), or Object coordinates (false, the default)
	* @return The angle in radians between the source and target display objects.
	*/
	function angleBetween(source:Dynamic, target:Dynamic, ?world:Bool):Float;
	
	/**
	* Find the angle in radians between a display object (like a Sprite) and a Pointer, taking their x/y and center into account.
	* 
	* The optional `world` argument allows you to return the result based on the Game Objects `world` property,
	* instead of its `x` and `y` values. This is useful of the object has been nested inside an offset Group,
	* or parent Game Object.
	* 
	* @param displayObject The Display Object to test from.
	* @param pointer The Phaser.Pointer to test to. If none is given then Input.activePointer is used.
	* @param world Calculate the angle using World coordinates (true), or Object coordinates (false, the default)
	* @return The angle in radians between displayObject.x/y to Pointer.x/y
	*/
	function angleToPointer(displayObject:Dynamic, ?pointer:phaser.Pointer, ?world:Bool):Float;
	
	/**
	* Find the angle in radians between a display object (like a Sprite) and the given x/y coordinate.
	* 
	* The optional `world` argument allows you to return the result based on the Game Objects `world` property,
	* instead of its `x` and `y` values. This is useful of the object has been nested inside an offset Group,
	* or parent Game Object.
	* 
	* @param displayObject The Display Object to test from.
	* @param x The x coordinate to get the angle to.
	* @param y The y coordinate to get the angle to.
	* @param world Calculate the angle using World coordinates (true), or Object coordinates (false, the default)
	* @return The angle in radians between displayObject.x/y to Pointer.x/y
	*/
	function angleToXY(displayObject:Dynamic, x:Float, y:Float, ?world:Bool):Float;
	
	/**
	* Checks for collision between two game objects and separates them if colliding. If you don't require separation then use {@link Phaser.Physics.Arcade#overlap overlap} instead.
	* 
	* You can perform Sprite vs. Sprite, Sprite vs. Group, Group vs. Group, Sprite vs. Tilemap Layer or Group vs. Tilemap Layer collisions.
	* Both the `object1` and `object2` can be arrays of objects, of differing types.
	* 
	* If two Groups or arrays are passed, the contents of one will be tested against all contents of the other.
	* If one Group or array **only** is passed (as `object1`), contents of the Group or array will be collided against each other.
	* 
	* If either object is `null` the collision test will fail.
	* 
	* Bodies with `enable = false` and Sprites with `exists = false` are skipped (ignored).
	* 
	* An optional processCallback can be provided. If given this function will be called when two sprites are found to be colliding. It is called before any separation takes place, giving you the chance to perform additional checks. If the function returns true then the collision and separation is carried out. If it returns false it is skipped.
	* 
	* The collideCallback is an optional function that is only called if two sprites collide. If a processCallback has been set then it needs to return true for collideCallback to be called.
	* 
	* **This function is not recursive**, and will not test against children of objects passed (i.e. Groups or Tilemaps within other Groups).
	* 
	* ##### Tilemaps
	* 
	* Tiles marked via {@link Phaser.Tilemap#setCollision} (and similar methods) are "solid". If a Sprite collides with one of these tiles, the two are separated by moving the Sprite outside the tile's edges. Enable {@link Phaser.TilemapLayer#debug} to see the colliding edges of the Tilemap.
	* 
	* Tiles with a callback attached via {@link Phaser.Tilemap#setTileIndexCallback} or {@link Phaser.Tilemap#setTileLocationCallback} invoke the callback if a Sprite collides with them. If a tile has a callback attached via both methods, only the location callback is invoked. The colliding Sprite is separated from the tile only if the callback returns `true`.
	* 
	* @param object1 The first object or array of objects to check. Can be Phaser.Sprite, Phaser.Group, Phaser.Particles.Emitter, or Phaser.TilemapLayer.
	* @param object2 The second object or array of objects to check. Can be Phaser.Sprite, Phaser.Group, Phaser.Particles.Emitter or Phaser.TilemapLayer.
	* @param collideCallback An optional callback function that is called if the objects collide. The two objects will be passed to this function in the same order in which you specified them, unless you are colliding Group vs. Sprite, in which case Sprite will always be the first parameter.
	* @param processCallback A callback function that lets you perform additional checks against the two objects if they overlap. If this is set then collision will only happen if processCallback returns true. The two objects will be passed to this function in the same order in which you specified them, unless you are colliding Group vs. Sprite, in which case Sprite will always be the first parameter.
	* @param callbackContext The context in which to run the callbacks.
	* @return True if a collision occurred otherwise false.
	*/
	function collide(object1:Dynamic, ?object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	
	/**
	* A tween-like function that takes a starting velocity and some other factors and returns an altered velocity.
	* Based on a function in Flixel by @ADAMATOMIC
	* 
	* @param axis 0 for nothing, 1 for horizontal, 2 for vertical.
	* @param body The Body object to be updated.
	* @param velocity Any component of velocity (e.g. 20).
	* @param acceleration Rate at which the velocity is changing.
	* @param drag Really kind of a deceleration, this is how much the velocity changes if Acceleration is not set.
	* @param max An absolute value cap for the velocity. - Default: 10000
	* @return The altered Velocity value.
	*/
	function computeVelocity(axis:Float, body:phaser.physics.arcade.Body, velocity:Float, acceleration:Float, drag:Float, ?max:Float):Float;
	
	/**
	* Find the distance between two display objects (like Sprites).
	* 
	* The optional `world` argument allows you to return the result based on the Game Objects `world` property,
	* instead of its `x` and `y` values. This is useful of the object has been nested inside an offset Group,
	* or parent Game Object.
	* 
	* @param source The Display Object to test from.
	* @param target The Display Object to test to.
	* @param world Calculate the distance using World coordinates (true), or Object coordinates (false, the default)
	* @return The distance between the source and target objects.
	*/
	function distanceBetween(source:Dynamic, target:Dynamic, ?world:Bool):Float;
	
	/**
	* Find the distance between a display object (like a Sprite) and a Pointer. If no Pointer is given the Input.activePointer is used.
	* The calculation is made from the display objects x/y coordinate. This may be the top-left if its anchor hasn't been changed.
	* If you need to calculate from the center of a display object instead use the method distanceBetweenCenters()
	* 
	* The optional `world` argument allows you to return the result based on the Game Objects `world` property,
	* instead of its `x` and `y` values. This is useful of the object has been nested inside an offset Group,
	* or parent Game Object.
	* 
	* @param displayObject The Display Object to test from.
	* @param pointer The Phaser.Pointer to test to. If none is given then Input.activePointer is used.
	* @param world Calculate the distance using World coordinates (true), or Object coordinates (false, the default)
	* @return The distance between the object and the Pointer.
	*/
	function distanceToPointer(displayObject:Dynamic, ?pointer:phaser.Pointer, ?world:Bool):Float;
	
	/**
	* Find the distance between a display object (like a Sprite) and the given x/y coordinates.
	* The calculation is made from the display objects x/y coordinate. This may be the top-left if its anchor hasn't been changed.
	* If you need to calculate from the center of a display object instead use the method distanceBetweenCenters()
	* 
	* The optional `world` argument allows you to return the result based on the Game Objects `world` property,
	* instead of its `x` and `y` values. This is useful of the object has been nested inside an offset Group,
	* or parent Game Object.
	* 
	* @param displayObject The Display Object to test from.
	* @param x The x coordinate to move towards.
	* @param y The y coordinate to move towards.
	* @param world Calculate the distance using World coordinates (true), or Object coordinates (false, the default)
	* @return The distance between the object and the x/y coordinates.
	*/
	function distanceToXY(displayObject:Dynamic, x:Float, y:Float, ?world:Bool):Float;
	
	/**
	* This will create an Arcade Physics body on the given game object or array of game objects.
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	* 
	* @param object The game object to create the physics body on. Can also be an array or Group of objects, a body will be created on every child that has a `body` property.
	* @param children Should a body be created on all children of this object? If true it will recurse down the display list as far as it can go. - Default: true
	*/
	function enable(object:Dynamic, ?children:Bool):Void;
	
	/**
	* Creates an Arcade Physics body on the given game object.
	* 
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the body is nulled.
	* 
	* When you add an Arcade Physics body to an object it will automatically add the object into its parent Groups hash array.
	* 
	* @param object The game object to create the physics body on. A body will only be created if this object has a null `body` property.
	*/
	function enableBody(object:Dynamic):Void;
	
	/**
	* Given a Group and a location this will check to see which Group children overlap with the coordinates.
	* Each child will be sent to the given callback for further processing.
	* Note that the children are not checked for depth order, but simply if they overlap the coordinate or not.
	* 
	* @param x The x coordinate to check.
	* @param y The y coordinate to check.
	* @param group The Group to check.
	* @param callback A callback function that is called if the object overlaps the coordinates. The callback will be sent two parameters: the callbackArg and the Object that overlapped the location.
	* @param callbackContext The context in which to run the callback.
	* @param callbackArg An argument to pass to the callback.
	* @return An array of the Sprites from the Group that overlapped the coordinates.
	*/
	function getObjectsAtLocation(x:Float, y:Float, group:phaser.Group, ?callback:Dynamic->Dynamic->Void, ?callbackContext:Dynamic, ?callbackArg:Dynamic):Array<Sprite>;
	
	/**
	* Calculates the horizontal overlap between two Bodies and sets their properties accordingly, including:
	* `touching.left`, `touching.right` and `overlapX`.
	* 
	* @param body1 The first Body to separate.
	* @param body2 The second Body to separate.
	* @param overlapOnly Is this an overlap only check, or part of separation?
	* @return Returns the amount of horizontal overlap between the two bodies.
	*/
	function getOverlapX(body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body):Float;
	
	/**
	* Calculates the vertical overlap between two Bodies and sets their properties accordingly, including:
	* `touching.up`, `touching.down` and `overlapY`.
	* 
	* @param body1 The first Body to separate.
	* @param body2 The second Body to separate.
	* @param overlapOnly Is this an overlap only check, or part of separation?
	* @return Returns the amount of vertical overlap between the two bodies.
	*/
	function getOverlapY(body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body):Float;
	
	/**
	* Check for intersection against two bodies.
	* 
	* @param body1 The first Body object to check.
	* @param body2 The second Body object to check.
	* @return True if they intersect, otherwise false.
	*/
	function intersects(body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body):Bool;
	
	/**
	* Move the given display object towards the destination object at a steady velocity.
	* If you specify a maxTime then it will adjust the speed (overwriting what you set) so it arrives at the destination in that number of seconds.
	* Timings are approximate due to the way browser timers work. Allow for a variance of +- 50ms.
	* Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	* Note: The display object doesn't stop moving once it reaches the destination coordinates.
	* Note: Doesn't take into account acceleration, maxVelocity or drag (if you've set drag or acceleration too high this object may not move at all)
	* 
	* @param displayObject The display object to move.
	* @param destination The display object to move towards. Can be any object but must have visible x/y properties.
	* @param speed The speed it will move, in pixels per second (default is 60 pixels/sec) - Default: 60
	* @param maxTime Time given in milliseconds (1000 = 1 sec). If set the speed is adjusted so the object will arrive at destination in the given number of ms.
	* @return The angle (in radians) that the object should be visually set to in order to match its new velocity.
	*/
	function moveToObject(displayObject:Dynamic, destination:Dynamic, ?speed:Float, ?maxTime:Float):Float;
	
	/**
	* Move the given display object towards the pointer at a steady velocity. If no pointer is given it will use Phaser.Input.activePointer.
	* If you specify a maxTime then it will adjust the speed (over-writing what you set) so it arrives at the destination in that number of seconds.
	* Timings are approximate due to the way browser timers work. Allow for a variance of +- 50ms.
	* Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	* Note: The display object doesn't stop moving once it reaches the destination coordinates.
	* 
	* @param displayObject The display object to move.
	* @param speed The speed it will move, in pixels per second (default is 60 pixels/sec) - Default: 60
	* @param pointer The pointer to move towards. Defaults to Phaser.Input.activePointer.
	* @param maxTime Time given in milliseconds (1000 = 1 sec). If set the speed is adjusted so the object will arrive at destination in the given number of ms.
	* @return The angle (in radians) that the object should be visually set to in order to match its new velocity.
	*/
	function moveToPointer(displayObject:Dynamic, ?speed:Float, ?pointer:phaser.Pointer, ?maxTime:Float):Float;
	
	/**
	* Move the given display object towards the x/y coordinates at a steady velocity.
	* If you specify a maxTime then it will adjust the speed (over-writing what you set) so it arrives at the destination in that number of seconds.
	* Timings are approximate due to the way browser timers work. Allow for a variance of +- 50ms.
	* Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	* Note: The display object doesn't stop moving once it reaches the destination coordinates.
	* Note: Doesn't take into account acceleration, maxVelocity or drag (if you've set drag or acceleration too high this object may not move at all)
	* 
	* @param displayObject The display object to move.
	* @param x The x coordinate to move towards.
	* @param y The y coordinate to move towards.
	* @param speed The speed it will move, in pixels per second (default is 60 pixels/sec) - Default: 60
	* @param maxTime Time given in milliseconds (1000 = 1 sec). If set the speed is adjusted so the object will arrive at destination in the given number of ms.
	* @return The angle (in radians) that the object should be visually set to in order to match its new velocity.
	*/
	function moveToXY(displayObject:Dynamic, x:Float, y:Float, ?speed:Float, ?maxTime:Float):Float;
	
	/**
	* Checks for overlaps between two game objects. The objects can be Sprites, Groups or Emitters.
	* 
	* Unlike {@link Phaser.Physics.Arcade#collide collide} the objects are NOT automatically separated or have any physics applied, they merely test for overlap results.
	* 
	* You can perform Sprite vs. Sprite, Sprite vs. Group and Group vs. Group overlap checks.
	* Both the first and second parameter can be arrays of objects, of differing types.
	* If two arrays are passed, the contents of the first parameter will be tested against all contents of the 2nd parameter.
	* 
	* **This function is not recursive**, and will not test against children of objects passed (i.e. Groups within Groups).
	* 
	* ##### Tilemaps
	* 
	* Any overlapping tiles, including blank/null tiles, will give a positive result. Tiles marked via {@link Phaser.Tilemap#setCollision} (and similar methods) have no special status, and callbacks added via {@link Phaser.Tilemap#setTileIndexCallback} or {@link Phaser.Tilemap#setTileLocationCallback} are not invoked. So calling this method without any callbacks isn't very useful.
	* 
	* If you're interested only in whether an object overlaps a certain tile or class of tiles, filter the tiles with `processCallback` and then use the result returned by this method. Blank/null tiles can be excluded by their {@link Phaser.Tile#index index} (-1).
	* 
	* If you want to take action on certain overlaps, examine the tiles in `collideCallback` and then handle as you like.
	* 
	* @param object1 The first object or array of objects to check. Can be Phaser.Sprite, Phaser.Group or Phaser.Particles.Emitter.
	* @param object2 The second object or array of objects to check. Can be Phaser.Sprite, Phaser.Group or Phaser.Particles.Emitter.
	* @param overlapCallback An optional callback function that is called if the objects overlap. The two objects will be passed to this function in the same order in which you specified them, unless you are checking Group vs. Sprite, in which case Sprite will always be the first parameter.
	* @param processCallback A callback function that lets you perform additional checks against the two objects if they overlap. If this is set then `overlapCallback` will only be called if this callback returns `true`.
	* @param callbackContext The context in which to run the callbacks.
	* @return True if an overlap occurred otherwise false.
	*/
	function overlap(object1:Dynamic, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	
	function processTileSeparationX(body:phaser.physics.arcade.Body, x:Float):Bool;
	
	function processTileSeparationY(body:phaser.physics.arcade.Body, y:Float):Void;
	
	/**
	* Updates the size of this physics world.
	* 
	* @param x Top left most corner of the world.
	* @param y Top left most corner of the world.
	* @param width New width of the world. Can never be smaller than the Game.width.
	* @param height New height of the world. Can never be smaller than the Game.height.
	*/
	function setBounds(x:Float, y:Float, width:Float, height:Float):Void;
	
	/**
	* Updates the size of this physics world to match the size of the game world.
	*/
	function setBoundsToWorld():Void;
	
	/**
	* The core separation function to separate two physics bodies.
	* 
	* @param body1 The first Body object to separate.
	* @param body2 The second Body object to separate.
	* @param processCallback A callback function that lets you perform additional checks against the two objects if they overlap. If this function is set then the sprites will only be collided if it returns true.
	* @param callbackContext The context in which to run the process callback.
	* @param overlapOnly Just run an overlap or a full collision.
	* @return Returns true if the bodies collided, otherwise false.
	*/
	function separate(body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, ?processCallback:Dynamic, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
	
	/**
	* The core separation function to separate two physics bodies on the x axis.
	* 
	* @param body1 The first Body to separate.
	* @param body2 The second Body to separate.
	* @param overlapOnly If true the bodies will only have their overlap data set, no separation or exchange of velocity will take place.
	* @return Returns true if the bodies were separated or overlap, otherwise false.
	*/
	function separateX(body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, overlapOnly:Bool):Bool;
	
	/**
	* The core separation function to separate two physics bodies on the y axis.
	* 
	* @param body1 The first Body to separate.
	* @param body2 The second Body to separate.
	* @param overlapOnly If true the bodies will only have their overlap data set, no separation or exchange of velocity will take place.
	* @return Returns true if the bodies were separated or overlap, otherwise false.
	*/
	function separateY(body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, overlapOnly:Bool):Bool;
	
	function separateTile(i:Float, body:phaser.physics.arcade.Body, tile:phaser.Tile):Bool;
	
	/**
	* This method will sort a Groups hash array.
	* 
	* If the Group has `physicsSortDirection` set it will use the sort direction defined.
	* 
	* Otherwise if the sortDirection parameter is undefined, or Group.physicsSortDirection is null, it will use Phaser.Physics.Arcade.sortDirection.
	* 
	* By changing Group.physicsSortDirection you can customise each Group to sort in a different order.
	* 
	* @param group The Group to sort.
	* @param sortDirection The sort direction used to sort this Group.
	*/
	function sort(group:phaser.Group):Void;
	
	function tileCheckX(body:phaser.physics.arcade.Body, tile:phaser.Tile):Float;
	
	function tileCheckY(body:phaser.physics.arcade.Body, tile:phaser.Tile):Float;
	
	/**
	* Called automatically by a Physics body, it updates all motion related values on the Body unless `World.isPaused` is `true`.
	* 
	* @param The Body object to be updated.
	*/
	function updateMotion(body:phaser.physics.arcade.Body):Void;
	
	/**
	* Given the angle (in degrees) and speed calculate the velocity and return it as a Point object, or set it to the given point object.
	* One way to use this is: velocityFromAngle(angle, 200, sprite.velocity) which will set the values directly to the sprites velocity and not create a new Point object.
	* 
	* @param angle The angle in degrees calculated in clockwise positive direction (down = 90 degrees positive, right = 0 degrees positive, up = 90 degrees negative)
	* @param speed The speed it will move, in pixels per second sq. - Default: 60
	* @param point The Point object in which the x and y properties will be set to the calculated velocity.
	* @return - A Point where point.x contains the velocity x value and point.y contains the velocity y value.
	*/
	function velocityFromAngle(angle:Float, ?speed:Float, ?point:phaser.Point):phaser.Point;
	
	/**
	* Given the rotation (in radians) and speed calculate the velocity and return it as a Point object, or set it to the given point object.
	* One way to use this is: velocityFromRotation(rotation, 200, sprite.velocity) which will set the values directly to the sprites velocity and not create a new Point object.
	* 
	* @param rotation The angle in radians.
	* @param speed The speed it will move, in pixels per second sq. - Default: 60
	* @param point The Point object in which the x and y properties will be set to the calculated velocity.
	* @return - A Point where point.x contains the velocity x value and point.y contains the velocity y value.
	*/
	function velocityFromRotation(rotation:Float, ?speed:Float, ?point:phaser.Point):phaser.Point;
	
}

