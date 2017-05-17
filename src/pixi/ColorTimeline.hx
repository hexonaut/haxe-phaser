package pixi;

@:native("PIXI.ColorTimeline")
extern class ColorTimeline implements ISpineTimeline {

	function new(frameCount:Float);
	
	var curves:Curves;
	
	var frames:Array<Float>;
	
	var boneIndex:Float;
	
	function getFrameCount():Float;
	
	function setFrame(frameIndex:Float, time:Float, r:Float, g:Float, b:Float, a:Float):Void;
	
	function apply(skeleton:Skeleton, time:Float, alpha:Float):Void;
	
}

