package phaser.pixi.textures;

@:native("PIXI.Texture")
extern class Texture {
	var TextureCache:Dynamic;
	function new (BaseTexture:Dynamic, Rectangle:Dynamic);
	var baseTexture:Dynamic;
	var frame:Dynamic;
	var trim:Dynamic;
}
