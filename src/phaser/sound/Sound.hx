package phaser.sound;

@:native("Phaser.Sound")
extern class Sound {
	
	/**
	 * The Sound class constructor.
	 */
	function new (game:phaser.core.Game, key:String, ?volume:Float = 1, ?loop:Bool = false);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Name of the sound.
	 */
	var name:String;
	
	/**
	 * Asset key for the sound.
	 */
	var key:String;
	
	/**
	 * Whether or not the sound will loop.
	 */
	var loop:Bool;
	
	/**
	 * The global audio volume. A value between 0 (silence) and 1 (full volume).
	 */
	var _volume:Float;
	
	/**
	 * The sound markers.
	 */
	var markers:Dynamic;
	
	/**
	 * Reference to the AudioContext instance.
	 */
	var context:Dynamic;
	
	/**
	 * Decoded data buffer / Audio tag.
	 */
	var _buffer:Dynamic;
	
	/**
	 * Boolean indicating whether the sound is muted or not.
	 */
	var _muted:Bool;
	
	/**
	 * Boolean indicating whether the sound should start automatically.
	 */
	var autoplay:Bool;
	
	/**
	 * The total duration of the sound, in milliseconds
	 */
	var totalDuration:Float;
	
	/**
	 * The time the Sound starts at (typically 0 unless starting from a marker)
	 */
	var startTime:Float;
	
	/**
	 * The current time the sound is at.
	 */
	var currentTime:Float;
	
	/**
	 * The duration of the sound.
	 */
	var duration:Float;
	
	/**
	 * The time the sound stopped.
	 */
	var stopTime:Float;
	
	/**
	 * true if the sound is paused, otherwise false.
	 */
	var paused:Bool;
	
	/**
	 * The position the sound had reached when it was paused.
	 */
	var pausedPosition:Float;
	
	/**
	 * The game time at which the sound was paused.
	 */
	var pausedTime:Float;
	
	/**
	 * true if the sound is currently playing, otherwise false.
	 */
	var isPlaying:Bool;
	
	/**
	 * The string ID of the currently playing marker, if any.
	 */
	var currentMarker:String;
	
	/**
	 * true if the sound file is pending playback
	 */
	var pendingPlayback(default, null):Bool;
	
	/**
	 * true if this sound is being played with Web Audio.
	 */
	var usingWebAudio(default, null):Bool;
	
	/**
	 * true if the sound is being played via the Audio tag.
	 */
	var usingAudioTag:Bool;
	
	/**
	 * If defined this Sound won't connect to the SoundManager master gain node, but will instead connect to externalNode.input.
	 */
	var externalNode:Dynamic;
	
	/**
	 * The onDecoded event is dispatched when the sound has finished decoding (typically for mp3 files)
	 */
	var onDecoded:phaser.core.Signal;
	
	/**
	 * The onPlay event is dispatched each time this sound is played.
	 */
	var onPlay:phaser.core.Signal;
	
	/**
	 * The onPause event is dispatched when this sound is paused.
	 */
	var onPause:phaser.core.Signal;
	
	/**
	 * The onResume event is dispatched when this sound is resumed from a paused state.
	 */
	var onResume:phaser.core.Signal;
	
	/**
	 * The onLoop event is dispatched when this sound loops during playback.
	 */
	var onLoop:phaser.core.Signal;
	
	/**
	 * The onStop event is dispatched when this sound stops playback.
	 */
	var onStop:phaser.core.Signal;
	
	/**
	 * The onMouse event is dispatched when this sound is muted.
	 */
	var onMute:phaser.core.Signal;
	
	/**
	 * The onMarkerComplete event is dispatched when a marker within this sound completes playback.
	 */
	var onMarkerComplete:phaser.core.Signal;
	
	/**
	 * Called automatically when this sound is unlocked.
	 */
	function soundHasUnlocked (key:String):Void;
	
	/**
	 * Description.
	 */
	function addMarker (name:String, start:Dynamic, stop:Dynamic, volume:Dynamic, loop:Dynamic):Void;
	
	/**
	 * Removes a marker from the sound.
	 */
	function removeMarker (name:String):Void;
	
	/**
	 * Called automatically by Phaser.SoundManager.
	 */
	function update ():Void;
	
	/**
	 * Play this sound, or a marked section of it.
	 */
	function play (?marker:String = '', ?position:Float = 0, ?volume:Float = 1, ?loop:Bool = false, ?forceRestart:Bool = true):phaser.sound.Sound;
	
	/**
	 * Restart the sound, or a marked section of it.
	 */
	function restart (?marker:String = '', ?position:Float = 0, ?volume:Float = 1, ?loop:Bool = false):Void;
	
	/**
	 * Pauses the sound
	 */
	function pause ():Void;
	
	/**
	 * Resumes the sound
	 */
	function resume ():Void;
	
	/**
	 * Stop playing this sound.
	 */
	function stop ():Void;
	
	/**
	 * @name Phaser.Sound#isDecoding
	 */
	var isDecoding(default, null):Bool;
	
	/**
	 * @name Phaser.Sound#isDecoded
	 */
	var isDecoded(default, null):Bool;
	
	/**
	 * @name Phaser.Sound#mute
	 */
	var mute:Bool;
	
	/**
	 * @name Phaser.Sound#volume
	 */
	var volume(default, null):Float;
	
}
