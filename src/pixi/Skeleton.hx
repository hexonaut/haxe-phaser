package pixi;

@:native("PIXI.Skeleton")
extern class Skeleton {

	function new(skeletonData:SkeletonData);
	
	var data:SkeletonData;
	
	var bones:Array<Bone>;
	
	var slots:Array<Slot>;
	
	var drawOrder:Array<Dynamic>;
	
	var x:Float;
	
	var y:Float;
	
	var skin:Skin;
	
	var r:Float;
	
	var g:Float;
	
	var b:Float;
	
	var a:Float;
	
	var time:Float;
	
	var flipX:Bool;
	
	var flipY:Bool;
	
	function updateWorldTransform():Void;
	
	function setToSetupPose():Void;
	
	function setBonesToSetupPose():Void;
	
	function setSlotsToSetupPose():Void;
	
	function getRootBone():Bone;
	
	function findBone(boneName:String):Bone;
	
	function fineBoneIndex(boneName:String):Float;
	
	function findSlot(slotName:String):Slot;
	
	function findSlotIndex(slotName:String):Float;
	
	function setSkinByName(skinName:String):Void;
	
	function setSkin(newSkin:Skin):Void;
	
	function getAttachmentBySlotName(slotName:String, attachmentName:String):RegionAttachment;
	
	function getAttachmentBySlotIndex(slotIndex:Float, attachmentName:String):RegionAttachment;
	
	function setAttachment(slotName:String, attachmentName:String):Void;
	
	function update(data:Float):Void;
	
}

