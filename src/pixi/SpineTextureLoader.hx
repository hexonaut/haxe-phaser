package pixi;

@:native("PIXI.SpineTextureLoader")
extern class SpineTextureLoader {

	function new(basePath:String, crossorigin:Bool);
	
	function load(page:AtlasPage, file:String):Void;
	
	function unload(texture:BaseTexture):Void;
	
}

