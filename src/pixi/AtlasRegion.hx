package pixi;

@:native("PIXI.AtlasRegion")
extern class AtlasRegion {

	var page:AtlasPage;
	
	var name:String;
	
	var x:Float;
	
	var y:Float;
	
	var width:Float;
	
	var height:Float;
	
	var u:Float;
	
	var v:Float;
	
	var u2:Float;
	
	var v2:Float;
	
	var offsetX:Float;
	
	var offsetY:Float;
	
	var originalWidth:Float;
	
	var originalHeight:Float;
	
	var index:Float;
	
	var rotate:Bool;
	
	var splits:Array<Dynamic>;
	
	var pads:Array<Dynamic>;
	
}

