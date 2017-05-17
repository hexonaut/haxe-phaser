package pixi;

@:native("PIXI.AttachmentTimeline")
extern class AttachmentTimeline implements ISpineTimeline {

	function new(frameCount:Float);
	
	var curves:Curves;
	
	var frames:Array<Float>;
	
	var attachmentNames:Array<String>;
	
	var slotIndex:Float;
	
	function getFrameCount():Float;
	
	function setFrame(frameIndex:Float, time:Float, attachmentName:String):Void;
	
	function apply(skeleton:Skeleton, time:Float, alpha:Float):Void;
	
}

