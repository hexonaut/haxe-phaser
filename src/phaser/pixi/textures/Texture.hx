package phaser.pixi.textures;

@:native("PIXI.Texture")
extern class Texture {
	
	/**
	 * @author Mat Groves <a href='http://matgroves.com/'>http://matgroves.com/</a> @Doormat23
	 */
	var TextureCache:Dynamic;
	
	/**
	 * A texture stores the information that represents an image or part of an image. It cannot be added
	 * to the display list directly. To do this use PIXI.Sprite. If no frame is provided then the whole image is used
	 */
	function new (BaseTexture:Dynamic, Rectangle:Dynamic);
	
	/**
	 * The base texture of that this texture uses
	 */
	var baseTexture:Dynamic;
	
	/**
	 * The frame specifies the region of the base texture that this texture uses
	 */
	var frame:Dynamic;
	
	/**
	 * The trim point
	 */
	var trim:Dynamic;
	
}
