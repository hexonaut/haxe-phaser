package pixi;

@:native("PIXI.SkeletonJson")
extern class SkeletonJson {

	function new(attachmentLoader:AtlasAttachmentLoader);
	
	var attachmentLoader:AtlasAttachmentLoader;
	
	var scale:Float;
	
	function readSkeletonData(root:Dynamic):SkeletonData;
	
	function readAttachment(skin:Skin, name:String, map:Dynamic):RegionAttachment;
	
	function readAnimation(name:String, map:Dynamic, skeletonData:SkeletonData):Void;
	
	function readCurve(timeline:ISpineTimeline, frameIndex:Float, valueMap:Dynamic):Void;
	
	function toColor(hexString:String, colorIndex:Float):Float;
	
}

