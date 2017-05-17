package pixi;

@:native("PIXI.Bone")
extern class Bone {

	function new(boneData:BoneData, ?parent:Dynamic);
	
	var data:BoneData;
	
	var parent:Dynamic;
	
	var yDown:Bool;
	
	var x:Float;
	
	var y:Float;
	
	var rotation:Float;
	
	var scaleX:Float;
	
	var scaleY:Float;
	
	var worldRotation:Float;
	
	var worldScaleX:Float;
	
	var worldScaleY:Float;
	
	function updateWorldTransform(flipX:Bool, flip:Bool):Void;
	
	function setToSetupPose():Void;
	
}

