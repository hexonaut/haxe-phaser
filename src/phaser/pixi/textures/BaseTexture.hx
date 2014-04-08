package phaser.pixi.textures;

@:native("PIXI.BaseTexture")
extern class BaseTexture {
	var BaseTextureCache:Dynamic;
	function new (String:Dynamic, Number:Dynamic);
	var width:Dynamic;
	var height:Dynamic;
	var scaleMode:Dynamic;
	var hasLoaded:Dynamic;
	var source:Dynamic;
}
