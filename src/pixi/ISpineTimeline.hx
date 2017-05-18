package pixi;

@:native("PIXI.ISpineTimeline")
extern interface ISpineTimeline {

	var curves:Curves;
	
	var frames:Array<Float>;
	
	function getFrameCount():Float;
	
	function apply(skeleton:Skeleton, time:Float, alpha:Float):Void;
	
}

