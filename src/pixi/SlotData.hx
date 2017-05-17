package pixi;

@:native("PIXI.SlotData")
extern class SlotData {

	function new(name:String, boneData:BoneData);
	
	var name:String;
	
	var boneData:BoneData;
	
	var r:Float;
	
	var g:Float;
	
	var b:Float;
	
	var a:Float;
	
	var attachmentName:String;
	
}

