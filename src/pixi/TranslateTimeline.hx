package pixi;

@:native("PIXI.TranslateTimeline")
extern class TranslateTimeline implements ISpineTimeline {

	function new(frameCount:Float);
	
	var curves:Curves;
	
	var frames:Array<Float>;
	
	var boneIndex:Float;
	
	function getFrameCount():Float;
	
	function setFrame(frameIndex:Float, time:Float, x:Float, y:Float):Void;
	
	function apply(skeleton:Skeleton, time:Float, alpha:Float):Void;
	
}

