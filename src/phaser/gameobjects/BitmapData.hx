package phaser.gameobjects;

@:native("Phaser.BitmapData")
extern class BitmapData {
	
	/**
	 * A BitmapData object contains a Canvas element to which you can draw anything you like via normal Canvas context operations.
	 * A single BitmapData can be used as the texture for one or many Images/Sprites. 
	 * So if you need to dynamically create a Sprite texture then they are a good choice.
	 */
	function new (game:phaser.core.Game, key:String, ?width:Float = 256, ?height:Float = 256);
	
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
	var _image:Float;
	
	/**
	 * Internal cache var.
	 */
	var _pos:phaser.geom.Point;
	
	/**
	 * Internal cache var.
	 */
	var _size:phaser.geom.Point;
	
	/**
	 * Internal cache var.
	 */
	var _scale:phaser.geom.Point;
	
	/**
	 * Internal cache var.
	 */
	var _rotate:Float;
	
	/**
	 * Internal cache var.
	 */
	var _alpha:Dynamic;
	
	/**
	 * Internal cache var.
	 */
	var _anchor:phaser.geom.Point;
	
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
	 * Internal cache var.
	 */
	var _circle:phaser.geom.Circle;
	
	/**
	 * Updates the given objects so that they use this BitmapData as their texture. This will replace any texture they will currently have set.
	 */
	@:overload(function (object:phaser.gameobjects.Sprite):phaser.gameobjects.BitmapData {})
	@:overload(function (object:Dynamic):phaser.gameobjects.BitmapData {})
	@:overload(function (object:phaser.gameobjects.Image):phaser.gameobjects.BitmapData {})
	function add (object:Dynamic):phaser.gameobjects.BitmapData;
	
	/**
	 * Takes the given Game Object, resizes this BitmapData to match it and then draws it into this BitmapDatas canvas, ready for further processing.
	 * The source game object is not modified by this operation.
	 * If the source object uses a texture as part of a Texture Atlas or Sprite Sheet, only the current frame will be used for sizing.
	 * If a string is given it will assume it's a cache key and look in Phaser.Cache for an image key matching the string.
	 */
	@:overload(function (source:phaser.gameobjects.Sprite):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Text):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.BitmapData):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic):phaser.gameobjects.BitmapData {})
	function load (source:String):phaser.gameobjects.BitmapData;
	
	/**
	 * Clears the BitmapData context using a clearRect.
	 */
	function cls ():Void;
	
	/**
	 * Clears the BitmapData context using a clearRect.
	 */
	function clear ():phaser.gameobjects.BitmapData;
	
	/**
	 * Fills the BitmapData with the given color.
	 */
	function fill (r:Float, g:Float, b:Float, ?a:Float = 1):phaser.gameobjects.BitmapData;
	
	/**
	 * Resizes the BitmapData. This changes the size of the underlying canvas and refreshes the buffer.
	 */
	function resize ():phaser.gameobjects.BitmapData;
	
	/**
	 * This re-creates the BitmapData.imageData from the current context.
	 * It then re-builds the ArrayBuffer, the data Uint8ClampedArray reference and the pixels Int32Array.
	 * If not given the dimensions defaults to the full size of the context.
	 */
	function update (?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float):phaser.gameobjects.BitmapData;
	
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
	function processPixelRGB (callback:Dynamic, callbackContext:Dynamic, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float):phaser.gameobjects.BitmapData;
	
	/**
	 * Scans through the area specified in this BitmapData and sends the color for every pixel to the given callback along with its x and y coordinates.
	 * Whatever value the callback returns is set as the new color for that pixel, unless it returns the same color, in which case it's skipped.
	 * Note that the format of the color received will be different depending on if the system is big or little endian.
	 * It is expected that your callback will deal with endianess. If you'd rather Phaser did it then use processPixelRGB instead.
	 * The callback will also be sent the pixels x and y coordinates respectively.
	 */
	function processPixel (callback:Dynamic, callbackContext:Dynamic, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float):phaser.gameobjects.BitmapData;
	
	/**
	 * Replaces all pixels matching one color with another. The color values are given as two sets of RGBA values.
	 * An optional region parameter controls if the replacement happens in just a specific area of the BitmapData or the entire thing. 
	 */
	function replaceRGB (r1:Float, g1:Float, b1:Float, a1:Float, r2:Float, g2:Float, b2:Float, a2:Float, ?region:phaser.geom.Rectangle):phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the hue, saturation and lightness values on every pixel in the given region, or the whole BitmapData if no region was specified.
	 */
	function setHSL (?h:Float, ?s:Float, ?l:Float, ?region:phaser.geom.Rectangle):phaser.gameobjects.BitmapData;
	
	/**
	 * Shifts any or all of the hue, saturation and lightness values on every pixel in the given region, or the whole BitmapData if no region was specified.
	 * Shifting will add the given value onto the current h, s and l values, not replace them.
	 * The hue is wrapped to keep it within the range 0 to 1. Saturation and lightness are clamped to not exceed 1.
	 */
	function shiftHSL (?h:Float, ?s:Float, ?l:Float, ?region:phaser.geom.Rectangle):phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the color of the given pixel to the specified red, green, blue and alpha values.
	 */
	function setPixel32 (x:Float, y:Float, red:Float, green:Float, blue:Float, alpha:Float, ?immediate:Bool = true):phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the color of the given pixel to the specified red, green and blue values.
	 */
	function setPixel (x:Float, y:Float, red:Float, green:Float, blue:Float, alpha:Float, ?immediate:Bool = true):phaser.gameobjects.BitmapData;
	
	/**
	 * Get the color of a specific pixel in the context into a color object.
	 * If you have drawn anything to the BitmapData since it was created you must call BitmapData.update to refresh the array buffer,
	 * otherwise this may return out of date color values, or worse - throw a run-time error as it tries to access an array element that doesn't exist.
	 */
	function getPixel (x:Float, y:Float, ?out:Dynamic):Dynamic;
	
	/**
	 * Get the color of a specific pixel including its alpha value.
	 * If you have drawn anything to the BitmapData since it was created you must call BitmapData.update to refresh the array buffer,
	 * otherwise this may return out of date color values, or worse - throw a run-time error as it tries to access an array element that doesn't exist.
	 * Note that on little-endian systems the format is 0xAABBGGRR and on big-endian the format is 0xRRGGBBAA.
	 */
	function getPixel32 (x:Float, y:Float):Float;
	
	/**
	 * Get the color of a specific pixel including its alpha value as a color object containing r,g,b,a and rgba properties.
	 * If you have drawn anything to the BitmapData since it was created you must call BitmapData.update to refresh the array buffer,
	 * otherwise this may return out of date color values, or worse - throw a run-time error as it tries to access an array element that doesn't exist.
	 */
	function getPixelRGB (x:Float, y:Float, ?out:Dynamic, ?hsl:Bool = false, ?hsv:Bool = false):Dynamic;
	
	/**
	 * Gets all the pixels from the region specified by the given Rectangle object.
	 */
	function getPixels (rect:phaser.geom.Rectangle):Dynamic;
	
	/**
	 * Scans the BitmapData, pixel by pixel, until it encounters a pixel that isn't transparent (i.e. has an alpha value > 0).
	 * It then stops scanning and returns an object containing the colour of the pixel in r, g and b properties and the location in the x and y properties.
	 * 
	 * The direction parameter controls from which direction it should start the scan:
	 * 
	 * 0 = top to bottom
	 * 1 = bottom to top
	 * 2 = left to right
	 * 3 = right to left
	 */
	function getFirstPixel (?direction:Float = 0):Dynamic;
	
	/**
	 * Scans the BitmapData and calculates the bounds. This is a rectangle that defines the extent of all non-transparent pixels.
	 * The rectangle returned will extend from the top-left of the image to the bottom-right, exluding transparent pixels.
	 */
	function getBounds (?rect:phaser.geom.Rectangle):phaser.geom.Rectangle;
	
	/**
	 * Creates a new Phaser.Image object, assigns this BitmapData to be its texture, adds it to the world then returns it.
	 */
	function addToWorld (?x:Float = 0, ?y:Float = 0, ?anchorX:Float = 0, ?anchorY:Float = 0, ?scaleX:Float = 1, ?scaleY:Float = 1):phaser.gameobjects.Image;
	
	/**
	 * Copies a rectangular area from the source object to this BitmapData. If you give null as the source it will copy from itself.
	 * You can optionally resize, translate, rotate, scale, alpha or blend as it's drawn.
	 * All rotation, scaling and drawing takes place around the regions center point by default, but can be changed with the anchor parameters.
	 * Note that the source image can also be this BitmapData, which can create some interesting effects.
	 * 
	 * This method has a lot of parameters for maximum control.
	 * You can use the more friendly methods like copyRect and draw to avoid having to remember them all.
	 */
	@:overload(function (?source:phaser.gameobjects.Sprite, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?tx:Float, ?ty:Float, ?newWidth:Float, ?newHeight:Float, ?rotate:Float = 0, ?anchorX:Float = 0, ?anchorY:Float = 0, ?scaleX:Float = 1, ?scaleY:Float = 1, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (?source:phaser.gameobjects.Image, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?tx:Float, ?ty:Float, ?newWidth:Float, ?newHeight:Float, ?rotate:Float = 0, ?anchorX:Float = 0, ?anchorY:Float = 0, ?scaleX:Float = 1, ?scaleY:Float = 1, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (?source:phaser.gameobjects.Text, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?tx:Float, ?ty:Float, ?newWidth:Float, ?newHeight:Float, ?rotate:Float = 0, ?anchorX:Float = 0, ?anchorY:Float = 0, ?scaleX:Float = 1, ?scaleY:Float = 1, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (?source:phaser.gameobjects.BitmapData, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?tx:Float, ?ty:Float, ?newWidth:Float, ?newHeight:Float, ?rotate:Float = 0, ?anchorX:Float = 0, ?anchorY:Float = 0, ?scaleX:Float = 1, ?scaleY:Float = 1, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (?source:Dynamic, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?tx:Float, ?ty:Float, ?newWidth:Float, ?newHeight:Float, ?rotate:Float = 0, ?anchorX:Float = 0, ?anchorY:Float = 0, ?scaleX:Float = 1, ?scaleY:Float = 1, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (?source:Dynamic, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?tx:Float, ?ty:Float, ?newWidth:Float, ?newHeight:Float, ?rotate:Float = 0, ?anchorX:Float = 0, ?anchorY:Float = 0, ?scaleX:Float = 1, ?scaleY:Float = 1, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	function copy (?source:String, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?tx:Float, ?ty:Float, ?newWidth:Float, ?newHeight:Float, ?rotate:Float = 0, ?anchorX:Float = 0, ?anchorY:Float = 0, ?scaleX:Float = 1, ?scaleY:Float = 1, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData;
	
	/**
	 * Copies the area defined by the Rectangle parameter from the source image to this BitmapData at the given location.
	 */
	@:overload(function (source:phaser.gameobjects.Sprite, area:phaser.geom.Rectangle, x:Float, y:Float, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image, area:phaser.geom.Rectangle, x:Float, y:Float, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Text, area:phaser.geom.Rectangle, x:Float, y:Float, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.BitmapData, area:phaser.geom.Rectangle, x:Float, y:Float, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, area:phaser.geom.Rectangle, x:Float, y:Float, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	function copyRect (source:String, area:phaser.geom.Rectangle, x:Float, y:Float, ?alpha:Float = 1, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData;
	
	/**
	 * Draws the given Phaser.Sprite, Phaser.Image or Phaser.Text to this BitmapData at the coordinates specified.
	 * You can use the optional width and height values to 'stretch' the sprite as it is drawn. This uses drawImage stretching, not scaling.
	 * When drawing it will take into account the Sprites rotation, scale and alpha values.
	 */
	@:overload(function (source:phaser.gameobjects.Sprite, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData {})
	function draw (source:phaser.gameobjects.Text, ?x:Float = 0, ?y:Float = 0, ?width:Float, ?height:Float, ?blendMode:Float, ?roundPx:Bool = false):phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the shadow properties of this BitmapDatas context which will affect all draw operations made to it.
	 * You can cancel an existing shadow by calling this method and passing no parameters.
	 * Note: At the time of writing (October 2014) Chrome still doesn't support shadowBlur used with drawImage.
	 */
	function shadow (color:String, ?blur:Float = 5, ?x:Float = 10, ?y:Float = 10):phaser.gameobjects.BitmapData;
	
	/**
	 * Draws the image onto this BitmapData using an image as an alpha mask.
	 */
	@:overload(function (source:phaser.gameobjects.Sprite, ?mask:phaser.gameobjects.Sprite, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image, ?mask:phaser.gameobjects.Sprite, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Text, ?mask:phaser.gameobjects.Sprite, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.BitmapData, ?mask:phaser.gameobjects.Sprite, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:phaser.gameobjects.Sprite, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:phaser.gameobjects.Sprite, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:String, ?mask:phaser.gameobjects.Sprite, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Sprite, ?mask:phaser.gameobjects.Image, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image, ?mask:phaser.gameobjects.Image, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Text, ?mask:phaser.gameobjects.Image, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.BitmapData, ?mask:phaser.gameobjects.Image, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:phaser.gameobjects.Image, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:phaser.gameobjects.Image, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:String, ?mask:phaser.gameobjects.Image, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Sprite, ?mask:phaser.gameobjects.Text, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image, ?mask:phaser.gameobjects.Text, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Text, ?mask:phaser.gameobjects.Text, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.BitmapData, ?mask:phaser.gameobjects.Text, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:phaser.gameobjects.Text, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:phaser.gameobjects.Text, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:String, ?mask:phaser.gameobjects.Text, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Sprite, ?mask:phaser.gameobjects.BitmapData, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image, ?mask:phaser.gameobjects.BitmapData, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Text, ?mask:phaser.gameobjects.BitmapData, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.BitmapData, ?mask:phaser.gameobjects.BitmapData, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:phaser.gameobjects.BitmapData, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:phaser.gameobjects.BitmapData, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:String, ?mask:phaser.gameobjects.BitmapData, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Sprite, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Text, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.BitmapData, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:String, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Sprite, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Text, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.BitmapData, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:String, ?mask:Dynamic, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Sprite, ?mask:String, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Image, ?mask:String, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.Text, ?mask:String, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:phaser.gameobjects.BitmapData, ?mask:String, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:String, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	@:overload(function (source:Dynamic, ?mask:String, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData {})
	function alphaMask (source:String, ?mask:String, ?sourceRect:phaser.geom.Rectangle, ?maskRect:phaser.geom.Rectangle):phaser.gameobjects.BitmapData;
	
	/**
	 * Scans this BitmapData for all pixels matching the given r,g,b values and then draws them into the given destination BitmapData.
	 * The original BitmapData remains unchanged.
	 * The destination BitmapData must be large enough to receive all of the pixels that are scanned unless the 'resize' parameter is true.
	 * Although the destination BitmapData is returned from this method, it's actually modified directly in place, meaning this call is perfectly valid:
	 * picture.extract(mask, r, g, b)
	 * You can specify optional r2, g2, b2 color values. If given the pixel written to the destination bitmap will be of the r2, g2, b2 color.
	 * If not given it will be written as the same color it was extracted. You can provide one or more alternative colors, allowing you to tint
	 * the color during extraction.
	 */
	function extract (destination:phaser.gameobjects.BitmapData, r:Float, g:Float, b:Float, ?a:Float = 255, ?resize:Bool = false, ?r2:Float, ?g2:Float, ?b2:Float):phaser.gameobjects.BitmapData;
	
	/**
	 * Draws a filled Rectangle to the BitmapData at the given x, y coordinates and width / height in size.
	 */
	function rect (x:Float, y:Float, width:Float, height:Float, ?fillStyle:String):phaser.gameobjects.BitmapData;
	
	/**
	 * Draws a filled Circle to the BitmapData at the given x, y coordinates and radius in size.
	 */
	function circle (x:Float, y:Float, radius:Float, ?fillStyle:String):phaser.gameobjects.BitmapData;
	
	/**
	 * Takes the given Line object and image and renders it to this BitmapData as a repeating texture line.
	 */
	@:overload(function (line:phaser.geom.Line, image:String, ?repeat:String = 'repeat-x'):phaser.gameobjects.BitmapData {})
	function textureLine (line:phaser.geom.Line, image:Dynamic, ?repeat:String = 'repeat-x'):phaser.gameobjects.BitmapData;
	
	/**
	 * If the game is running in WebGL this will push the texture up to the GPU if it's dirty.
	 * This is called automatically if the BitmapData is being used by a Sprite, otherwise you need to remember to call it in your render function.
	 * If you wish to suppress this functionality set BitmapData.disableTextureUpload to true.
	 */
	function render ():phaser.gameobjects.BitmapData;
	
	/**
	 * Resets the blend mode (effectively sets it to 'source-over')
	 */
	function blendReset ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'source-over'
	 */
	function blendSourceOver ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'source-in'
	 */
	function blendSourceIn ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'source-out'
	 */
	function blendSourceOut ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'source-atop'
	 */
	function blendSourceAtop ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'destination-over'
	 */
	function blendDestinationOver ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'destination-in'
	 */
	function blendDestinationIn ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'destination-out'
	 */
	function blendDestinationOut ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'destination-atop'
	 */
	function blendDestinationAtop ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'xor'
	 */
	function blendXor ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'lighter'
	 */
	function blendAdd ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'multiply'
	 */
	function blendMultiply ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'screen'
	 */
	function blendScreen ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'overlay'
	 */
	function blendOverlay ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'darken'
	 */
	function blendDarken ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'lighten'
	 */
	function blendLighten ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'color-dodge'
	 */
	function blendColorDodge ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'color-burn'
	 */
	function blendColorBurn ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'hard-light'
	 */
	function blendHardLight ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'soft-light'
	 */
	function blendSoftLight ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'difference'
	 */
	function blendDifference ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'exclusion'
	 */
	function blendExclusion ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'hue'
	 */
	function blendHue ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'saturation'
	 */
	function blendSaturation ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'color'
	 */
	function blendColor ():phaser.gameobjects.BitmapData;
	
	/**
	 * Sets the blend mode to 'luminosity'
	 */
	function blendLuminosity ():phaser.gameobjects.BitmapData;
	
	/**
	 * @name Phaser.Sprite#smoothed
	 */
	var smoothed:Bool;
	
	/**
	 * Gets a JavaScript object that has 6 properties set that are used by BitmapData in a transform.
	 */
	function getTransform (translateX:Float, translateY:Float, scaleX:Float, scaleY:Float, skewX:Float, skewY:Float):Dynamic;
	
}
