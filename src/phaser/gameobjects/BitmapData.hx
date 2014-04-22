package phaser.gameobjects;

@:native("Phaser.BitmapData")
extern class BitmapData {
	
	/**
	 * Creates a new BitmapData object.
	 */
	function new (game:phaser.core.Game, key:String, ?width:Float = 100, ?height:Float = 100);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The key of the BitmapData in the Cache, if stored there.
	 */
	var key:String;
	
	/**
	 * The width of the BitmapData in pixels.
	 */
	var width:Float;
	
	/**
	 * The height of the BitmapData in pixels.
	 */
	var height:Float;
	
	/**
	 * The canvas to which this BitmapData draws.
	 */
	var canvas:Dynamic;
	
	/**
	 * The 2d context of the canvas.
	 */
	var context:Dynamic;
	
	/**
	 * A reference to BitmapData.context.
	 */
	var ctx:Dynamic;
	
	/**
	 * The canvas image data.
	 */
	var imageData:Array<Dynamic>;
	
	/**
	 * The PIXI.BaseTexture.
	 */
	var baseTexture:phaser.pixi.textures.BaseTexture;
	
	/**
	 * The PIXI.Texture.
	 */
	var texture:phaser.pixi.textures.Texture;
	
	/**
	 * The Frame this BitmapData uses for rendering.
	 */
	var textureFrame:phaser.animation.Frame;
	
	/**
	 * The const type of this object.
	 */
	var type:Float;
	
	/**
	 * If dirty this BitmapData will be re-rendered.
	 */
	var dirty:Bool;
	
	/**
	 * Updates the given objects so that they use this BitmapData as their texture. This will replace any texture they will currently have set.
	 */
	@:overload(function (object:phaser.gameobjects.Sprite):Void {})
	@:overload(function (object:Dynamic):Void {})
	@:overload(function (object:phaser.gameobjects.Image):Void {})
	function add (object:Dynamic):Void;
	
	/**
	 * Clears the BitmapData.
	 */
	function clear ():Void;
	
	/**
	 * Resizes the BitmapData.
	 */
	function resize ():Void;
	
	/**
	 * Sets the color of the given pixel to the specified red, green, blue and alpha values.
	 */
	function setPixel32 (x:Float, y:Float, red:Float, green:Float, blue:Float, alpha:Float):Void;
	
	/**
	 * Sets the color of the given pixel to the specified red, green and blue values.
	 */
	function setPixel (x:Float, y:Float, red:Float, green:Float, blue:Float):Void;
	
	/**
	 * Get the color of a specific pixel.
	 */
	function getPixel (x:Float, y:Float):Float;
	
	/**
	 * Get the color of a specific pixel including its alpha value.
	 */
	function getPixel32 (x:Float, y:Float):Float;
	
	/**
	 * Gets all the pixels from the region specified by the given Rectangle object.
	 */
	function getPixels (rect:phaser.geom.Rectangle):Array<Dynamic>;
	
	/**
	 * Copies the pixels from the source image to this BitmapData based on the given area and destination.
	 */
	@:overload(function (source:Dynamic, area:phaser.geom.Rectangle, destX:Float, destY:Float):Void {})
	function copyPixels (source:String, area:phaser.geom.Rectangle, destX:Float, destY:Float):Void;
	
	/**
	 * Draws the given image to this BitmapData at the coordinates specified. If you need to only draw a part of the image use BitmapData.copyPixels instead.
	 */
	@:overload(function (source:Dynamic, destX:Float, destY:Float):Void {})
	function draw (source:String, destX:Float, destY:Float):Void;
	
	/**
	 * Draws the given image onto this BitmapData using an image as an alpha mask.
	 */
	@:overload(function (source:Dynamic, mask:Dynamic):Void {})
	@:overload(function (source:Dynamic, mask:String):Void {})
	@:overload(function (source:String, mask:Dynamic):Void {})
	function alphaMask (source:String, mask:String):Void;
	
	/**
	 * If the game is running in WebGL this will push the texture up to the GPU if it's dirty.
	 * This is called automatically if the BitmapData is being used by a Sprite, otherwise you need to remember to call it in your render function.
	 */
	function render ():Void;
	
}
