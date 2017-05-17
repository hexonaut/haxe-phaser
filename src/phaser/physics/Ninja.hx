package phaser.physics;

/**
* Ninja Physics. The Ninja Physics system was created in Flash by Metanet Software and ported to JavaScript by Richard Davey.
* 
* It allows for AABB and Circle to Tile collision. Tiles can be any of 34 different types, including slopes, convex and concave shapes.
* 
* It does what it does very well, but is ripe for expansion and optimisation. Here are some features that I'd love to see the community add:
* 
* * AABB to AABB collision
* * AABB to Circle collision
* * AABB and Circle 'immovable' property support
* * n-way collision, so an AABB/Circle could pass through a tile from below and land upon it.
* * QuadTree or spatial grid for faster Body vs. Tile Group look-ups.
* * Optimise the internal vector math and reduce the quantity of temporary vars created.
* * Expand Gravity and Bounce to allow for separate x/y axis values.
* * Support Bodies linked to Sprites that don't have anchor set to 0.5
* 
* Feel free to attempt any of the above and submit a Pull Request with your code! Be sure to include test cases proving they work.
*/
@:native("Phaser.Physics.Ninja")
extern class Ninja {

	/**
	* Ninja Physics. The Ninja Physics system was created in Flash by Metanet Software and ported to JavaScript by Richard Davey.
	* 
	* It allows for AABB and Circle to Tile collision. Tiles can be any of 34 different types, including slopes, convex and concave shapes.
	* 
	* It does what it does very well, but is ripe for expansion and optimisation. Here are some features that I'd love to see the community add:
	* 
	* * AABB to AABB collision
	* * AABB to Circle collision
	* * AABB and Circle 'immovable' property support
	* * n-way collision, so an AABB/Circle could pass through a tile from below and land upon it.
	* * QuadTree or spatial grid for faster Body vs. Tile Group look-ups.
	* * Optimise the internal vector math and reduce the quantity of temporary vars created.
	* * Expand Gravity and Bounce to allow for separate x/y axis values.
	* * Support Bodies linked to Sprites that don't have anchor set to 0.5
	* 
	* Feel free to attempt any of the above and submit a Pull Request with your code! Be sure to include test cases proving they work.
	* 
	* @param game reference to the current game instance.
	*/
	function new(game:phaser.Game);
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* The World gravity setting.
	*/
	var gravity:Float;
	
	/**
	* The bounds inside of which the physics world exists. Defaults to match the world bounds.
	*/
	var bounds:phaser.Rectangle;
	
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
	var quadTree:phaser.QuadTree;
	
	/**
	* Local reference to game.time.
	*/
	var time:phaser.Time;
	
	/**
	* Clears all physics bodies from the given TilemapLayer that were created with `World.convertTilemap`.
	* 
	* @param map The Tilemap to get the map data from.
	* @param layer The layer to operate on. If not given will default to map.currentLayer.
	*/
	function clearTilemapLayerBodies(map:phaser.Tilemap, layer:Dynamic):Void;
	
	/**
	* Checks for collision between two game objects. You can perform Sprite vs. Sprite, Sprite vs. Group, Group vs. Group, Sprite vs. Tilemap Layer or Group vs. Tilemap Layer collisions.
	* The second parameter can be an array of objects, of differing types.
	* The objects are also automatically separated. If you don't require separation then use ArcadePhysics.overlap instead.
	* An optional processCallback can be provided. If given this function will be called when two sprites are found to be colliding. It is called before any separation takes place,
	* giving you the chance to perform additional checks. If the function returns true then the collision and separation is carried out. If it returns false it is skipped.
	* The collideCallback is an optional function that is only called if two sprites collide. If a processCallback has been set then it needs to return true for collideCallback to be called.
	* 
	* @param object1 The first object to check. Can be an instance of Phaser.Sprite, Phaser.Group, Phaser.Particles.Emitter, or Phaser.TilemapLayer.
	* @param object2 The second object or array of objects to check. Can be Phaser.Sprite, Phaser.Group, Phaser.Particles.Emitter or Phaser.TilemapLayer.
	* @param collideCallback An optional callback function that is called if the objects collide. The two objects will be passed to this function in the same order in which you specified them.
	* @param processCallback A callback function that lets you perform additional checks against the two objects if they overlap. If this is set then collision will only happen if processCallback returns true. The two objects will be passed to this function in the same order in which you specified them.
	* @param callbackContext The context in which to run the callbacks.
	* @return True if a collision occured otherwise false.
	*/
	function collide(object1:Dynamic, object2:Dynamic, ?collideCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	
	/**
	* Goes through all tiles in the given Tilemap and TilemapLayer and converts those set to collide into physics tiles.
	* Only call this *after* you have specified all of the tiles you wish to collide with calls like Tilemap.setCollisionBetween, etc.
	* Every time you call this method it will destroy any previously created bodies and remove them from the world.
	* Therefore understand it's a very expensive operation and not to be done in a core game update loop.
	* 
	* In Ninja the Tiles have an ID from 0 to 33, where 0 is 'empty', 1 is a full tile, 2 is a 45-degree slope, etc. You can find the ID
	* list either at the very bottom of `Tile.js`, or in a handy visual reference in the `resources/Ninja Physics Debug Tiles` folder in the repository.
	* The slopeMap parameter is an array that controls how the indexes of the tiles in your tilemap data will map to the Ninja Tile IDs.
	* For example if you had 6 tiles in your tileset: Imagine the first 4 should be converted into fully solid Tiles and the other 2 are 45-degree slopes.
	* Your slopeMap array would look like this: `[ 1, 1, 1, 1, 2, 3 ]`.
	* Where each element of the array is a tile in your tilemap and the resulting Ninja Tile it should create.
	* 
	* @param map The Tilemap to get the map data from.
	* @param layer The layer to operate on. If not given will default to map.currentLayer.
	* @param slopeMap The tilemap index to Tile ID map.
	* @return An array of the Phaser.Physics.Ninja.Tile objects that were created.
	*/
	function convertTilemap(map:phaser.Tilemap, layer:Dynamic, slopeMap:Dynamic):Array<phaser.physics.ninja.Tile>;
	
	/**
	* This will create a Ninja Physics AABB body on the given game object. Its dimensions will match the width and height of the object at the point it is created.
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	* 
	* @param object The game object to create the physics body on. Can also be an array or Group of objects, a body will be created on every child that has a `body` property.
	* @param children Should a body be created on all children of this object? If true it will recurse down the display list as far as it can go. - Default: true
	*/
	function enableAABB(object:Dynamic, ?children:Bool):Void;
	
	/**
	* This will create a Ninja Physics Circle body on the given game object.
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	* 
	* @param object The game object to create the physics body on. Can also be an array or Group of objects, a body will be created on every child that has a `body` property.
	* @param radius The radius of the Circle.
	* @param children Should a body be created on all children of this object? If true it will recurse down the display list as far as it can go. - Default: true
	*/
	function enableCircle(object:Dynamic, radius:Float, ?children:Bool):Void;
	
	/**
	* This will create a Ninja Physics Tile body on the given game object. There are 34 different types of tile you can create, including 45 degree slopes,
	* convex and concave circles and more. The id parameter controls which Tile type is created, but you can also change it at run-time.
	* Note that for all degree based tile types they need to have an equal width and height. If the given object doesn't have equal width and height it will use the width.
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	* 
	* @param object The game object to create the physics body on. Can also be an array or Group of objects, a body will be created on every child that has a `body` property.
	* @param id The type of Tile this will use, i.e. Phaser.Physics.Ninja.Tile.SLOPE_45DEGpn, Phaser.Physics.Ninja.Tile.CONVEXpp, etc. - Default: 1
	* @param children Should a body be created on all children of this object? If true it will recurse down the display list as far as it can go. - Default: true
	*/
	function enableTile(object:Dynamic, id:Float, ?children:Bool):Void;
	
	/**
	* This will create a Ninja Physics body on the given game object or array of game objects.
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	* 
	* @param object The game object to create the physics body on. Can also be an array or Group of objects, a body will be created on every child that has a `body` property.
	* @param type The type of Ninja shape to create. 1 = AABB, 2 = Circle or 3 = Tile. - Default: 1
	* @param id If this body is using a Tile shape, you can set the Tile id here, i.e. Phaser.Physics.Ninja.Tile.SLOPE_45DEGpn, Phaser.Physics.Ninja.Tile.CONVEXpp, etc. - Default: 1
	* @param radius If this body is using a Circle shape this controls the radius.
	* @param children Should a body be created on all children of this object? If true it will recurse down the display list as far as it can go. - Default: true
	*/
	function enable(object:Dynamic, ?type:Float, ?id:Float, ?radius:Float, ?children:Bool):Void;
	
	/**
	* Creates a Ninja Physics body on the given game object.
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the body is nulled.
	* 
	* @param object The game object to create the physics body on. A body will only be created if this object has a null `body` property.
	*/
	function enableBody(object:Dynamic, ?type:Float, ?id:Float, ?radius:Float):Void;
	
	/**
	* Checks for overlaps between two game objects. The objects can be Sprites, Groups or Emitters.
	* You can perform Sprite vs. Sprite, Sprite vs. Group and Group vs. Group overlap checks.
	* Unlike collide the objects are NOT automatically separated or have any physics applied, they merely test for overlap results.
	* The second parameter can be an array of objects, of differing types.
	* 
	* @param object1 The first object to check. Can be an instance of Phaser.Sprite, Phaser.Group or Phaser.Particles.Emitter.
	* @param object2 The second object or array of objects to check. Can be Phaser.Sprite, Phaser.Group or Phaser.Particles.Emitter.
	* @param overlapCallback An optional callback function that is called if the objects overlap. The two objects will be passed to this function in the same order in which you specified them.
	* @param processCallback A callback function that lets you perform additional checks against the two objects if they overlap. If this is set then overlapCallback will only be called if processCallback returns true.
	* @param callbackContext The context in which to run the callbacks.
	* @return True if an overlap occured otherwise false.
	*/
	function overlap(object1:Dynamic, object2:Dynamic, ?overlapCallback:Dynamic, ?processCallback:Dynamic, ?callbackContext:Dynamic):Bool;
	
	/**
	* The core separation function to separate two physics bodies.
	* 
	* @param body1 The Body object to separate.
	* @param body2 The Body object to separate.
	* @return Returns true if the bodies collided, otherwise false.
	*/
	function separate(body1:phaser.physics.ninja.Body, body2:phaser.physics.ninja.Body, ?processCallback:Dynamic, ?callbackContext:Dynamic, ?overlapOnly:Bool):Bool;
	
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
	
}

