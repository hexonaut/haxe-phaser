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
	 * Initialises the game world.
	 */
	function boot ():Void;
	
	/**
	 * Updates the size of this world. Note that this doesn't modify the world x/y coordinates, just the width and height.
	 */
	function setBounds (x:Float, y:Float, width:Float, height:Float):Void;
	
	/**
	 * Destroyer of worlds.
	 */
	function shutdown ():Void;
	
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
