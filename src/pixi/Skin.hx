package pixi;

@:native("PIXI.Skin")
extern class Skin {

	function new(name:String);
	
	var name:String;
	
	var attachments:Dynamic;
	
	function addAttachment(slotIndex:Float, name:String, attachment:RegionAttachment):Void;
	
	function getAttachment(slotIndex:Float, name:String):Void;
	
}

