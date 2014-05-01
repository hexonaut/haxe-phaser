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
	 * The context image data.
	 */
	var imageData:Dynamic;
	
	/**
	 * A Uint8ClampedArray view into BitmapData.buffer.
	 */
	var data:Dynamic;
	
	/**
	 * An Uint32Array view into BitmapData.buffer.
	 */
	var pixels:Dynamic;
	
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
	 * If disableTextureUpload is true this BitmapData will never send its image data to the GPU when its dirty flag is true.
	 */
	var disableTextureUpload:Bool;
	
	/**
	 * If dirty this BitmapData will be re-rendered.
	 */
	var dirty:Bool;
	
	/**
	 * Internal cache var.
	 */
	var _tempR:Float;
	
	/**
	 * Internal cache var.
	 */
	var _tempG:Float;
	
	/**
	 * Internal cache var.
	 */
	var _tempB:Float;
	
	/**
	 * Updates the given objects so that they use this BitmapData as their texture. This will replace any texture they will currently have set.
	 */
	@:overload(function (object:phaser.gameobjects.Sprite):Void {})
	@:overload(function (object:Dynamic):Void {})
	@:overload(function (object:phaser.gameobjects.Image):Void {})
	function add (object:Dynamic):Void;
	
	/**
	 * Clears the BitmapData context using a clearRect.
	 */
	function cls ():Void;
	
	/**
	 * Clears the BitmapData context using a clearRect.
	 */
	function clear ():Void;
	
	/**
	 * Fills the BitmapData with the given color.
	 */
	function fill (r:Float, g:Float, b:Float, ?a:Float = 1):Void;
	
	/**
	 * Resizes the BitmapData. This changes the size of the underlying canvas and refreshes the buffer.
	 */
	function resize ():Void;
	
	/**
	 * This re-creates the BitmapData.imageData from the current context.
	 * It then re-builds the ArrayBuffer, the data Uint8ClampedArray reference and the pixels Int32Array.
	 * If not given the dimensions defaults to the full size of the context.
	 */
	function update (?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float):Void;
	
	/**
	 * DEPRECATED: This method will be removed in Phaser 2.1. Please use BitmapData.update instead.
	 * 
	 * This re-creates the BitmapData.imageData from the current context.
	 * It then re-builds the ArrayBuffer, the data Uint8ClampedArray reference and the pixels Int32Array.
	 * If not given the dimensions defaults to the full size of the context.
	 */
	function refreshBuffer (?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float):Void;
	
	/**
	 * Scans through the area specified in this BitmapData and sends a color object for every pixel to the given callback.
	 * The callback will be sent a color object with 6 properties: { r: number, g: number, b: number, a: number, color: number, rgba: string }.
	 * Where r, g, b and a are integers between 0 and 255 representing the color component values for red, green, blue and alpha.
	 * The color property is an Int32 of the full color. Note the endianess of this will change per system.
	 * The rgba property is a CSS style rgba() string which can be used with context.fillStyle calls, among others.
	 * The callback will also be sent the pixels x and y coordinates respectively.
	 * The callback must return either false, in which case no change will be made to the pixel, or a new color object.
	 * If a new color object is returned the pixel will be set to the r, g, b and a color values given within it.
	 */
	function processPixelRGB (callback:Dynamic, callbackContext:Dynamic, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float):Void;
	
	/**
	 * Scans through the area specified in this BitmapData and sends the color for every pixel to the given callback along with its x and y coordinates.
	 * Whatever value the callback returns is set as the new color for that pixel, unless it returns the same color, in which case it's skipped.
	 * Note that the format of the color received will be different depending on if the system is big or little endian.
	 * It is expected that your callback will deal with endianess. If you'd rather Phaser did it then use processPixelRGB instead.
	 * The callback will also be sent the pixels x and y coordinates respectively.
	 */
	function processPixel (callback:Dynamic, callbackContext:Dynamic, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float):Void;
	
	/**
	 * Replaces all pixels matching one color with another. The color values are given as two sets of RGBA values.
	 * An optional region parameter controls if the replacement happens in just a specific area of the BitmapData or the entire thing. 
	 */
	function replaceRGB (r1:Float, g1:Float, b1:Float, a1:Float, r2:Float, g2:Float, b2:Float, a2:Float, ?region:phaser.geom.Rectangle):Void;
	
	/**
	 * Sets the hue, saturation and lightness values on every pixel in the given region, or the whole BitmapData if no region was specified.
	 */
	function setHSL (?h:Float, ?s:Float, ?l:Float, ?region:phaser.geom.Rectangle):Void;
	
	/**
	 * Shifts any or all of the hue, saturation and lightness values on every pixel in the given region, or the whole BitmapData if no region was specified.
	 * Shifting will add the given value onto the current h, s and l values, not replace them.
	 * The hue is wrapped to keep it within the range 0 to 1. Saturation and lightness are clamped to not exceed 1.
	 */
	function shiftHSL (?h:Float, ?s:Float, ?l:Float, ?region:phaser.geom.Rectangle):Void;
	
	/**
	 * Sets the color of the given pixel to the specified red, green, blue and alpha values.
	 */
	function setPixel32 (x:Float, y:Float, red:Float, green:Float, blue:Float, alpha:Float, ?immediate:Bool = true):Void;
	
	/**
	 * Sets the color of the given pixel to the specified red, green and blue values.
	 */
	function setPixel (x:Float, y:Float, red:Float, green:Float, blue:Float, alpha:Float, ?immediate:Bool = true):Void;
	
	/**
	 * Get the color of a specific pixel in the context into a color object.
	 */
	function getPixel (x:Float, y:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * Get the color of a specific pixel including its alpha value.
	 * Note that on little-endian systems the format is 0xAABBGGRR and on big-endian the format is 0xRRGGBBAA.
	 */
	function getPixel32 (x:Float, y:Float):Float;
	
	/**
	 * Get the color of a specific pixel including its alpha value as a color object containing r,g,b,a and rgba properties.
	 */
	function getPixelRGB (x:Float, y:Float, ?out:Dynamic, ?hsl:Bool = false, ?hsv:Bool = false):Dynamic;
	
	/**
	 * Gets all the pixels from the region specified by the given Rectangle object.
	 */
	function getPixels (rect:phaser.geom.Rectangle):Dynamic;
	
	/**
	 * Copies the pixels from the source image to this BitmapData based on the given area and destination.
	 */
	@:overload(function (source:Dynamic, area:phaser.geom.Rectangle, destX:Float, destY:Float):Void {})
	function copyPixels (source:String, area:phaser.geom.Rectangle, destX:Float, destY:Float):Void;
	
	/**
	 * Draws the given image to this BitmapData at the coordinates specified. If you need to only draw a part of the image use BitmapData.copyPixels instead.
	 */
	@:overload(function (source:Dynamic, ?x:Float = 0, ?y:Float = 0):Void {})
	function draw (source:String, ?x:Float = 0, ?y:Float = 0):Void;
	
	/**
	 * Draws the given image to this BitmapData at the coordinates specified. If you need to only draw a part of the image use BitmapData.copyPixels instead.
	 */
	@:overload(function (sprite:phaser.gameobjects.Sprite, ?x:Float = 0, ?y:Float = 0):Void {})
	function drawSprite (sprite:phaser.gameobjects.Image, ?x:Float = 0, ?y:Float = 0):Void;
	
	/**
	 * Draws the given image onto this BitmapData using an image as an alpha mask.
	 */
	@:overload(function (source:Dynamic, mask:Dynamic):Void {})
	@:overload(function (source:String, mask:Dynamic):Void {})
	@:overload(function (source:Dynamic, mask:String):Void {})
	function alphaMask (source:String, mask:String):Void;
	
	/**
	 * Scans this BitmapData for all pixels matching the given r,g,b values and then draws them into the given destination BitmapData.
	 * The destination BitmapData must be large enough to receive all of the pixels that are scanned.
	 * Although the destination BitmapData is returned from this method, it's actually modified directly in place, meaning this call is perfectly valid:
	 * picture.extract(mask, r, g, b)
	 */
	function extract (destination:phaser.gameobjects.BitmapData, r:Float, g:Float, b:Float, ?a:Float = 255):phaser.gameobjects.BitmapData;
	
	/**
	 * Draws a filled Circle to the BitmapData at the given x, y coordinates and radius in size.
	 */
	function circle (x:Float, y:Float, radius:Float, ?fillStyle:String):Void;
	
	/**
	 * If the game is running in WebGL this will push the texture up to the GPU if it's dirty.
	 * This is called automatically if the BitmapData is being used by a Sprite, otherwise you need to remember to call it in your render function.
	 * If you wish to suppress this functionality set BitmapData.disableTextureUpload to true.
	 */
	function render ():Void;
	
}
