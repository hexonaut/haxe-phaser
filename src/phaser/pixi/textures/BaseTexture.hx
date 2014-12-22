package phaser.pixi.textures;

@:native("PIXI.BaseTexture")
extern class BaseTexture {
	
	/**
	 * @author Mat Groves <a href='http://matgroves.com/'>http://matgroves.com/</a> @Doormat23
	 */
	var BaseTextureCache:Dynamic;
	
	/**
	 * A texture stores the information that represents an image. All textures have a base texture.
	 */
	function new (String:Dynamic, Number:Dynamic);
	
	/**
	 * The Resolution of the texture. 
	 */
	var resolution:Float;
	
	/**
	 * [read-only] The width of the base texture set when the image has loaded
	 */
	var width:Float;
	
	/**
	 * [read-only] The height of the base texture set when the image has loaded
	 */
	var height:Float;
	
	/**
	 * The scale mode to apply when scaling this texture
	 */
	var scaleMode:Float;
	
	/**
	 * [read-only] Set to true once the base texture has loaded
	 */
	var hasLoaded:Bool;
	
	/**
	 * The image source that is used to create the texture.
	 */
	var source:Dynamic;
	
	/**
	 * Controls if RGB channels should be pre-multiplied by Alpha  (WebGL only)
	 */
	var premultipliedAlpha:Bool;
	
	/**
	 * @property _glTextures
	 */
	var _glTextures:Dynamic;
	
	/**
	 * Set this to true if a mipmap of this texture needs to be generated. This value needs to be set before the texture is used
	 * Also the texture must be a power of two size to work
	 */
	var mipmap:Bool;
	
	/**
	 * @property _dirty
	 */
	var _dirty:Dynamic;
	
	/**
	 * @property imageUrl
	 */
	var imageUrl:Dynamic;
	
	/**
	 * @property _powerOf2
	 */
	var _powerOf2:Dynamic;
	
}
