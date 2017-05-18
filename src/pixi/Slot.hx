package pixi;

@:native("PIXI.Slot")
extern class Slot {

	function new(slotData:SlotData, skeleton:Skeleton, bone:Bone);
	
	var data:SlotData;
	
	var skeleton:Skeleton;
	
	var bone:Bone;
	
	var r:Float;
	
	var g:Float;
	
	var b:Float;
	
	var a:Float;
	
	var attachment:RegionAttachment;
	
	function setAttachment(attachment:RegionAttachment):Void;
	
	function setAttachmentTime(time:Float):Void;
	
	function getAttachmentTime():Float;
	
	function setToSetupPose():Void;
	
}

