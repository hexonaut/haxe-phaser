package phaser.gameobjects;

@:native("Phaser.TileSprite")
extern class TileSprite extends phaser.gameobjects.components.Smoothed {
	
	/**
	 * A TileSprite is a Sprite that has a repeating texture. The texture can be scrolled and scaled independently of the TileSprite itself.
	 * Textures will automatically wrap and are designed so that you can create game backdrops using seamless textures as a source.
	 * 
	 * TileSprites have no input handler or physics bodies by default, both need enabling in the same way as for normal Sprites.
	 * 
	 * You shouldn't ever create a TileSprite any larger than your actual screen size. If you want to create a large repeating background
	 * that scrolls across the whole map of your game, then you create a TileSprite that fits the screen size and then use the tilePosition
	 * property to scroll the texture as the player moves. If you create a TileSprite that is thousands of pixels in size then it will 
	 * consume huge amounts of memory and cause performance issues. Remember: use tilePosition to scroll your texture and tileScale to
	 * adjust the scale of the texture - don't resize the sprite itself or make it larger than it needs.
	 * 
	 * An important note about texture dimensions:
	 * 
	 * When running under Canvas a TileSprite can use any texture size without issue. When running under WebGL the texture should ideally be
	 * a power of two in size (i.e. 4, 8, 16, 32, 64, 128, 256, 512, etch pixels width by height). If the texture isn't a power of two
	 * it will be rendered to a blank canvas that is the correct size, which means you may have 'blank' areas appearing to the right and
	 * bottom of your frame. To avoid this ensure your textures are perfect powers of two.
	 * 
	 * TileSprites support animations in the same way that Sprites do. You add and play animations using the AnimationManager. However
	 * if your game is running under WebGL please note that each frame of the animation must be a power of two in size, or it will receive
	 * additional padding to enforce it to be so.
	 */
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:String, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:String, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function new (game:phaser.core.Game, x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, frame:Float);
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
	/**
	 * Internal cache var.
	 */
	var _scroll:phaser.geom.Point;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Sets this TileSprite to automatically scroll in the given direction until stopped via TileSprite.stopScroll().
	 * The scroll speed is specified in pixels per second.
	 * A negative x value will scroll to the left. A positive x value will scroll to the right.
	 * A negative y value will scroll up. A positive y value will scroll down.
	 */
	function autoScroll (x:Float, y:Float):Void;
	
	/**
	 * Stops an automatically scrolling TileSprite.
	 */
	function stopScroll ():Void;
	
	/**
	 * Destroys the TileSprite. This removes it from its parent group, destroys the event and animation handlers if present
	 * and nulls its reference to game, freeing it up for garbage collection.
	 */
	function destroy (?destroyChildren:Bool = true):Void;
	
	/**
	 * Resets the TileSprite. This places the TileSprite at the given x/y world coordinates, resets the tilePosition and then
	 * sets alive, exists, visible and renderable all to true. Also resets the outOfBounds state.
	 * If the TileSprite has a physics body that too is reset.
	 */
	function reset (x:Float, y:Float):Dynamic;
	
}
