package phaser.core;

@:native("Phaser.World")
extern class World extends phaser.core.Group {
	
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
	 * Updates the size of this world. Note that this doesn't modify the world x/y coordinates, just the width and height.
	 */
	function resize (width:Float, height:Float):Void;
	
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
