package pixi;

@:native("PIXI.AtlasAttachmentLoader")
extern class AtlasAttachmentLoader {

	function new(atlas:Atlas);
	
	var atlas:Atlas;
	
	function newAttachment(skin:Skin, type:Float, name:String):RegionAttachment;
	
}

