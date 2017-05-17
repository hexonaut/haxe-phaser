package pixi;

@:native("PIXI.NormalMapFilter")
extern class NormalMapFilter extends AbstractFilter {

	var map:Texture;
	
	var offset:Point;
	
	var scale:Point;
	
}

