package pixi;

@:native("PIXI.DisplacementFilter")
extern class DisplacementFilter extends AbstractFilter {

	function new(texture:Texture);
	
	var map:Texture;
	
	var offset:Point;
	
	var scale:Point;
	
}

