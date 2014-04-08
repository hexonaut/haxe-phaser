package phaser.animation;

@:native("Phaser.Animation")
extern class Animation {
	function new (game:phaser.core.Game, parent:phaser.gameobjects.Sprite, name:String, frameData:phaser.animation.FrameData, frames:Dynamic, delay:Float, loop:Bool);
	var game:phaser.core.Game;
	var _parent:phaser.gameobjects.Sprite;
	var _frameData:phaser.animation.FrameData;
	var name:String;
	var _frames:Dynamic;
	var delay:Float;
	var loop:Bool;
	var loopCount:Float;
	var killOnComplete:Bool;
	var isFinished:Bool;
	var isPlaying:Bool;
	var isPaused:Bool;
	var _pauseStartTime:Bool;
	var _frameIndex:Float;
	var _frameDiff:Float;
	var _frameSkip:Float;
	var currentFrame:phaser.animation.Frame;
	var onStart:phaser.core.Signal;
	var onComplete:phaser.core.Signal;
	var onLoop:phaser.core.Signal;
	function play (?frameRate:Float, ?loop:Bool = false, ?killOnComplete:Bool = false):phaser.animation.Animation;
	function restart ():Void;
	function stop (?resetFrame:Bool = false, ?dispatchComplete:Bool = false):Void;
	function onPause ():Void;
	function onResume ():Void;
	function update ():Void;
	function destroy ():Void;
	function complete ():Void;
	var paused:Bool;
	var frameTotal(default, null):Float;
	var frame:Float;
	var speed:Float;
	function generateFrameNames (prefix:String, start:Float, stop:Float, ?suffix:String = '', ?zeroPad:Float = 0):Void;
}
