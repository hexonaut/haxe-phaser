package pixi;

@:native("PIXI.BoneData")
extern class BoneData {

	function new(name:String, ?parent:Dynamic);
	
	var name:String;
	
	var parent:Dynamic;
	
	var length:Float;
	
	var x:Float;
	
	var y:Float;
	
	var rotation:Float;
	
	var scaleX:Float;
	
	var scaleY:Float;
	
}

