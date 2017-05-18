package pixi;

@:native("PIXI.RotateTimeline")
extern class RotateTimeline implements ISpineTimeline {

	function new(frameCount:Float);
	
	var curves:Curves;
	
	var frames:Array<Float>;
	
	var boneIndex:Float;
	
	function getFrameCount():Float;
	
	function setFrame(frameIndex:Float, time:Float, angle:Float):Void;
	
	function apply(skeleton:Skeleton, time:Float, alpha:Float):Void;
	
}

