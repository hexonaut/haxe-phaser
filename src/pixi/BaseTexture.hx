package pixi;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.ImageElement as HTMLImageElement;

/**
* A texture stores the information that represents an image. All textures have a base texture.
*/
@:native("PIXI.BaseTexture")
extern class BaseTexture implements Mixin {

	/**
	* Helper function that creates a base texture from the given canvas element.
	* 
	* @param canvas The canvas element source of the texture
	* @param scaleMode See {{#crossLink "PIXI/scaleModes:property"}}PIXI.scaleModes{{/crossLink}} for possible values
	* @param resolution the resolution of the texture (for HiDPI displays)
	*/
	static function fromCanvas(canvas:HTMLCanvasElement, ?scaleMode:ScaleModes):BaseTexture;
	
	/**
	* A texture stores the information that represents an image. All textures have a base texture.
	* 
	* @param source the source object (image or canvas)
	* @param scaleMode See {{#crossLink "PIXI/scaleModes:property"}}PIXI.scaleModes{{/crossLink}} for possible values
	* @param resolution the resolution of the texture (for HiDPI displays)
	*/
	@:overload(function(source:HTMLCanvasElement, scaleMode:ScaleModes):Dynamic{})
	function new(source:HTMLImageElement, scaleMode:ScaleModes);
	
	/**
	* [read-only] The height of the base texture set when the image has loaded
	*/
	var height:Float;
	
	/**
	* [read-only] Set to true once the base texture has loaded
	*/
	var hasLoaded:Bool;
	
	/**
	* Set this to true if a mipmap of this texture needs to be generated. This value needs to be set before the texture is used
	* Also the texture must be a power of two size to work
	*/
	var mipmap:Bool;
	
	/**
	* Controls if RGB channels should be pre-multiplied by Alpha  (WebGL only)
	* Default: true
	*/
	var premultipliedAlpha:Bool;
	
	/**
	* The Resolution of the texture.
	*/
	var resolution:Float;
	
	/**
	* The scale mode to apply when scaling this texture
	* Default: PIXI.scaleModes.LINEAR
	*/
	var scaleMode:ScaleModes;
	
	/**
	* A BaseTexture can be set to skip the rendering phase in the WebGL Sprite Batch.
	* 
	* You may want to do this if you have a parent Sprite with no visible texture (i.e. uses the internal `__default` texture)
	* that has children that you do want to render, without causing a batch flush in the process.
	*/
	var skipRender:Bool;
	
	/**
	* The image source that is used to create the texture.
	*/
	var source:HTMLImageElement;
	
	/**
	* The multi texture batching index number.
	*/
	var textureIndex:Float;
	
	/**
	* [read-only] The width of the base texture set when the image has loaded
	*/
	var width:Float;
	
	function listeners(eventName:String):Array<Dynamic>;
	
	function emit(eventName:String, ?data:Dynamic):Bool;
	
	function dispatchEvent(eventName:String, ?data:Dynamic):Bool;
	
	function on(eventName:String, fn:Dynamic):Dynamic;
	
	function addEventListener(eventName:String, fn:Dynamic):Dynamic;
	
	function once(eventName:String, fn:Dynamic):Dynamic;
	
	function off(eventName:String, fn:Dynamic):Dynamic;
	
	function removeAllEventListeners(eventName:String):Void;
	
	/**
	* Forces this BaseTexture to be set as loaded, with the given width and height.
	* Then calls BaseTexture.dirty.
	* Important for when you don't want to modify the source object by forcing in `complete` or dimension properties it may not have.
	* 
	* @param width - The new width to force the BaseTexture to be.
	* @param height - The new height to force the BaseTexture to be.
	*/
	function forceLoaded(width:Float, height:Float):Void;
	
	/**
	* Destroys this base texture
	*/
	function destroy():Void;
	
	/**
	* Sets all glTextures to be dirty.
	*/
	function dirty():Void;
	
	/**
	* Removes the base texture from the GPU, useful for managing resources on the GPU.
	* Atexture is still 100% usable and will simply be reuploaded if there is a sprite on screen that is using it.
	*/
	function unloadFromGPU():Void;
	
}

