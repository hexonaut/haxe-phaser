package phaser.gameobjects;

@:native("Phaser.TileSprite")
extern class TileSprite extends phaser.gameobjects.components.Smoothed {
	
	/**
	 * A TileSprite is a Sprite that has a repeating texture. The texture can be scrolled and scaled and will automatically wrap on the edges as it does so.
	 * Please note that TileSprites, as with normal Sprites, have no input handler or physics bodies by default. Both need enabling.
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
