package pixi;

@:native("PIXI.Rope")
extern class Rope extends Strip {

	var points:Array<Point>;
	
	function new(texture:Texture, points:Array<Point>);
	
	function refresh():Void;
	
	function setTexture(texture:Texture):Void;
	
}

