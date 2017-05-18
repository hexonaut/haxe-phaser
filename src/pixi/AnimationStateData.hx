package pixi;

@:native("PIXI.AnimationStateData")
extern class AnimationStateData {

	function new(skeletonData:SkeletonData);
	
	var skeletonData:SkeletonData;
	
	var animationToMixTime:Dynamic;
	
	var defaultMix:Float;
	
	function setMixByName(fromName:String, toName:String, duration:Float):Void;
	
	function setMix(from:String, to:String):Float;
	
}

