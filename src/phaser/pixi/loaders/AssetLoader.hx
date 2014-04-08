package phaser.pixi.loaders;

@:native("PIXI.AssetLoader")
extern class AssetLoader {
	function new (assetURLs:Dynamic, Boolean:Dynamic);
	var assetURLs:Dynamic;
	var crossorigin:Dynamic;
	var loadersByType:Dynamic;
}
