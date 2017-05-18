package phaser;

import haxe.extern.EitherType;

@:native("Phaser.PhaserTextStyle")
extern interface PhaserTextStyle {

	@:optional
	var font:String;
	
	@:optional
	var fill:Dynamic;
	
	@:optional
	var align:String;
	
	@:optional
	var stroke:String;
	
	@:optional
	var strokeThickness:Float;
	
	@:optional
	var wordWrap:Bool;
	
	@:optional
	var wordWrapWidth:Float;
	
	@:optional
	var maxLines:Float;
	
	@:optional
	var shadowOffsetX:Float;
	
	@:optional
	var shadowOffsetY:Float;
	
	@:optional
	var shadowColor:String;
	
	@:optional
	var shadowBlur:Float;
	
	@:optional
	var valign:String;
	
	@:optional
	var tab:Float;
	
	@:optional
	var tabs:Float;
	
	@:optional
	var fontSize:Float;
	
	@:optional
	var fontStyle:String;
	
	@:optional
	var fontVariant:String;
	
	@:optional
	var fontWeight:EitherType<String, Float>;
	
	@:optional
	var backgroundColor:String;
	
	@:optional
	var boundsAlignH:String;
	
	@:optional
	var boundsAlignV:String;
	
}

