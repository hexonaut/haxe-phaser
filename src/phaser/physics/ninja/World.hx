package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja")
extern class World {
	
	/**
	 * Ninja Physics. The Ninja Physics system was created in Flash by Metanet Software and ported to JavaScript by Richard Davey.
	 * 
	 * It allows for AABB and Circle to Tile collision. Tiles can be any of 34 different types, including slopes, convex and concave shapes.
	 * 
	 * It does what it does very well, but is ripe for expansion and optimisation. Here are some features that I'd love to see the community add:
	 * 
	 * <ul>
	 * <li>AABB to AABB collision</li>
	 * <li>AABB to Circle collision</li>
	 * <li>AABB and Circle 'immovable' property support</li>
	 * <li>n-way collision, so an AABB/Circle could pass through a tile from below and land upon it.</li>
	 * <li>QuadTree or spatial grid for faster Body vs. Tile Group look-ups.</li>
	 * <li>Optimise the internal vector math and reduce the quantity of temporary vars created.</li>
	 * <li>Expand Gravity and Bounce to allow for separate x/y axis values.</li>
	 * <li>Support Bodies linked to Sprites that don't have anchor set to 0.5</li>
	 * </ul>
	 * 
	 * Feel free to attempt any of the above and submit a Pull Request with your code! Be sure to include test cases proving they work.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Local reference to game.time.
	 */
	var time:phaser.time.Time;
	
	/**
	 * The World gravity setting.
	 */
	var gravity:Float;
	
	/**
	 * The bounds inside of which the physics world exists. Defaults to match the world bounds.
	 */
	var bounds:phaser.geom.Rectangle;
	
	/**
	 * Used by the QuadTree to set the maximum number of objects per quad.
	 */
	var maxObjects:Float;
	
	/**
	 * Used by the QuadTree to set the maximum number of iteration levels.
	 */
	var maxLevels:Float;
	
	/**
	 * The world QuadTree.
	 */
	var quadTree:phaser.math.QuadTree;
	
	/**
	 * This will create a Ninja Physics AABB body on the given game object. Its dimensions will match the width and height of the object at the point it is created.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	 */
	@:overload(function (object:Dynamic, ?children:Bool = true):Void {})
	@:overload(function (object:Array<Dynamic>, ?children:Bool = true):Void {})
	function enableAABB (object:phaser.core.Group, ?children:Bool = true):Void;
	
	/**
	 * This will create a Ninja Physics Circle body on the given game object.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	 */
	@:overload(function (object:Dynamic, radius:Float, ?children:Bool = true):Void {})
	@:overload(function (object:Array<Dynamic>, radius:Float, ?children:Bool = true):Void {})
	function enableCircle (object:phaser.core.Group, radius:Float, ?children:Bool = true):Void;
	
	/**
	 * This will create a Ninja Physics Tile body on the given game object. There are 34 different types of tile you can create, including 45 degree slopes,
	 * convex and concave circles and more. The id parameter controls which Tile type is created, but you can also change it at run-time.
	 * Note that for all degree based tile types they need to have an equal width and height. If the given object doesn't have equal width and height it will use the width.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	 */
	@:overload(function (object:Dynamic, ?id:Float = 1, ?children:Bool = true):Void {})
	@:overload(function (object:Array<Dynamic>, ?id:Float = 1, ?children:Bool = true):Void {})
	function enableTile (object:phaser.core.Group, ?id:Float = 1, ?children:Bool = true):Void;
	
	/**
	 * This will create a Ninja Physics body on the given game object or array of game objects.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	 */
	@:overload(function (object:Dynamic, ?type:Float = 1, ?id:Float = 1, ?radius:Float = 0, ?children:Bool = true):Void {})
	@:overload(function (object:Array<Dynamic>, ?type:Float = 1, ?id:Float = 1, ?radius:Float = 0, ?children:Bool = true):Void {})
	function enable (object:phaser.core.Group, ?type:Float = 1, ?id:Float = 1, ?radius:Float = 0, ?children:Bool = true):Void;
	
	/**
	 * Creates a Ninja Physics body on the given game object.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the body is nulled.
	 */
	function enableBody (object:Dynamic):Void;
	
	/**
	 * Updates the size of this physics world.
	 */
	function setBounds (x:Float, y:Float, width:Float, height:Float):Void;
	
	/**
	 * Updates the size of this physics world to match the size of the game world.
	 */
	function setBoundsToWorld ():Void;
	
	/**
	 * Clears all physics bodies from the given TilemapLayer that were created with World.convertTilemap.
	 */
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float):Void {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String):Void {})
	function clearTilemapLayerBodies (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Goes through all tiles in the given Tilemap and TilemapLayer and converts those set to collide into physics tiles.
	 * Only call this <em>after</em> you have specified all of the tiles you wish to collide with calls like Tilemap.setCollisionBetween, etc.
	 * Every time you call this method it will destroy any previously created bodies and remove them from the world.
	 * Therefore understand it's a very expensive operation and not to be done in a core game update loop.
	 * 
	 * In Ninja the Tiles have an ID from 0 to 33, where 0 is 'empty', 1 is a full tile, 2 is a 45-degree slope, etc. You can find the ID
	 * list either at the very bottom of Tile.js, or in a handy visual reference in the resources/Ninja Physics Debug Tiles folder in the repository.
	 * The slopeMap parameter is an array that controls how the indexes of the tiles in your tilemap data will map to the Ninja Tile IDs.
	 * For example if you had 6 tiles in your tileset: Imagine the first 4 should be converted into fully solid Tiles and the other 2 are 45-degree slopes.
	 * Your slopeMap array would look like this: [ 1, 1, 1, 1, 2, 3 ].
	 * Where each element of the array is a tile in your tilemap and the resulting Ninja Tile it should create.
	 */
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float, ?slopeMap:Dynamic):Array<Dynamic> {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String, ?slopeMap:Dynamic):Array<Dynamic> {})
	function convertTilemap (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer, ?slopeMap:Dynamic):Array<Dynamic>;
	
	/**
	 * Checks for overlaps between two game objects. The objects can be Sprites, Groups or Emitters.
	 * You can perform Sprite vs. Sprite, Sprite vs. Group and Group vs. Group overlap checks.
	 * Unlike collide the objects are NOT automatically separated or have any physics applied, they merely test for overlap results.
	 * The second parameter can be an array of objects, of differing types.
	 */
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.gameobjects.Sprite, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.core.Group, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Array<Dynamic>, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Array<Dynamic>, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	function overlap (object1:Dynamic, object2:Array<Dynamic>, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	
	/**
	 * Checks for collision between two game objects. You can perform Sprite vs. Sprite, Sprite vs. Group, Group vs. Group, Sprite vs. Tilemap Layer or Group vs. Tilemap Layer collisions.
	 * The second parameter can be an array of objects, of differing types.
	 * The objects are also automatically separated. If you don't require separation then use ArcadePhysics.overlap instead.
	 * An optional processCallback can be provided. If given this function will be called when two sprites are found to be colliding. It is called before any separation takes place,
	 * giving you the chance to perform additional checks. If the function returns true then the collision and separation is carried out. If it returns false it is skipped.
	 * The collideCallback is an optional function that is only called if two sprites collide. If a processCallback has been set then it needs to return true for collideCallback to be called.
	 */
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:phaser.gameobjects.Sprite, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:phaser.core.Group, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:phaser.tilemap.TilemapLayer, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:phaser.tilemap.TilemapLayer, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:phaser.tilemap.TilemapLayer, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.tilemap.TilemapLayer, object2:phaser.tilemap.TilemapLayer, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.gameobjects.Sprite, object2:Array<Dynamic>, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:phaser.core.Group, object2:Array<Dynamic>, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	@:overload(function (object1:Dynamic, object2:Array<Dynamic>, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool {})
	function collide (object1:phaser.tilemap.TilemapLayer, object2:Array<Dynamic>, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	
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
	 * An internal function. Use Phaser.Physics.Ninja.collide instead.
	 */
	function collideSpriteVsSprite ():Void;
	
	/**
	 * An internal function. Use Phaser.Physics.Ninja.collide instead.
	 */
	function collideSpriteVsGroup ():Void;
	
	/**
	 * An internal function. Use Phaser.Physics.Ninja.collide instead.
	 */
	function collideGroupVsSelf ():Void;
	
	/**
	 * An internal function. Use Phaser.Physics.Ninja.collide instead.
	 */
	function collideGroupVsGroup ():Void;
	
	/**
	 * The core separation function to separate two physics bodies.
	 */
	function separate (body1:phaser.physics.ninja.Body, body2:phaser.physics.ninja.Body):Bool;
	
}
