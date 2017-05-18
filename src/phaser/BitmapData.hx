package phaser;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.ArrayBuffer;
import js.html.Uint8Array;
import js.html.Uint32Array;
import js.html.ImageData;

/**
* A BitmapData object contains a Canvas element to which you can draw anything you like via normal Canvas context operations.
* A single BitmapData can be used as the texture for one or many Images / Sprites.
* So if you need to dynamically create a Sprite texture then they are a good choice.
* 
* Important note: Every BitmapData creates its own Canvas element. Because BitmapData's are now Game Objects themselves, and don't
* live on the display list, they are NOT automatically cleared when you change State. Therefore you _must_ call BitmapData.destroy
* in your State's shutdown method if you wish to free-up the resources the BitmapData used, it will not happen for you.
*/
@:native("Phaser.BitmapData")
extern class BitmapData {

	/**
	* A BitmapData object contains a Canvas element to which you can draw anything you like via normal Canvas context operations.
	* A single BitmapData can be used as the texture for one or many Images / Sprites.
	* So if you need to dynamically create a Sprite texture then they are a good choice.
	* 
	* Important note: Every BitmapData creates its own Canvas element. Because BitmapData's are now Game Objects themselves, and don't
	* live on the display list, they are NOT automatically cleared when you change State. Therefore you _must_ call BitmapData.destroy
	* in your State's shutdown method if you wish to free-up the resources the BitmapData used, it will not happen for you.
	* 
	* @param game A reference to the currently running game.
	* @param key Internal Phaser reference key for the BitmapData.
	* @param width The width of the BitmapData in pixels. If undefined or zero it's set to a default value. - Default: 256
	* @param height The height of the BitmapData in pixels. If undefined or zero it's set to a default value. - Default: 256
	* @param skipPool When this BitmapData generates its internal canvas to use for rendering, it will get the canvas from the CanvasPool if false, or create its own if true.
	*/
	function new(game:phaser.Game, key:String, ?width:Float, ?height:Float, ?skipPool:Bool);
	
	/**
	* The PIXI.BaseTexture.
	*/
	var baseTexture:pixi.BaseTexture;
	
	var buffer:ArrayBuffer;
	
	/**
	* The canvas to which this BitmapData draws.
	*/
	var canvas:HTMLCanvasElement;
	
	/**
	* The 2d context of the canvas.
	*/
	var context:CanvasRenderingContext2D;
	
	/**
	* A reference to BitmapData.context.
	*/
	var ctx:CanvasRenderingContext2D;
	
	/**
	* A Uint8ClampedArray view into BitmapData.buffer.
	* Note that this is unavailable in some browsers (such as Epic Browser due to its security restrictions)
	*/
	var data:Uint8Array;
	
	/**
	* If dirty this BitmapData will be re-rendered.
	*/
	var dirty:Bool;
	
	/**
	* If disableTextureUpload is true this BitmapData will never send its image data to the GPU when its dirty flag is true.
	*/
	var disableTextureUpload:Bool;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* The height of the BitmapData in pixels.
	*/
	var height:Float;
	
	/**
	* The context image data.
	* Please note that a call to BitmapData.draw() or BitmapData.copy() does not update immediately this property for performance reason. Use BitmapData.update() to do so.
	* This property is updated automatically after the first game loop, according to the dirty flag property.
	*/
	var imageData:ImageData;
	
	/**
	* The key of the BitmapData in the Cache, if stored there.
	*/
	var key:String;
	
	var op:String;
	
	/**
	* An Uint32Array view into BitmapData.buffer.
	*/
	var pixels:Uint32Array;
	
	var smoothed:Bool;
	
	/**
	* The context property needed for smoothing this Canvas.
	*/
	var smoothProperty:String;
	
	/**
	* The PIXI.Texture.
	*/
	var texture:pixi.Texture;
	
	/**
	* The Frame this BitmapData uses for rendering.
	*/
	var textureFrame:phaser.Frame;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* The width of the BitmapData in pixels.
	*/
	var width:Float;
	
	/**
	* Gets a JavaScript object that has 6 properties set that are used by BitmapData in a transform.
	* 
	* @param translateX The x translate value.
	* @param translateY The y translate value.
	* @param scaleX The scale x value.
	* @param scaleY The scale y value.
	* @param skewX The skew x value.
	* @param skewY The skew y value.
	* @return A JavaScript object containing all of the properties BitmapData needs for transforms.
	*/
	function getTransform(translateX:Float, translateY:Float, scaleX:Float, scaleY:Float, skewX:Float, skewY:Float):Dynamic;
	
	/**
	* Updates the given objects so that they use this BitmapData as their texture.
	* This will replace any texture they will currently have set.
	* 
	* @param object Either a single Sprite/Image or an Array of Sprites/Images.
	* @return This BitmapData object for method chaining.
	*/
	function add(object:Dynamic):phaser.BitmapData;
	
	/**
	* Creates a new Phaser.Image object, assigns this BitmapData to be its texture, adds it to the world then returns it.
	* 
	* @param x The x coordinate to place the Image at.
	* @param y The y coordinate to place the Image at.
	* @param anchorX Set the x anchor point of the Image. A value between 0 and 1, where 0 is the top-left and 1 is bottom-right.
	* @param anchorY Set the y anchor point of the Image. A value between 0 and 1, where 0 is the top-left and 1 is bottom-right.
	* @param scaleX The horizontal scale factor of the Image. A value of 1 means no scaling. 2 would be twice the size, and so on. - Default: 1
	* @param scaleY The vertical scale factor of the Image. A value of 1 means no scaling. 2 would be twice the size, and so on. - Default: 1
	* @return The newly added Image object.
	*/
	function addToWorld(?x:Float, ?y:Float, ?anchorX:Float, ?anchorY:Float, ?scaleX:Float, ?scaleY:Float):phaser.Image;
	
	/**
	* Draws the image onto this BitmapData using an image as an alpha mask.
	* 
	* @param source The source to copy from. If you give a string it will try and find the Image in the Game.Cache first. This is quite expensive so try to provide the image itself.
	* @param mask The object to be used as the mask. If you give a string it will try and find the Image in the Game.Cache first. This is quite expensive so try to provide the image itself. If you don't provide a mask it will use this BitmapData as the mask.
	* @param sourceRect A Rectangle where x/y define the coordinates to draw the Source image to and width/height define the size.
	* @param maskRect A Rectangle where x/y define the coordinates to draw the Mask image to and width/height define the size.
	* @return This BitmapData object for method chaining.
	*/
	function alphaMask(source:Dynamic, ?mask:Dynamic, ?sourceRect:phaser.Rectangle, ?maskRect:phaser.Rectangle):phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'lighter'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendAdd():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'color'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendColor():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'color-burn'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendColorBurn():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'color-dodge'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendColorDodge():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'darken'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendDarken():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'destination-atop'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendDestinationAtop():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'destination-in'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendDestinationIn():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'destination-out'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendDestinationOut():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'destination-over'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendDestinationOver():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'difference'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendDifference():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'exclusion'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendExclusion():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'hard-light'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendHardLight():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'hue'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendHue():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'lighten'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendLighten():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'luminosity'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendLuminosity():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'multiply'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendMultiply():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'overlay'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendOverlay():phaser.BitmapData;
	
	/**
	* Resets the blend mode (effectively sets it to 'source-over')
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendReset():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'saturation'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendSaturation():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'screen'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendScreen():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'soft-light'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendSoftLight():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'source-atop'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendSourceAtop():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'source-in'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendSourceIn():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'source-out'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendSourceOut():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'source-over'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendSourceOver():phaser.BitmapData;
	
	/**
	* Sets the blend mode to 'xor'
	* 
	* @return This BitmapData object for method chaining.
	*/
	function blendXor():phaser.BitmapData;
	
	/**
	* Draws a filled Circle to the BitmapData at the given x, y coordinates and radius in size.
	* 
	* @param x The x coordinate to draw the Circle at. This is the center of the circle.
	* @param y The y coordinate to draw the Circle at. This is the center of the circle.
	* @param radius The radius of the Circle in pixels. The radius is half the diameter.
	* @param fillStyle If set the context fillStyle will be set to this value before the circle is drawn.
	* @return This BitmapData object for method chaining.
	*/
	function circle(x:Float, y:Float, radius:Float, ?fillStyle:String):phaser.BitmapData;
	
	/**
	* Clears the BitmapData context using a clearRect.
	* 
	* You can optionally define the area to clear.
	* If the arguments are left empty it will clear the entire canvas.
	* 
	* You may need to call BitmapData.update after this in order to clear out the pixel data,
	* but Phaser will not do this automatically for you.
	* 
	* @param x The x coordinate of the top-left of the area to clear.
	* @param y The y coordinate of the top-left of the area to clear.
	* @param width The width of the area to clear. If undefined it will use BitmapData.width.
	* @param height The height of the area to clear. If undefined it will use BitmapData.height.
	* @return This BitmapData object for method chaining.
	*/
	function clear(?x:Float, ?y:Float, ?width:Float, ?height:Float):phaser.BitmapData;
	
	/**
	* Clears the BitmapData context using a clearRect.
	*/
	function cls():phaser.BitmapData;
	
	/**
	* Copies a rectangular area from the source object to this BitmapData. If you give `null` as the source it will copy from itself.
	* 
	* You can optionally resize, translate, rotate, scale, alpha or blend as it's drawn.
	* 
	* All rotation, scaling and drawing takes place around the regions center point by default, but can be changed with the anchor parameters.
	* 
	* Note that the source image can also be this BitmapData, which can create some interesting effects.
	* 
	* This method has a lot of parameters for maximum control.
	* You can use the more friendly methods like `copyRect` and `draw` to avoid having to remember them all.
	* 
	* You may prefer to use `copyTransform` if you're simply trying to draw a Sprite to this BitmapData,
	* and don't wish to translate, scale or rotate it from its original values.
	* 
	* @param source The source to copy from. If you give a string it will try and find the Image in the Game.Cache first. This is quite expensive so try to provide the image itself.
	* @param x The x coordinate representing the top-left of the region to copy from the source image.
	* @param y The y coordinate representing the top-left of the region to copy from the source image.
	* @param width The width of the region to copy from the source image. If not specified it will use the full source image width.
	* @param height The height of the region to copy from the source image. If not specified it will use the full source image height.
	* @param tx The x coordinate to translate to before drawing. If not specified it will default to the `x` parameter. If `null` and `source` is a Display Object, it will default to `source.x`.
	* @param ty The y coordinate to translate to before drawing. If not specified it will default to the `y` parameter. If `null` and `source` is a Display Object, it will default to `source.y`.
	* @param newWidth The new width of the block being copied. If not specified it will default to the `width` parameter.
	* @param newHeight The new height of the block being copied. If not specified it will default to the `height` parameter.
	* @param rotate The angle in radians to rotate the block to before drawing. Rotation takes place around the center by default, but can be changed with the `anchor` parameters.
	* @param anchorX The anchor point around which the block is rotated and scaled. A value between 0 and 1, where 0 is the top-left and 1 is bottom-right.
	* @param anchorY The anchor point around which the block is rotated and scaled. A value between 0 and 1, where 0 is the top-left and 1 is bottom-right.
	* @param scaleX The horizontal scale factor of the block. A value of 1 means no scaling. 2 would be twice the size, and so on. - Default: 1
	* @param scaleY The vertical scale factor of the block. A value of 1 means no scaling. 2 would be twice the size, and so on. - Default: 1
	* @param alpha The alpha that will be set on the context before drawing. A value between 0 (fully transparent) and 1, opaque. - Default: 1
	* @param blendMode The composite blend mode that will be used when drawing. The default is no blend mode at all. This is a Canvas globalCompositeOperation value such as 'lighter' or 'xor'.
	* @param roundPx Should the x and y values be rounded to integers before drawing? This prevents anti-aliasing in some instances.
	* @return This BitmapData object for method chaining.
	*/
	function copy(?source:Dynamic, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?tx:Float, ?ty:Float, ?newWidth:Float, ?newHeight:Float, ?rotate:Float, ?anchorX:Float, ?anchorY:Float, ?scaleX:Float, ?scaleY:Float, ?alpha:Float, ?blendMode:String, ?roundPx:Bool):phaser.BitmapData;
	
	function copyPixels(source:Dynamic, area:phaser.Rectangle, x:Float, y:Float, ?alpha:Float):Void;
	
	/**
	* Copies the area defined by the Rectangle parameter from the source image to this BitmapData at the given location.
	* 
	* @param source The Image to copy from. If you give a string it will try and find the Image in the Game.Cache.
	* @param area The Rectangle region to copy from the source image.
	* @param x The destination x coordinate to copy the image to.
	* @param y The destination y coordinate to copy the image to.
	* @param alpha The alpha that will be set on the context before drawing. A value between 0 (fully transparent) and 1, opaque. - Default: 1
	* @param blendMode The composite blend mode that will be used when drawing. The default is no blend mode at all. This is a Canvas globalCompositeOperation value such as 'lighter' or 'xor'.
	* @param roundPx Should the x and y values be rounded to integers before drawing? This prevents anti-aliasing in some instances.
	* @return This BitmapData object for method chaining.
	*/
	function copyRect(source:Dynamic, area:phaser.Rectangle, ?x:Float, ?y:Float, ?alpha:Float, ?blendMode:String, ?roundPx:Bool):phaser.BitmapData;
	
	/**
	* Draws the given `source` Game Object to this BitmapData, using its `worldTransform` property to set the
	* position, scale and rotation of where it is drawn. This function is used internally by `drawGroup`.
	* It takes the objects tint and scale mode into consideration before drawing.
	* 
	* You can optionally specify Blend Mode and Round Pixels arguments.
	* 
	* @param source The Game Object to draw.
	* @param blendMode The composite blend mode that will be used when drawing. The default is no blend mode at all. This is a Canvas globalCompositeOperation value such as 'lighter' or 'xor'.
	* @param roundPx Should the x and y values be rounded to integers before drawing? This prevents anti-aliasing in some instances.
	* @return This BitmapData object for method chaining.
	*/
	function copyTransform(source:Dynamic, ?blendMode:String, ?roundPx:Bool):phaser.BitmapData;
	
	/**
	* Destroys this BitmapData and puts the canvas it was using back into the canvas pool for re-use.
	*/
	function destroy():Void;
	
	/**
	* Draws the given Phaser.Sprite, Phaser.Image or Phaser.Text to this BitmapData at the coordinates specified.
	* You can use the optional width and height values to 'stretch' the sprite as it is drawn. This uses drawImage stretching, not scaling.
	* 
	* The children will be drawn at their `x` and `y` world space coordinates. If this is outside the bounds of the BitmapData they won't be visible.
	* When drawing it will take into account the rotation, scale, scaleMode, alpha and tint values.
	* 
	* Note: You should ensure that at least 1 full update has taken place before calling this,
	* otherwise the objects are likely to render incorrectly, if at all.
	* You can trigger an update yourself by calling `stage.updateTransform()` before calling `draw`.
	* 
	* @param source The Sprite, Image or Text object to draw onto this BitmapData.
	* @param x The x coordinate to translate to before drawing. If not specified it will default to `source.x`.
	* @param y The y coordinate to translate to before drawing. If not specified it will default to `source.y`.
	* @param width The new width of the Sprite being copied. If not specified it will default to `source.width`.
	* @param height The new height of the Sprite being copied. If not specified it will default to `source.height`.
	* @param blendMode The composite blend mode that will be used when drawing. The default is no blend mode at all. This is a Canvas globalCompositeOperation value such as 'lighter' or 'xor'.
	* @param roundPx Should the x and y values be rounded to integers before drawing? This prevents anti-aliasing in some instances.
	* @return This BitmapData object for method chaining.
	*/
	function draw(source:Dynamic, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?blendMode:String, ?roundPx:Bool):phaser.BitmapData;
	
	/**
	* Draws the Game Object or Group to this BitmapData and then recursively iterates through all of its children.
	* 
	* If a child has an `exists` property then it (and its children) will be only be drawn if exists is `true`.
	* 
	* The children will be drawn at their `x` and `y` world space coordinates. If this is outside the bounds of the BitmapData
	* they won't be drawn. Depending on your requirements you may need to resize the BitmapData in advance to match the
	* bounds of the top-level Game Object.
	* 
	* When drawing it will take into account the child's world rotation, scale and alpha values.
	* 
	* It's perfectly valid to pass in `game.world` as the parent object, and it will iterate through the entire display list.
	* 
	* Note: If you are trying to grab your entire game at the start of a State then you should ensure that at least 1 full update
	* has taken place before doing so, otherwise all of the objects will render with incorrect positions and scales. You can
	* trigger an update yourself by calling `stage.updateTransform()` before calling `drawFull`.
	* 
	* @param parent The Game Object to draw onto this BitmapData and then recursively draw all of its children.
	* @param blendMode The composite blend mode that will be used when drawing. The default is no blend mode at all. This is a Canvas globalCompositeOperation value such as 'lighter' or 'xor'.
	* @param roundPx Should the x and y values be rounded to integers before drawing? This prevents anti-aliasing in some instances.
	* @return This BitmapData object for method chaining.
	*/
	function drawFull(parent:Dynamic, ?blendMode:String, ?roundPx:Bool):phaser.BitmapData;
	
	/**
	* Draws the immediate children of a Phaser.Group to this BitmapData.
	* 
	* It's perfectly valid to pass in `game.world` as the Group, and it will iterate through the entire display list.
	* 
	* Children are drawn _only_ if they have their `exists` property set to `true`, and have image, or RenderTexture, based Textures.
	* 
	* The children will be drawn at their `x` and `y` world space coordinates. If this is outside the bounds of the BitmapData they won't be visible.
	* When drawing it will take into account the rotation, scale, scaleMode, alpha and tint values.
	* 
	* Note: You should ensure that at least 1 full update has taken place before calling this,
	* otherwise the objects are likely to render incorrectly, if at all.
	* You can trigger an update yourself by calling `stage.updateTransform()` before calling `drawGroup`.
	* 
	* @param group The Group to draw onto this BitmapData. Can also be Phaser.World.
	* @param blendMode The composite blend mode that will be used when drawing. The default is no blend mode at all. This is a Canvas globalCompositeOperation value such as 'lighter' or 'xor'.
	* @param roundPx Should the x and y values be rounded to integers before drawing? This prevents anti-aliasing in some instances.
	* @return This BitmapData object for method chaining.
	*/
	function drawGroup(group:phaser.Group, ?blendMode:String, ?roundPx:Bool):phaser.BitmapData;
	
	/**
	* Scans this BitmapData for all pixels matching the given r,g,b values and then draws them into the given destination BitmapData.
	* The original BitmapData remains unchanged.
	* The destination BitmapData must be large enough to receive all of the pixels that are scanned unless the 'resize' parameter is true.
	* Although the destination BitmapData is returned from this method, it's actually modified directly in place, meaning this call is perfectly valid:
	* `picture.extract(mask, r, g, b)`
	* You can specify optional r2, g2, b2 color values. If given the pixel written to the destination bitmap will be of the r2, g2, b2 color.
	* If not given it will be written as the same color it was extracted. You can provide one or more alternative colors, allowing you to tint
	* the color during extraction.
	* 
	* @param destination The BitmapData that the extracted pixels will be drawn to.
	* @param r The red color component, in the range 0 - 255.
	* @param g The green color component, in the range 0 - 255.
	* @param b The blue color component, in the range 0 - 255.
	* @param a The alpha color component, in the range 0 - 255 that the new pixel will be drawn at. - Default: 255
	* @param resize Should the destination BitmapData be resized to match this one before the pixels are copied?
	* @param r2 An alternative red color component to be written to the destination, in the range 0 - 255.
	* @param g2 An alternative green color component to be written to the destination, in the range 0 - 255.
	* @param b2 An alternative blue color component to be written to the destination, in the range 0 - 255.
	* @return The BitmapData that the extract pixels were drawn on.
	*/
	function extract(destination:phaser.BitmapData, r:Float, g:Float, b:Float, ?a:Float, ?resize:Bool, ?r2:Float, ?g2:Float, ?b2:Float):phaser.BitmapData;
	
	/**
	* Fills the BitmapData with the given color.
	* 
	* @param r The red color value, between 0 and 0xFF (255).
	* @param g The green color value, between 0 and 0xFF (255).
	* @param b The blue color value, between 0 and 0xFF (255).
	* @param a The alpha color value, between 0 and 1. - Default: 1
	* @return This BitmapData object for method chaining.
	*/
	function fill(r:Float, g:Float, b:Float, ?a:Float):phaser.BitmapData;
	
	/**
	* Creates a new Image element by converting this BitmapDatas canvas into a dataURL.
	* 
	* The image is then stored in the image Cache using the key given.
	* 
	* Finally a PIXI.Texture is created based on the image and returned.
	* 
	* You can apply the texture to a sprite or any other supporting object by using either the
	* key or the texture. First call generateTexture:
	* 
	* `var texture = bitmapdata.generateTexture('ball');`
	* 
	* Then you can either apply the texture to a sprite:
	* 
	* `game.add.sprite(0, 0, texture);`
	* 
	* or by using the string based key:
	* 
	* `game.add.sprite(0, 0, 'ball');`
	* 
	* Most browsers now load the image data asynchronously, so you should use a callback:
	* 
	* ```
	* bitmapdata.generateTexture('ball', function (texture) {
	*      game.add.sprite(0, 0, texture);
	*      // or
	*      game.add.sprite(0, 0, 'ball');
	* });
	* ```
	* 
	* If this BitmapData is available during preload, you can use {@link Phaser.Loader#imageFromBitmapData} instead.
	* 
	* @param key The key which will be used to store the image in the Cache.
	* @param callback A function to execute once the texture is generated. It will be passed the newly generated texture.
	* @param callbackContext The context in which to invoke the callback.
	* @return The newly generated texture, or `null` if a callback was passed and the texture isn't available yet.
	*/
	function generateTexture(key:String, ?callback:pixi.Texture->Void, ?callbackContext:Dynamic):pixi.Texture;
	
	/**
	* Scans the BitmapData and calculates the bounds. This is a rectangle that defines the extent of all non-transparent pixels.
	* The rectangle returned will extend from the top-left of the image to the bottom-right, excluding transparent pixels.
	* 
	* @param rect If provided this Rectangle object will be populated with the bounds, otherwise a new object will be created.
	* @return A Rectangle whose dimensions encompass the full extent of non-transparent pixels in this BitmapData.
	*/
	function getBounds(?rect:phaser.Rectangle):phaser.Rectangle;
	
	/**
	* Scans the BitmapData, pixel by pixel, until it encounters a pixel that isn't transparent (i.e. has an alpha value > 0).
	* It then stops scanning and returns an object containing the color of the pixel in r, g and b properties and the location in the x and y properties.
	* 
	* The direction parameter controls from which direction it should start the scan:
	* 
	* 0 = top to bottom
	* 1 = bottom to top
	* 2 = left to right
	* 3 = right to left
	* 
	* @param direction The direction in which to scan for the first pixel. 0 = top to bottom, 1 = bottom to top, 2 = left to right and 3 = right to left.
	* @return Returns an object containing the color of the pixel in the `r`, `g` and `b` properties and the location in the `x` and `y` properties.
	*/
	function getFirstPixel(direction:Float):{r:Float, g:Float, b:Float, x:Float, y:Float};
	
	/**
	* Get the color of a specific pixel in the context into a color object.
	* If you have drawn anything to the BitmapData since it was created you must call BitmapData.update to refresh the array buffer,
	* otherwise this may return out of date color values, or worse - throw a run-time error as it tries to access an array element that doesn't exist.
	* 
	* @param x The x coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @param y The y coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @param out An object into which 4 properties will be created: r, g, b and a. If not provided a new object will be created.
	* @return An object with the red, green, blue and alpha values set in the r, g, b and a properties.
	*/
	function getPixel(x:Float, y:Float, ?out:Dynamic):Dynamic;
	
	/**
	* Get the color of a specific pixel including its alpha value as a color object containing r,g,b,a and rgba properties.
	* If you have drawn anything to the BitmapData since it was created you must call BitmapData.update to refresh the array buffer,
	* otherwise this may return out of date color values, or worse - throw a run-time error as it tries to access an array element that doesn't exist.
	* 
	* @param x The x coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @param y The y coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @param out An object into which 3 properties will be created: r, g and b. If not provided a new object will be created.
	* @param hsl Also convert the rgb values into hsl?
	* @param hsv Also convert the rgb values into hsv?
	* @return An object with the red, green and blue values set in the r, g and b properties.
	*/
	function getPixelRGB(x:Float, y:Float, ?out:Dynamic, ?hsl:Bool, ?hsv:Bool):Dynamic;
	
	/**
	* Get the color of a specific pixel including its alpha value.
	* If you have drawn anything to the BitmapData since it was created you must call BitmapData.update to refresh the array buffer,
	* otherwise this may return out of date color values, or worse - throw a run-time error as it tries to access an array element that doesn't exist.
	* Note that on little-endian systems the format is 0xAABBGGRR and on big-endian the format is 0xRRGGBBAA.
	* 
	* @param x The x coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @param y The y coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @return A native color value integer (format: 0xAARRGGBB)
	*/
	function getPixel32(x:Float, y:Float):Float;
	
	/**
	* Gets all the pixels from the region specified by the given Rectangle object.
	* 
	* @param rect The Rectangle region to get.
	* @return Returns a ImageData object containing a Uint8ClampedArray data property.
	*/
	function getPixels(rect:phaser.Rectangle):ImageData;
	
	/**
	* Draws a line between the coordinates given in the color and thickness specified.
	* 
	* @param x1 The x coordinate to start the line from.
	* @param y1 The y coordinate to start the line from.
	* @param x2 The x coordinate to draw the line to.
	* @param y2 The y coordinate to draw the line to.
	* @param color The stroke color that the line will be drawn in. - Default: '#fff'
	* @param width The line thickness. - Default: 1
	* @return This BitmapData object for method chaining.
	*/
	function line(x1:Float, y1:Float, x2:Float, y2:Float, ?color:String, ?width:Float):phaser.BitmapData;
	
	/**
	* Takes the given Game Object, resizes this BitmapData to match it and then draws it into this BitmapDatas canvas, ready for further processing.
	* The source game object is not modified by this operation.
	* If the source object uses a texture as part of a Texture Atlas or Sprite Sheet, only the current frame will be used for sizing.
	* If a string is given it will assume it's a cache key and look in Phaser.Cache for an image key matching the string.
	* 
	* @param source The object that will be used to populate this BitmapData. If you give a string it will try and find the Image in the Game.Cache first.
	* @return This BitmapData object for method chaining.
	*/
	function load(source:Dynamic):phaser.BitmapData;
	
	/**
	* Shifts the contents of this BitmapData by the distances given.
	* 
	* The image will wrap-around the edges on all sides if the wrap argument is true (the default).
	* 
	* @param x The amount of pixels to horizontally shift the canvas by. Use a negative value to shift to the left, positive to the right.
	* @param y The amount of pixels to vertically shift the canvas by. Use a negative value to shift up, positive to shift down.
	* @param wrap Wrap the content of the BitmapData. - Default: true
	* @return This BitmapData object for method chaining.
	*/
	function move(x:Float, y:Float, ?wrap:Bool):phaser.BitmapData;
	
	/**
	* Shifts the contents of this BitmapData horizontally.
	* 
	* The image will wrap-around the sides if the wrap argument is true (the default).
	* 
	* @param distance The amount of pixels to horizontally shift the canvas by. Use a negative value to shift to the left, positive to the right.
	* @param wrap Wrap the content of the BitmapData. - Default: true
	* @return This BitmapData object for method chaining.
	*/
	function moveH(distance:Float, ?wrap:Bool):phaser.BitmapData;
	
	/**
	* Shifts the contents of this BitmapData vertically.
	* 
	* The image will wrap-around the sides if the wrap argument is true (the default).
	* 
	* @param distance The amount of pixels to vertically shift the canvas by. Use a negative value to shift up, positive to shift down.
	* @param wrap Wrap the content of the BitmapData. - Default: true
	* @return This BitmapData object for method chaining.
	*/
	function moveV(distance:Float, ?wrap:Bool):phaser.BitmapData;
	
	/**
	* Scans through the area specified in this BitmapData and sends the color for every pixel to the given callback along with its x and y coordinates.
	* Whatever value the callback returns is set as the new color for that pixel, unless it returns the same color, in which case it's skipped.
	* Note that the format of the color received will be different depending on if the system is big or little endian.
	* It is expected that your callback will deal with endianess. If you'd rather Phaser did it then use processPixelRGB instead.
	* The callback will also be sent the pixels x and y coordinates respectively.
	* 
	* @param callback The callback that will be sent each pixel color to be processed.
	* @param callbackContext The context under which the callback will be called.
	* @param x The x coordinate of the top-left of the region to process from.
	* @param y The y coordinate of the top-left of the region to process from.
	* @param width The width of the region to process.
	* @param height The height of the region to process.
	* @return This BitmapData object for method chaining.
	*/
	function processPixel(callback:Float->Float->Float->Void, callbackContext:Dynamic, ?x:Float, ?y:Float, ?width:Float, ?height:Float):phaser.BitmapData;
	
	/**
	* Scans through the area specified in this BitmapData and sends a color object for every pixel to the given callback.
	* The callback will be sent a color object with 6 properties: `{ r: number, g: number, b: number, a: number, color: number, rgba: string }`.
	* Where r, g, b and a are integers between 0 and 255 representing the color component values for red, green, blue and alpha.
	* The `color` property is an Int32 of the full color. Note the endianess of this will change per system.
	* The `rgba` property is a CSS style rgba() string which can be used with context.fillStyle calls, among others.
	* The callback will also be sent the pixels x and y coordinates respectively.
	* The callback must return either `false`, in which case no change will be made to the pixel, or a new color object.
	* If a new color object is returned the pixel will be set to the r, g, b and a color values given within it.
	* 
	* @param callback The callback that will be sent each pixel color object to be processed.
	* @param callbackContext The context under which the callback will be called.
	* @param x The x coordinate of the top-left of the region to process from.
	* @param y The y coordinate of the top-left of the region to process from.
	* @param width The width of the region to process.
	* @param height The height of the region to process.
	* @return This BitmapData object for method chaining.
	*/
	function processPixelRGB(callback:ColorComponents->Float->Float->Void, callbackContext:Dynamic, ?x:Float, ?y:Float, ?width:Float, ?height:Float):phaser.BitmapData;
	
	/**
	* Draws a filled Rectangle to the BitmapData at the given x, y coordinates and width / height in size.
	* 
	* @param x The x coordinate of the top-left of the Rectangle.
	* @param y The y coordinate of the top-left of the Rectangle.
	* @param width The width of the Rectangle.
	* @param height The height of the Rectangle.
	* @param fillStyle If set the context fillStyle will be set to this value before the rect is drawn.
	* @return This BitmapData object for method chaining.
	*/
	function rect(x:Float, y:Float, width:Float, height:Float, ?fillStyle:String):phaser.BitmapData;
	
	/**
	* If the game is running in WebGL this will push the texture up to the GPU if it's dirty.
	* This is called automatically if the BitmapData is being used by a Sprite, otherwise you need to remember to call it in your render function.
	* If you wish to suppress this functionality set BitmapData.disableTextureUpload to `true`.
	* 
	* @return This BitmapData object for method chaining.
	*/
	function render():phaser.BitmapData;
	
	/**
	* Replaces all pixels matching one color with another. The color values are given as two sets of RGBA values.
	* An optional region parameter controls if the replacement happens in just a specific area of the BitmapData or the entire thing.
	* 
	* @param r1 The red color value to be replaced. Between 0 and 255.
	* @param g1 The green color value to be replaced. Between 0 and 255.
	* @param b1 The blue color value to be replaced. Between 0 and 255.
	* @param a1 The alpha color value to be replaced. Between 0 and 255.
	* @param r2 The red color value that is the replacement color. Between 0 and 255.
	* @param g2 The green color value that is the replacement color. Between 0 and 255.
	* @param b2 The blue color value that is the replacement color. Between 0 and 255.
	* @param a2 The alpha color value that is the replacement color. Between 0 and 255.
	* @param region The area to perform the search over. If not given it will replace over the whole BitmapData.
	* @return This BitmapData object for method chaining.
	*/
	function replaceRGB(r1:Float, g1:Float, b1:Float, a1:Float, r2:Float, g2:Float, b2:Float, a2:Float, ?region:phaser.Rectangle):phaser.BitmapData;
	
	/**
	* Resizes the BitmapData. This changes the size of the underlying canvas and refreshes the buffer.
	* 
	* @param width The new width of the BitmapData.
	* @param height The new height of the BitmapData.
	* @return This BitmapData object for method chaining.
	*/
	function resize(width:Float, height:Float):phaser.BitmapData;
	
	function resizeFrame(parent:Dynamic, width:Float, height:Float):Void;
	
	/**
	* Sets the hue, saturation and lightness values on every pixel in the given region, or the whole BitmapData if no region was specified.
	* 
	* @param h The hue, in the range 0 - 1.
	* @param s The saturation, in the range 0 - 1.
	* @param l The lightness, in the range 0 - 1.
	* @param region The area to perform the operation on. If not given it will run over the whole BitmapData.
	* @return This BitmapData object for method chaining.
	*/
	function setHSL(?h:Float, ?s:Float, ?l:Float, ?region:phaser.Rectangle):phaser.BitmapData;
	
	/**
	* Sets the color of the given pixel to the specified red, green and blue values.
	* 
	* @param x The x coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @param y The y coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @param red The red color value, between 0 and 0xFF (255).
	* @param green The green color value, between 0 and 0xFF (255).
	* @param blue The blue color value, between 0 and 0xFF (255).
	* @param immediate If `true` the context.putImageData will be called and the dirty flag set. - Default: true
	* @return This BitmapData object for method chaining.
	*/
	function setPixel(x:Float, y:Float, red:Float, green:Float, blue:Float, ?immediate:Bool):phaser.BitmapData;
	
	/**
	* Sets the color of the given pixel to the specified red, green, blue and alpha values.
	* 
	* @param x The x coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @param y The y coordinate of the pixel to be set. Must lay within the dimensions of this BitmapData and be an integer, not a float.
	* @param red The red color value, between 0 and 0xFF (255).
	* @param green The green color value, between 0 and 0xFF (255).
	* @param blue The blue color value, between 0 and 0xFF (255).
	* @param alpha The alpha color value, between 0 and 0xFF (255).
	* @param immediate If `true` the context.putImageData will be called and the dirty flag set. - Default: true
	* @return This BitmapData object for method chaining.
	*/
	function setPixel32(x:Float, y:Float, red:Float, green:Float, blue:Float, alpha:Float, ?immediate:Bool):phaser.BitmapData;
	
	/**
	* Sets the shadow properties of this BitmapDatas context which will affect all draw operations made to it.
	* You can cancel an existing shadow by calling this method and passing no parameters.
	* Note: At the time of writing (October 2014) Chrome still doesn't support shadowBlur used with drawImage.
	* 
	* @param color The color of the shadow, given in a CSS format, i.e. `#000000` or `rgba(0,0,0,1)`. If `null` or `undefined` the shadow will be reset.
	* @param blur The amount the shadow will be blurred by. Low values = a crisp shadow, high values = a softer shadow. - Default: 5
	* @param x The horizontal offset of the shadow in pixels. - Default: 10
	* @param y The vertical offset of the shadow in pixels. - Default: 10
	* @return This BitmapData object for method chaining.
	*/
	function shadow(color:String, ?blur:Float, ?x:Float, ?y:Float):phaser.BitmapData;
	
	/**
	* Shifts any or all of the hue, saturation and lightness values on every pixel in the given region, or the whole BitmapData if no region was specified.
	* Shifting will add the given value onto the current h, s and l values, not replace them.
	* The hue is wrapped to keep it within the range 0 to 1. Saturation and lightness are clamped to not exceed 1.
	* 
	* @param h The amount to shift the hue by.
	* @param s The amount to shift the saturation by.
	* @param l The amount to shift the lightness by.
	* @param region The area to perform the operation on. If not given it will run over the whole BitmapData.
	* @return This BitmapData object for method chaining.
	*/
	function shiftHSL(?h:Float, ?s:Float, ?l:Float, ?region:phaser.Rectangle):phaser.BitmapData;
	
	/**
	* Draws text to the BitmapData in the given font and color.
	* The default font is 14px Courier, so useful for quickly drawing debug text.
	* If you need to do a lot of font work to this BitmapData we'd recommend implementing your own text draw method.
	* 
	* @param text The text to write to the BitmapData.
	* @param x The x coordinate of the top-left of the text string.
	* @param y The y coordinate of the top-left of the text string.
	* @param font The font. This is passed directly to Context.font, so anything that can support, this can. - Default: '14px Courier'
	* @param color The color the text will be drawn in. - Default: 'rgb(255,255,255)'
	* @param shadow Draw a single pixel black shadow below the text (offset by text.x/y + 1) - Default: true
	* @return This BitmapData object for method chaining.
	*/
	function text(text:String, ?x:Float, ?y:Float, ?font:String, ?color:String, ?shadow:Bool):phaser.BitmapData;
	
	/**
	* Takes the given Line object and image and renders it to this BitmapData as a repeating texture line.
	* 
	* @param line A Phaser.Line object that will be used to plot the start and end of the line.
	* @param image The key of an image in the Phaser.Cache to use as the texture for this line, or an actual Image.
	* @param repeat The pattern repeat mode to use when drawing the line. Either `repeat`, `repeat-x` or `no-repeat`. - Default: 'repeat-x'
	* @return This BitmapData object for method chaining.
	*/
	function textureLine(line:phaser.Line, key:String, ?repeat:String):phaser.BitmapData;
	
	/**
	* This re-creates the BitmapData.imageData from the current context.
	* It then re-builds the ArrayBuffer, the data Uint8ClampedArray reference and the pixels Int32Array.
	* If not given the dimensions defaults to the full size of the context.
	* 
	* Warning: This is a very expensive operation, so use it sparingly.
	* 
	* @param x The x coordinate of the top-left of the image data area to grab from.
	* @param y The y coordinate of the top-left of the image data area to grab from.
	* @param width The width of the image data area. - Default: 1
	* @param height The height of the image data area. - Default: 1
	* @return This BitmapData object for method chaining.
	*/
	function update(?x:Float, ?y:Float, ?width:Float, ?height:Float):phaser.BitmapData;
	
	/**
	* Updates a portion of the BitmapData from a source Bitmap.
	* This optimization is important if calling update() on a large Bitmap is causing performance issues.
	* Make sure you use getPixel32() instead of getPixel().
	* This does not work with floating point numbers for x and y.
	* 
	* @param source The BitmapData you wish to copy.
	* @param x The x coordinate of the top-left of the area to copy.
	* @param y The y coordinate of the top-left of the area to copy.
	* @return This BitmapData object for method chaining.
	*/
	function copyBitmapData(source:phaser.BitmapData, x:Float, y:Float):phaser.BitmapData;
	
	/**
	* Gets a JavaScript object that has 6 properties set that are used by BitmapData in a transform.
	* 
	* @param translateX The x translate value.
	* @param translateY The y translate value.
	* @param scaleX The scale x value.
	* @param scaleY The scale y value.
	* @param skewX The skew x value.
	* @param skewY The skew y value.
	* @return A JavaScript object containing all of the properties BitmapData needs for transforms.
	*/
	@:native("getTransform")
	static function STATIC_getTransform(translateX:Float, translateY:Float, scaleX:Float, scaleY:Float, skewX:Float, skewY:Float):Dynamic;
	
}

