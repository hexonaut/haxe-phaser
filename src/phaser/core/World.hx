package phaser.core;

@:native("Phaser.World")
extern class World extends phaser.core.Group {
	
	/**
	 * The World has no fixed size, but it does have a bounds outside of which objects are no longer considered as being "in world" and you should use this to clean-up the display list and purge dead objects.
	 * By default we set the Bounds to be from 0,0 to Game.width,Game.height. I.e. it will match the size given to the game constructor with 0,0 representing the top-left of the display.
	 * However 0,0 is actually the center of the world, and if you rotate or scale the world all of that will happen from 0,0.
	 * So if you want to make a game in which the world itself will rotate you should adjust the bounds so that 0,0 is the center point, i.e. set them to -1000,-1000,2000,2000 for a 2000x2000 sized world centered around 0,0.
	 */
	var bounds:phaser.geom.Rectangle;
	
	/**
	 * Camera instance.
	 */
	var camera:phaser.core.Camera;
	
	/**
	 * True if the World has been given a specifically defined size (i.e. from a Tilemap or direct in code) or false if it's just matched to the Game dimensions.
	 */
	var _definedSize(default, null):Bool;
	
	/**
	 * The defined width of the World. Sometimes the bounds needs to grow larger than this (if you resize the game) but this retains the original requested dimension.
	 */
	var _width:Float;
	
	/**
	 * The defined height of the World. Sometimes the bounds needs to grow larger than this (if you resize the game) but this retains the original requested dimension.
	 */
	var _height:Float;
	
	/**
	 * Initialises the game world.
	 */
	function boot ():Void;
	
	/**
	 * Updates the size of this world. Note that this doesn't modify the world x/y coordinates, just the width and height.
	 * The Camera bounds and Physics bounds (if set) are also updated to match the new World bounds.
	 */
	function setBounds (x:Float, y:Float, width:Float, height:Float):Void;
	
	/**
	 * Destroyer of worlds.
	 */
	function shutdown ():Void;
	
	/**
	 * This will take the given game object and check if its x/y coordinates fall outside of the world bounds.
	 * If they do it will reposition the object to the opposite side of the world, creating a wrap-around effect.
	 * If sprite has a P2 body then the body (sprite.body) should be passed as first parameter to the function.
	 */
	@:overload(function (sprite:phaser.gameobjects.Sprite, ?padding:Float = 0, ?useBounds:Bool = false, ?horizontal:Bool = true, ?vertical:Bool = true):Void {})
	@:overload(function (sprite:phaser.gameobjects.Image, ?padding:Float = 0, ?useBounds:Bool = false, ?horizontal:Bool = true, ?vertical:Bool = true):Void {})
	@:overload(function (sprite:phaser.gameobjects.TileSprite, ?padding:Float = 0, ?useBounds:Bool = false, ?horizontal:Bool = true, ?vertical:Bool = true):Void {})
	function wrap (sprite:phaser.gameobjects.Text, ?padding:Float = 0, ?useBounds:Bool = false, ?horizontal:Bool = true, ?vertical:Bool = true):Void;
	
	/**
	 * @name Phaser.World#width
	 */
	var width:Float;
	
	/**
	 * @name Phaser.World#height
	 */
	var height:Float;
	
	/**
	 * @name Phaser.World#centerX
	 */
	var centerX(default, null):Float;
	
	/**
	 * @name Phaser.World#centerY
	 */
	var centerY(default, null):Float;
	
	/**
	 * @name Phaser.World#randomX
	 */
	var randomX(default, null):Float;
	
	/**
	 * @name Phaser.World#randomY
	 */
	var randomY(default, null):Float;
	
}
