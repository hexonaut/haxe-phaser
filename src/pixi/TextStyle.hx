package pixi;

@:native("PIXI.TextStyle")
extern interface TextStyle {

	@:optional
	var align:String;
	
	@:optional
	var dropShadow:Bool;
	
	@:optional
	var dropShadowColor:String;
	
	@:optional
	var dropShadowAngle:Float;
	
	@:optional
	var dropShadowDistance:Float;
	
	@:optional
	var fill:String;
	
	@:optional
	var font:String;
	
	@:optional
	var lineJoin:String;
	
	@:optional
	var stroke:String;
	
	@:optional
	var strokeThickness:Float;
	
	@:optional
	var wordWrap:Bool;
	
	@:optional
	var wordWrapWidth:Float;
	
}

