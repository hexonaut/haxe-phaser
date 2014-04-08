package phaser.animation;

@:native("Phaser.AnimationManager")
extern class AnimationManager {
	function new (sprite:phaser.gameobjects.Sprite);
	var sprite:phaser.gameobjects.Sprite;
	var game:phaser.core.Game;
	var currentFrame:phaser.animation.Frame;
	var updateIfVisible:Bool;
	var isLoaded:Bool;
	var _frameData:phaser.animation.FrameData;
	var _anims:Dynamic;
	var _outputFrames:Dynamic;
	function loadFrameData (frameData:phaser.animation.FrameData):Void;
	function add (name:String, ?frames:Array<Dynamic>, ?frameRate:Float = 60, ?loop:Bool = false, ?useNumericIndex:Bool = true):phaser.animation.Animation;
	function validateFrames (frames:Array<Dynamic>, ?useNumericIndex:Bool = true):Bool;
	function play (name:String, ?frameRate:Float, ?loop:Bool = false, ?killOnComplete:Bool = false):phaser.animation.Animation;
	function stop (?name:String, ?resetFrame:Bool = false):Void;
	function update ():Bool;
	function getAnimation (name:String):phaser.animation.Animation;
	function refreshFrame ():Void;
	function destroy ():Void;
	var frameData(default, null):phaser.animation.FrameData;
	var frameTotal(default, null):Float;
	var paused:Bool;
	var frame:Float;
	var frameName:String;
}
