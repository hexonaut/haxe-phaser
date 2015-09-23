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
	 * If enabled a green rectangle will be drawn behind the generated tiling texture, allowing you to visually
	 * debug the texture being used.
	 */
	var textureDebug:Bool;
	
	/**
	 * The CanvasBuffer object that the tiled texture is drawn to.
	 */
	var canvasBuffer:phaser.pixi.renderers.canvas.utils.CanvasBuffer;
	
	/**
	 * An internal Texture object that holds the tiling texture that was generated from TilingSprite.texture.
	 */
	var tilingTexture:phaser.pixi.textures.Texture;
	
	/**
	 * The Context fill pattern that is used to draw the TilingSprite in Canvas mode only (will be null in WebGL).
	 */
	var tilePattern:phaser.pixi.textures.Texture;
	
	/**
	 * If true the TilingSprite will run generateTexture on its <strong>next</strong> render pass.
	 * This is set by the likes of Phaser.LoadTexture.setFrame.
	 */
	var refreshTexture:Bool;
	
}
