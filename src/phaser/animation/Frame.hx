package phaser.animation;

@:native("Phaser.Frame")
extern class Frame {
	function new (index:Float, x:Float, y:Float, width:Float, height:Float, name:String, uuid:String);
	var index:Float;
	var x:Float;
	var y:Float;
	var width:Float;
	var height:Float;
	var name:String;
	var uuid:String;
	var centerX:Float;
	var centerY:Float;
	var distance:Float;
	var rotated:Bool;
	var rotationDirection:String;
	var trimmed:Bool;
	var sourceSizeW:Float;
	var sourceSizeH:Float;
	var spriteSourceSizeX:Float;
	var spriteSourceSizeY:Float;
	var spriteSourceSizeW:Float;
	var spriteSourceSizeH:Float;
	function setTrim (trimmed:Bool, actualWidth:Float, actualHeight:Float, destX:Float, destY:Float, destWidth:Float, destHeight:Float):Void;
	function getRect (?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
}
