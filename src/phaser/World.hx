package phaser;

/**
* "This world is but a canvas to our imagination." - Henry David Thoreau
* 
* A game has only one world. The world is an abstract place in which all game objects live. It is not bound
* by stage limits and can be any size. You look into the world via cameras. All game objects live within
* the world at world-based coordinates. By default a world is created the same size as your Stage.
*/
@:native("Phaser.World")
extern class World extends phaser.Group {

	/**
	* "This world is but a canvas to our imagination." - Henry David Thoreau
	* 
	* A game has only one world. The world is an abstract place in which all game objects live. It is not bound
	* by stage limits and can be any size. You look into the world via cameras. All game objects live within
	* the world at world-based coordinates. By default a world is created the same size as your Stage.
	* 
	* @param game Reference to the current game instance.
	*/
	function new(game:phaser.Game);
	
	/**
	* The World has no fixed size, but it does have a bounds outside of which objects are no longer considered as being "in world" and you should use this to clean-up the display list and purge dead objects.
	* By default we set the Bounds to be from 0,0 to Game.width,Game.height. I.e. it will match the size given to the game constructor with 0,0 representing the top-left of the display.
	* However 0,0 is actually the center of the world, and if you rotate or scale the world all of that will happen from 0,0.
	* So if you want to make a game in which the world itself will rotate you should adjust the bounds so that 0,0 is the center point, i.e. set them to -1000,-1000,2000,2000 for a 2000x2000 sized world centered around 0,0. Bound of this world that objects can not escape from.
	*/
	var bounds:phaser.Rectangle;
	
	/**
	* Camera instance.
	*/
	var camera:phaser.Camera;
	
	/**
	* Gets the X position corresponding to the center point of the world.
	*/
	@:native("centerX")
	var World_centerX:Float;
	
	/**
	* Gets the Y position corresponding to the center point of the world.
	*/
	@:native("centerY")
	var World_centerY:Float;
	
	/**
	* Gets or sets the current height of the game world. The world can never be smaller than the game (canvas) dimensions.
	*/
	@:native("height")
	var World_height:Float;
	
	var isPaused:Bool;
	
	/**
	* Gets a random integer which is lesser than or equal to the current width of the game world.
	*/
	var randomX:Float;
	
	/**
	* Gets a random integer which is lesser than or equal to the current height of the game world.
	*/
	var randomY:Float;
	
	var stats:{skipped:Float, ignored:Float, checked:Float};
	
	/**
	* Gets or sets the current width of the game world. The world can never be smaller than the game (canvas) dimensions.
	*/
	@:native("width")
	var World_width:Float;
	
	/**
	* Initialises the game world.
	*/
	function boot():Void;
	
	function getObjectsUnderPointer(pointer:phaser.Pointer, group:phaser.Group, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.Sprite;
	
	/**
	* Updates the size of this world. Note that this doesn't modify the world x/y coordinates, just the width and height.
	* 
	* @param width New width of the game world in pixels.
	* @param height New height of the game world in pixels.
	*/
	function resize(width:Float, height:Float):Void;
	
	/**
	* Updates the size of this world and sets World.x/y to the given values
	* The Camera bounds and Physics bounds (if set) are also updated to match the new World bounds.
	* 
	* @param x Top left most corner of the world.
	* @param y Top left most corner of the world.
	* @param width New width of the game world in pixels.
	* @param height New height of the game world in pixels.
	*/
	function setBounds(x:Float, y:Float, width:Float, height:Float):Void;
	
	function sortLeftRight(a:phaser.Sprite, b:phaser.Sprite):Float;
	
	function sortRightLeft(a:phaser.Sprite, b:phaser.Sprite):Float;
	
	function sortTopBottom(a:phaser.Sprite, b:phaser.Sprite):Float;
	
	function sortBottomTop(a:phaser.Sprite, b:phaser.Sprite):Float;
	
	/**
	* Sort the children in the group according to a particular key and ordering.
	* 
	* Call this function to sort the group according to a particular key value and order.
	* 
	* For example to depth sort Sprites for Zelda-style game you might call `group.sort('y', Phaser.Group.SORT_ASCENDING)` at the bottom of your `State.update()`.
	* 
	* Internally this uses a standard JavaScript Array sort, so everything that applies there also applies here, including
	* alphabetical sorting, mixing strings and numbers, and Unicode sorting. See MDN for more details.
	* 
	* @param key The name of the property to sort on. Defaults to the objects z-depth value. - Default: 'z'
	* @param order Order ascending ({
	* @link Phaser.Group.SORT_ASCENDING SORT_ASCENDING}) or descending ({
	* @link Phaser.Group.SORT_DESCENDING SORT_DESCENDING}). - Default: Phaser.Group.SORT_ASCENDING
	*/
	@:native("sort")
	@:overload(function(?key:String, ?order:Float):Void{})
	function World_sort(group:phaser.Group, ?sortDirection:Float):Void;
	
	/**
	* Destroyer of worlds.
	*/
	function shutdown():Void;
	
	/**
	* This will take the given game object and check if its x/y coordinates fall outside of the world bounds.
	* If they do it will reposition the object to the opposite side of the world, creating a wrap-around effect.
	* If sprite has a P2 body then the body (sprite.body) should be passed as first parameter to the function.
	* 
	* Please understand there are limitations to this method. For example if you have scaled the World
	* then objects won't always be re-positioned correctly, and you'll need to employ your own wrapping function.
	* 
	* @param sprite The object you wish to wrap around the world bounds.
	* @param padding Extra padding added equally to the sprite.x and y coordinates before checking if within the world bounds. Ignored if useBounds is true.
	* @param useBounds If useBounds is false wrap checks the object.x/y coordinates. If true it does a more accurate bounds check, which is more expensive.
	* @param horizontal If horizontal is false, wrap will not wrap the object.x coordinates horizontally. - Default: true
	* @param vertical If vertical is false, wrap will not wrap the object.y coordinates vertically. - Default: true
	*/
	function wrap(sprite:Dynamic, ?padding:Float, ?useBounds:Bool, ?horizontal:Bool, ?vertical:Bool):Void;
	
}

