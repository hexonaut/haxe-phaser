package phaser.pixi.textures;

@:native("PIXI.RenderTexture")
extern class RenderTexture extends phaser.pixi.textures.Texture {
	
	/**
	 * The Resolution of the texture.
	 */
	var resolution:Float;
	
	/**
	 * The renderer this RenderTexture uses. A RenderTexture can only belong to one renderer at the moment if its webGL.
	 */
	var renderer:Dynamic;
	
	/**
	 * Will return a a base64 encoded string of this texture. It works by calling RenderTexture.getCanvas and then running toDataURL on that.
	 */
	function getBase64():String;
}
