package phaser.pixi.extras;

@:native("PIXI.TilingSprite")
extern class TilingSprite extends phaser.pixi.display.Sprite {
	
	/**
	 * The scaling of the image that is being tiled
	 */
	var tileScale:Dynamic;
	
	/**
	 * A point that represents the scale of the texture object
	 */
	var tileScaleOffset:Dynamic;
	
	/**
	 * The offset position of the image that is being tiled
	 */
	var tilePosition:Dynamic;
	
	/**
	 * // stop current texture;
	 *     if(this.texture.baseTexture !== texture.baseTexture)
	 *     {
	 *         this.textureChange = true;
	 *         this.texture = texture;
	 *     }
	 *     else
	 *     {
	 *         this.texture = texture;
	 *     }
	 * 
	 * <pre>this.updateFrame = true;
	 * </pre>
	 */
	var cachedTint:Dynamic;
	
}
