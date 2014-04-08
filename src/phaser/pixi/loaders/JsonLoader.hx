package phaser.pixi.loaders;

@:native("PIXI.JsonLoader")
extern class JsonLoader {
	function new (String:Dynamic, Boolean:Dynamic);
	var url:String;
	var crossorigin:Dynamic;
	var baseUrl:String;
	var loaded:Dynamic;
}
