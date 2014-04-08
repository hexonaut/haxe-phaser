package phaser.sound;

@:native("Phaser.SoundManager")
extern class SoundManager {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var onSoundDecode:phaser.core.Signal;
	var _codeMuted:Bool;
	var _muted:Bool;
	var _unlockSource:Dynamic;
	var _volume:Float;
	var _sounds:Dynamic;
	var context:Dynamic;
	var usingWebAudio(default, null):Bool;
	var usingAudioTag(default, null):Bool;
	var noAudio:Bool;
	var connectToMaster:Bool;
	var touchLocked:Bool;
	var channels:Float;
	function boot ():Void;
	function unlock ():Void;
	function stopAll ():Void;
	function pauseAll ():Void;
	function resumeAll ():Void;
	function decode (key:String, ?sound:phaser.sound.Sound):Void;
	function update ():Void;
	function add (key:String, ?volume:Float = 1, ?loop:Bool = false, ?connect:Bool = true):phaser.sound.Sound;
	function play (key:String, ?volume:Float = 1, ?loop:Bool = false):phaser.sound.Sound;
	function setMute ():Void;
	function unsetMute ():Void;
	var mute:Bool;
	var volume:Float;
}
