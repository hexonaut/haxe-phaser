package pixi;

@:native("PIXI.AlphaMaskFilter")
extern class AlphaMaskFilter extends AbstractFilter {

	function new(texture:Texture);
	
	var map:Texture;
	
	function onTextureLoaded():Void;
	
}

