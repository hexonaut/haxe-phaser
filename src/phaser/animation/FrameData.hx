package phaser.animation;

@:native("Phaser.FrameData")
extern class FrameData {
	function new ();
	var _frames:Array<Dynamic>;
	var _frameNames:Array<Dynamic>;
	function addFrame (frame:phaser.animation.Frame):phaser.animation.Frame;
	function getFrame (index:Float):phaser.animation.Frame;
	function getFrameByName (name:String):phaser.animation.Frame;
	function checkFrameName (name:String):Bool;
	function getFrameRange (start:Float, end:Float, ?output:Array<Dynamic>):Array<Dynamic>;
	function getFrames (frames:Array<Dynamic>, ?useNumericIndex:Bool = true, ?output:Array<Dynamic>):Array<Dynamic>;
	function getFrameIndexes (frames:Array<Dynamic>, ?useNumericIndex:Bool = true, ?output:Array<Dynamic>):Array<Dynamic>;
	var total(default, null):Float;
}
