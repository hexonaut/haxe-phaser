package pixi;

@:native("PIXI.SkeletonData")
extern class SkeletonData {

	var bones:Array<Bone>;
	
	var slots:Array<Slot>;
	
	var skins:Array<Skin>;
	
	var animations:Array<Animation>;
	
	var defaultSkin:Skin;
	
	function findBone(boneName:String):Bone;
	
	function findBoneIndex(boneName:String):Float;
	
	function findSlot(slotName:String):Slot;
	
	function findSlotIndex(slotName:String):Float;
	
	function findSkin(skinName:String):Skin;
	
	function findAnimation(animationName:String):Animation;
	
}

