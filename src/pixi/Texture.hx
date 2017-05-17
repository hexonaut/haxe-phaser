package pixi;

import js.html.CanvasElement as HTMLCanvasElement;

/**
* A texture stores the information that represents an image or part of an image. It cannot be added
* to the display list directly. Instead use it as the texture for a PIXI.Sprite. If no frame is provided then the whole image is used.
*/
@:native("PIXI.Texture")
extern class Texture implements Mixin {

	static var emptyTexture:Texture;
	
	/**
	* Helper function that creates a new a Texture based on the given canvas element.
	* 
	* @param canvas The canvas element source of the texture
	* @param scaleMode See {{#crossLink "PIXI/scaleModes:property"}}PIXI.scaleModes{{/crossLink}} for possible values
	*/
	static function fromCanvas(canvas:HTMLCanvasElement, ?scaleMode:ScaleModes):Texture;
	
	/**
	* A texture stores the information that represents an image or part of an image. It cannot be added
	* to the display list directly. Instead use it as the texture for a PIXI.Sprite. If no frame is provided then the whole image is used.
	* 
	* @param baseTexture The base texture source to create the texture from
	* @param frame The rectangle frame of the texture to show
	* @param crop The area of original texture
	* @param trim Trimmed texture rectangle
	*/
	function new(baseTexture:BaseTexture, ?frame:Rectangle, ?crop:Rectangle, ?trim:Rectangle);
	
	/**
	* The base texture that this texture uses.
	*/
	var baseTexture:BaseTexture;
	
	/**
	* This is the area of the BaseTexture image to actually copy to the Canvas / WebGL when rendering,
	* irrespective of the actual frame size or placement (which can be influenced by trimmed texture atlases)
	*/
	var crop:Rectangle;
	
	/**
	* The frame specifies the region of the base texture that this texture uses
	*/
	var frame:Rectangle;
	
	/**
	* The height of the Texture in pixels.
	*/
	var height:Float;
	
	/**
	* Does this Texture have any frame data assigned to it?
	*/
	var noFrame:Bool;
	
	/**
	* This will let a renderer know that a texture has been updated (used mainly for webGL uv updates)
	*/
	var requiresUpdate:Bool;
	
	/**
	* The texture trim data.
	*/
	var trim:Point;
	
	/**
	* The width of the Texture in pixels.
	*/
	var width:Float;
	
	var scope:Dynamic;
	
	/**
	* This will let the renderer know if the texture is valid. If it's not then it cannot be rendered.
	*/
	var valid:Bool;
	
	/**
	* A flag that controls if this frame is rotated or not.
	* Rotation allows you to use rotated frames in texture atlas packing, it has nothing to do with
	* Sprite rotation.
	*/
	var rotated:Bool;
	
	function listeners(eventName:String):Array<Dynamic>;
	
	function emit(eventName:String, ?data:Dynamic):Bool;
	
	function dispatchEvent(eventName:String, ?data:Dynamic):Bool;
	
	function on(eventName:String, fn:Dynamic):Dynamic;
	
	function addEventListener(eventName:String, fn:Dynamic):Dynamic;
	
	function once(eventName:String, fn:Dynamic):Dynamic;
	
	function off(eventName:String, fn:Dynamic):Dynamic;
	
	function removeAllEventListeners(eventName:String):Void;
	
	/**
	* Destroys this texture
	* 
	* @param destroyBase Whether to destroy the base texture as well
	*/
	function destroy(destroyBase:Bool):Void;
	
	/**
	* Specifies the region of the baseTexture that this texture will use.
	* 
	* @param frame The frame of the texture to set it to
	*/
	function setFrame(frame:Rectangle):Void;
	
}

