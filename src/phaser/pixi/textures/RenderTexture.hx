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
	
}
