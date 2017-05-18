package pixi;

@:native("PIXI.Strip")
extern class Strip extends DisplayObjectContainer {

	static var DrawModes:{TRIANGLE_STRIP:Float, TRIANGLES:Float};
	
	function new(texture:Texture);
	
	var blendMode:Float;
	
	var colors:Array<Float>;
	
	var dirty:Bool;
	
	var indices:Array<Float>;
	
	var canvasPadding:Float;
	
	var texture:Texture;
	
	var uvs:Array<Float>;
	
	var vertices:Array<Float>;
	
	@:native("getBounds")
	function Strip_getBounds(?matrix:Matrix):Rectangle;
	
}

