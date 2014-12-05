package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade")
extern class World {
	
	/**
	 * The Arcade Physics world. Contains Arcade Physics related collision, overlap and motion methods.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The World gravity setting. Defaults to x: 0, y: 0, or no gravity.
	 */
	var gravity:phaser.geom.Point;
	
	/**
	 * The bounds inside of which the physics world exists. Defaults to match the world bounds.
	 */
	var bounds:phaser.geom.Rectangle;
	
	/**
	 * Set the checkCollision properties to control for which bounds collision is processed.
	 * For example checkCollision.down = false means Bodies cannot collide with the World.bounds.bottom.
	 */
	var checkCollision:Dynamic;
	
	/**
	 * Used by the QuadTree to set the maximum number of objects per quad.
	 */
	var maxObjects:Float;
	
	/**
	 * Used by the QuadTree to set the maximum number of iteration levels.
	 */
	var maxLevels:Float;
	
	/**
	 * A value added to the delta values during collision checks.
	 */
	var OVERLAP_BIAS:Float;
	
	/**
	 * A value added to the delta values during collision with tiles. Adjust this if you get tunnelling.
	 */
	var TILE_BIAS:Float;
	
	/**
	 * If true World.separate will always separate on the X axis before Y. Otherwise it will check gravity totals first.
	 */
	var forceX:Bool;
	
	/**
	 * If true the QuadTree will not be used for any collision. QuadTrees are great if objects are well spread out in your game, otherwise they are a performance hit. If you enable this you can disable on a per body basis via Body.skipQuadTree.
	 */
	var skipQuadTree:Bool;
	
	/**
	 * The world QuadTree.
	 */
	var quadTree:phaser.math.QuadTree;
	
	/**
	 * Internal cache var.
	 */
	var _overlap:Float;
	
	/**
	 * Internal cache var.
	 */
	var _maxOverlap:Float;
	
	/**
	 * Internal cache var.
	 */
	var _velocity1:Float;
	
	/**
	 * Internal cache var.
	 */
	var _velocity2:Float;
	
	/**
	 * Internal cache var.
	 */
	var _newVelocity1:Float;
	
	/**
	 * Internal cache var.
	 */
	var _newVelocity2:Float;
	
	/**
	 * Internal cache var.
	 */
	var _average:Float;
	
	/**
	 * Internal cache var.
	 */
	var _mapData:Array<Dynamic>;
	
	/**
	 * Internal cache var.
	 */
	var _result:Bool;
	
	/**
	 * Internal cache var.
	 */
	var _total:Float;
	
	/**
	 * Internal cache var.
	 */
	var _angle:Float;
	
	/**
	 * Internal cache var.
	 */
	var _dx:Float;
	
	/**
	 * Internal cache var.
	 */
	var _dy:Float;
	
	/**
	 * Updates the size of this physics world.
	 */
	function setBounds (x:Float, y:Float, width:Float, height:Float):Void;
	
	/**
	 * Updates the size of this physics world to match the size of the game world.
	 */
	function setBoundsToWorld ():Void;
	
	/**
	 * This will create an Arcade Physics body on the given game object or array of game objects.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	 */
	@:overload(function (object:Dynamic, ?children:Bool = true):Void {})
	@:overload(function (object:Array<Dynamic>, ?children:Bool = true):Void {})
	function enable (object:phaser.core.Group, ?children:Bool = true):Void;
	
	/**
	 * Creates an Arcade Physics body on the given game object.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the body is nulled.
	 */
	function enableBody (object:Dynamic):Void;
	
	/**
	 * Called automatically by a Physics body, it updates all motion related values on the Body.
	 */
	function updateMotion (The:phaser.physics.arcade.Body):Void;
	
	/**
	 * A tween-like function that takes a starting velocity and some other factors and returns an altered velocity.
	 * Based on a function in Flixel by @ADAMATOMIC
	 */
	function computeVelocity (axis:Float, body:phaser.physics.arcade.Body, velocity:Float, acceleration:Float, drag:Float, ?max:Float = 10000):Float;
	
	/**
	 * Checks for overlaps between two game objects. The objects can be Sprites, Groups or Emitters.
	 * You can perform Sprite vs. Sprite, Sprite vs. Group and Group vs. Group overlap checks.
	 * Unlike collide the objects are NOT automatically separated or have any physics applied, they merely test for overlap results.
	 * Both the first and second parameter can be arrays of objects, of differing types.
	 * If two arrays are passed, the contents of the first parameter will be tested against all contents of the 2nd parameter.
	 * NOTE: This function is not recursive, and will not test against children of objects passed (i.e. Groups within Groups).
	 */
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Array<Dynamic>, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Array<Dynamic>, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Array<Dynamic>, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Array<Dynamic>, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Array<Dynamic>, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Array<Dynamic>, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	function overlap (object1:Array<Dynamic>, object2:Array<Dynamic>, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	
	/**
	 * Checks for collision between two game objects. You can perform Sprite vs. Sprite, Sprite vs. Group, Group vs. Group, Sprite vs. Tilemap Layer or Group vs. Tilemap Layer collisions.
	 * Both the first and second parameter can be arrays of objects, of differing types.
	 * If two arrays are passed, the contents of the first parameter will be tested against all contents of the 2nd parameter.
	 * The objects are also automatically separated. If you don't require separation then use ArcadePhysics.overlap instead.
	 * An optional processCallback can be provided. If given this function will be called when two sprites are found to be colliding. It is called before any separation takes place,
	 * giving you the chance to perform additional checks. If the function returns true then the collision and separation is carried out. If it returns false it is skipped.
	 * The collideCallback is an optional function that is only called if two sprites collide. If a processCallback has been set then it needs to return true for collideCallback to be called.
	 * NOTE: This function is not recursive, and will not test against children of objects passed (i.e. Groups or Tilemaps within other Groups).
	 */
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Array<Dynamic>, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Array<Dynamic>, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Array<Dynamic>, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.tilemap.TilemapLayer, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.tilemap.TilemapLayer, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.tilemap.TilemapLayer, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:phaser.tilemap.TilemapLayer, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Array<Dynamic>, object2:phaser.tilemap.TilemapLayer, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Array<Dynamic>, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Array<Dynamic>, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Array<Dynamic>, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:Array<Dynamic>, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	function collide (object1:Array<Dynamic>, object2:Array<Dynamic>, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	
	/**
	 * Internal collision handler.
	 */
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:Dynamic, object2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:Dynamic, object2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:Dynamic, object2:Dynamic, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:Dynamic, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	@:overload(function (object1:Dynamic, object2:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void {})
	function collideHandler (object1:phaser.tilemap.TilemapLayer, object2:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	
	/**
	 * An internal function. Use Phaser.Physics.Arcade.collide instead.
	 */
	function collideSpriteVsSprite (sprite1:phaser.gameobjects.Sprite, sprite2:phaser.gameobjects.Sprite, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Bool;
	
	/**
	 * An internal function. Use Phaser.Physics.Arcade.collide instead.
	 */
	function collideSpriteVsGroup (sprite:phaser.gameobjects.Sprite, group:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	
	/**
	 * An internal function. Use Phaser.Physics.Arcade.collide instead.
	 */
	function collideGroupVsSelf (group:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Bool;
	
	/**
	 * An internal function. Use Phaser.Physics.Arcade.collide instead.
	 */
	function collideGroupVsGroup (group1:phaser.core.Group, group2:phaser.core.Group, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	
	/**
	 * An internal function. Use Phaser.Physics.Arcade.collide instead.
	 */
	function collideSpriteVsTilemapLayer (sprite:phaser.gameobjects.Sprite, tilemapLayer:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	
	/**
	 * An internal function. Use Phaser.Physics.Arcade.collide instead.
	 */
	function collideGroupVsTilemapLayer (group:phaser.core.Group, tilemapLayer:phaser.tilemap.TilemapLayer, collideCallback:Dynamic, processCallback:Dynamic, callbackContext:Dynamic, overlapOnly:Bool):Void;
	
	/**
	 * The core separation function to separate two physics bodies.
	 */
	function separate (body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, ?processCallback:Dynamic, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
	
	/**
	 * Check for intersection against two bodies.
	 */
	function intersects (body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body):Bool;
	
	/**
	 * The core separation function to separate two physics bodies on the x axis.
	 */
	function separateX (body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, overlapOnly:Bool):Bool;
	
	/**
	 * The core separation function to separate two physics bodies on the y axis.
	 */
	function separateY (body1:phaser.physics.arcade.Body, body2:phaser.physics.arcade.Body, overlapOnly:Bool):Bool;
	
	/**
	 * The core separation function to separate a physics body and a tile.
	 */
	function separateTile (body:phaser.physics.arcade.Body, tile:phaser.tilemap.Tile):Bool;
	
	/**
	 * Check the body against the given tile on the X axis.
	 */
	function tileCheckX (body:phaser.physics.arcade.Body, tile:phaser.tilemap.Tile):Float;
	
	/**
	 * Check the body against the given tile on the Y axis.
	 */
	function tileCheckY (body:phaser.physics.arcade.Body, tile:phaser.tilemap.Tile):Float;
	
	/**
	 * Internal function to process the separation of a physics body from a tile.
	 */
	function processTileSeparationX (body:phaser.physics.arcade.Body, x:Float):Bool;
	
	/**
	 * Internal function to process the separation of a physics body from a tile.
	 */
	function processTileSeparationY (body:phaser.physics.arcade.Body, y:Float):Void;
	
	/**
	 * Given a Group and a Pointer this will check to see which Group children overlap with the Pointer coordinates.
	 * Each child will be sent to the given callback for further processing.
	 * Note that the children are not checked for depth order, but simply if they overlap the Pointer or not.
	 */
	function getObjectsUnderPointer (pointer:phaser.input.Pointer, group:phaser.core.Group, ?callback:Dynamic, ?callbackContext:Dynamic):Dynamic;
	
	/**
	 * Given a Group and a location this will check to see which Group children overlap with the coordinates.
	 * Each child will be sent to the given callback for further processing.
	 * Note that the children are not checked for depth order, but simply if they overlap the coordinate or not.
	 */
	function getObjectsAtLocation (pointer:phaser.input.Pointer, group:phaser.core.Group, ?callback:Dynamic, ?callbackContext:Dynamic, ?callbackArg:Dynamic):Dynamic;
	
	/**
	 * Move the given display object towards the destination object at a steady velocity.
	 * If you specify a maxTime then it will adjust the speed (overwriting what you set) so it arrives at the destination in that number of seconds.
	 * Timings are approximate due to the way browser timers work. Allow for a variance of +- 50ms.
	 * Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	 * Note: The display object doesn't stop moving once it reaches the destination coordinates.
	 * Note: Doesn't take into account acceleration, maxVelocity or drag (if you've set drag or acceleration too high this object may not move at all)
	 */
	function moveToObject (displayObject:Dynamic, destination:Dynamic, ?speed:Float = 60, ?maxTime:Float = 0):Float;
	
	/**
	 * Move the given display object towards the pointer at a steady velocity. If no pointer is given it will use Phaser.Input.activePointer.
	 * If you specify a maxTime then it will adjust the speed (over-writing what you set) so it arrives at the destination in that number of seconds.
	 * Timings are approximate due to the way browser timers work. Allow for a variance of +- 50ms.
	 * Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	 * Note: The display object doesn't stop moving once it reaches the destination coordinates.
	 */
	function moveToPointer (displayObject:Dynamic, ?speed:Float = 60, ?pointer:phaser.input.Pointer, ?maxTime:Float = 0):Float;
	
	/**
	 * Move the given display object towards the x/y coordinates at a steady velocity.
	 * If you specify a maxTime then it will adjust the speed (over-writing what you set) so it arrives at the destination in that number of seconds.
	 * Timings are approximate due to the way browser timers work. Allow for a variance of +- 50ms.
	 * Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	 * Note: The display object doesn't stop moving once it reaches the destination coordinates.
	 * Note: Doesn't take into account acceleration, maxVelocity or drag (if you've set drag or acceleration too high this object may not move at all)
	 */
	function moveToXY (displayObject:Dynamic, x:Float, y:Float, ?speed:Float = 60, ?maxTime:Float = 0):Float;
	
	/**
	 * Given the angle (in degrees) and speed calculate the velocity and return it as a Point object, or set it to the given point object.
	 * One way to use this is: velocityFromAngle(angle, 200, sprite.velocity) which will set the values directly to the sprites velocity and not create a new Point object.
	 */
	@:overload(function (angle:Float, ?speed:Float = 60, ?point:phaser.geom.Point):phaser.geom.Point {})
	function velocityFromAngle (angle:Float, ?speed:Float = 60, ?point:Dynamic):phaser.geom.Point;
	
	/**
	 * Given the rotation (in radians) and speed calculate the velocity and return it as a Point object, or set it to the given point object.
	 * One way to use this is: velocityFromRotation(rotation, 200, sprite.velocity) which will set the values directly to the sprites velocity and not create a new Point object.
	 */
	@:overload(function (rotation:Float, ?speed:Float = 60, ?point:phaser.geom.Point):phaser.geom.Point {})
	function velocityFromRotation (rotation:Float, ?speed:Float = 60, ?point:Dynamic):phaser.geom.Point;
	
	/**
	 * Given the rotation (in radians) and speed calculate the acceleration and return it as a Point object, or set it to the given point object.
	 * One way to use this is: accelerationFromRotation(rotation, 200, sprite.acceleration) which will set the values directly to the sprites acceleration and not create a new Point object.
	 */
	@:overload(function (rotation:Float, ?speed:Float = 60, ?point:phaser.geom.Point):phaser.geom.Point {})
	function accelerationFromRotation (rotation:Float, ?speed:Float = 60, ?point:Dynamic):phaser.geom.Point;
	
	/**
	 * Sets the acceleration.x/y property on the display object so it will move towards the target at the given speed (in pixels per second sq.)
	 * You must give a maximum speed value, beyond which the display object won't go any faster.
	 * Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	 * Note: The display object doesn't stop moving once it reaches the destination coordinates.
	 */
	function accelerateToObject (displayObject:Dynamic, destination:Dynamic, ?speed:Float = 60, ?xSpeedMax:Float = 500, ?ySpeedMax:Float = 500):Float;
	
	/**
	 * Sets the acceleration.x/y property on the display object so it will move towards the target at the given speed (in pixels per second sq.)
	 * You must give a maximum speed value, beyond which the display object won't go any faster.
	 * Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	 * Note: The display object doesn't stop moving once it reaches the destination coordinates.
	 */
	function accelerateToPointer (displayObject:Dynamic, ?pointer:phaser.input.Pointer, ?speed:Float = 60, ?xSpeedMax:Float = 500, ?ySpeedMax:Float = 500):Float;
	
	/**
	 * Sets the acceleration.x/y property on the display object so it will move towards the x/y coordinates at the given speed (in pixels per second sq.)
	 * You must give a maximum speed value, beyond which the display object won't go any faster.
	 * Note: The display object does not continuously track the target. If the target changes location during transit the display object will not modify its course.
	 * Note: The display object doesn't stop moving once it reaches the destination coordinates.
	 */
	function accelerateToXY (displayObject:Dynamic, x:Float, y:Float, ?speed:Float = 60, ?xSpeedMax:Float = 500, ?ySpeedMax:Float = 500):Float;
	
	/**
	 * Find the distance between two display objects (like Sprites).
	 */
	function distanceBetween (source:Dynamic, target:Dynamic):Float;
	
	/**
	 * Find the distance between a display object (like a Sprite) and the given x/y coordinates.
	 * The calculation is made from the display objects x/y coordinate. This may be the top-left if its anchor hasn't been changed.
	 * If you need to calculate from the center of a display object instead use the method distanceBetweenCenters()
	 */
	function distanceToXY (displayObject:Dynamic, x:Float, y:Float):Float;
	
	/**
	 * Find the distance between a display object (like a Sprite) and a Pointer. If no Pointer is given the Input.activePointer is used.
	 * The calculation is made from the display objects x/y coordinate. This may be the top-left if its anchor hasn't been changed.
	 * If you need to calculate from the center of a display object instead use the method distanceBetweenCenters()
	 */
	function distanceToPointer (displayObject:Dynamic, ?pointer:phaser.input.Pointer):Float;
	
	/**
	 * Find the angle in radians between two display objects (like Sprites).
	 */
	function angleBetween (source:Dynamic, target:Dynamic):Float;
	
	/**
	 * Find the angle in radians between a display object (like a Sprite) and the given x/y coordinate.
	 */
	function angleToXY (displayObject:Dynamic, x:Float, y:Float):Float;
	
	/**
	 * Find the angle in radians between a display object (like a Sprite) and a Pointer, taking their x/y and center into account.
	 */
	function angleToPointer (displayObject:Dynamic, ?pointer:phaser.input.Pointer):Float;
	
}
