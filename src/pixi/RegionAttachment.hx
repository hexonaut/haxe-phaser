package pixi;

@:native("PIXI.RegionAttachment")
extern class RegionAttachment {

	var offset:Array<Float>;
	
	var uvs:Array<Float>;
	
	var x:Float;
	
	var y:Float;
	
	var rotation:Float;
	
	var scaleX:Float;
	
	var scaleY:Float;
	
	var width:Float;
	
	var height:Float;
	
	var rendererObject:Dynamic;
	
	var regionOffsetX:Float;
	
	var regionOffsetY:Float;
	
	var regionWidth:Float;
	
	var regionHeight:Float;
	
	var regionOriginalWidth:Float;
	
	var regionOriginalHeight:Float;
	
	function setUVs(u:Float, v:Float, u2:Float, v2:Float, rotate:Float):Void;
	
	function updateOffset():Void;
	
	function computeVertices(x:Float, y:Float, bone:Bone, vertices:Array<Float>):Void;
	
}

