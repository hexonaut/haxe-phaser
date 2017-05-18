package phaser;

/**
* The Sound class constructor.
*/
@:native("Phaser.Sound")
extern class Sound {

	/**
	* The Sound class constructor.
	* 
	* @param game Reference to the current game instance.
	* @param key Asset key for the sound.
	* @param volume Default value for the volume, between 0 and 1. - Default: 1
	* @param loop Whether or not the sound will loop.
	*/
	function new(game:phaser.Game, key:String, ?volume:Float, ?loop:Bool, ?connect:Bool);
	
	/**
	* Boolean indicating whether the sound should start automatically.
	*/
	var autoplay:Bool;
	
	/**
	* This will allow you to have multiple instances of this Sound playing at once. This is only useful when running under Web Audio, and we recommend you implement a local pooling system to not flood the sound channels.
	*/
	var allowMultiple:Bool;
	
	/**
	* Reference to the AudioContext instance.
	*/
	var context:Dynamic;
	
	/**
	* The string ID of the currently playing marker, if any.
	*/
	var currentMarker:String;
	
	/**
	* The current time of sound playback in ms.
	*/
	var currentTime:Float;
	
	/**
	* Destroys this sound and all associated events and removes it from the SoundManager.
	* 
	* @param remove If true this Sound is automatically removed from the SoundManager. - Default: true
	*/
	@:overload(function():Void{})
	function destroy(?remove:Bool):Void;
	
	/**
	* The duration of the current sound marker in seconds.
	*/
	var duration:Float;
	
	/**
	* The duration of the current sound marker in ms.
	*/
	var durationMS:Float;
	
	/**
	* If defined this Sound won't connect to the SoundManager master gain node, but will instead connect to externalNode.
	*/
	var externalNode:Dynamic;
	
	/**
	* The tween that fades the audio, set via Sound.fadeIn and Sound.fadeOut.
	*/
	var fadeTween:phaser.Tween;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* The gain node in a Web Audio system.
	*/
	var gainNode:Dynamic;
	
	/**
	* Returns true if the sound file has decoded.
	*/
	var isDecoded:Bool;
	
	/**
	* Returns true if the sound file is still decoding.
	*/
	var isDecoding:Bool;
	
	/**
	* true if the sound is currently playing, otherwise false.
	*/
	var isPlaying:Bool;
	
	/**
	* Asset key for the sound.
	*/
	var key:String;
	
	/**
	* Whether or not the sound or current sound marker will loop.
	*/
	var loop:Bool;
	
	/**
	* The sound markers.
	*/
	var markers:Dynamic;
	
	/**
	* The master gain node in a Web Audio system.
	*/
	var masterGainNode:Dynamic;
	
	/**
	* Gets or sets the muted state of this sound.
	*/
	var mute:Bool;
	
	/**
	* Name of the sound.
	*/
	var name:String;
	
	/**
	* The onDecoded event is dispatched when the sound has finished decoding (typically for mp3 files)
	*/
	var onDecoded:phaser.Signal;
	
	var onEndedHandler:Void->Void;
	
	/**
	* The onFadeComplete event is dispatched when this sound finishes fading either in or out.
	*/
	var onFadeComplete:phaser.Signal;
	
	/**
	* The onLoop event is dispatched when this sound loops during playback.
	*/
	var onLoop:phaser.Signal;
	
	/**
	* The onMarkerComplete event is dispatched when a marker within this sound completes playback.
	*/
	var onMarkerComplete:phaser.Signal;
	
	/**
	* The onMute event is dispatched when this sound is muted.
	*/
	var onMute:phaser.Signal;
	
	/**
	* The onPause event is dispatched when this sound is paused.
	*/
	var onPause:phaser.Signal;
	
	/**
	* The onPlay event is dispatched each time this sound is played.
	*/
	var onPlay:phaser.Signal;
	
	/**
	* The onResume event is dispatched when this sound is resumed from a paused state.
	*/
	var onResume:phaser.Signal;
	
	/**
	* The onStop event is dispatched when this sound stops playback.
	*/
	var onStop:phaser.Signal;
	
	/**
	* true if the sound is paused, otherwise false.
	*/
	var paused:Bool;
	
	/**
	* The position the sound had reached when it was paused in ms.
	*/
	var pausedPosition:Float;
	
	/**
	* The game time (ms) at which the sound was paused.
	*/
	var pausedTime:Float;
	
	/**
	* true if the sound file is pending playback
	*/
	var pendingPlayback:Bool;
	
	/**
	* The position of the current sound marker in ms.
	*/
	var position:Float;
	
	/**
	* The time the sound starts at in ms (typically 0 unless starting from a marker).
	*/
	var startTime:Float;
	
	/**
	* The time the sound stopped in ms.
	*/
	var stopTime:Float;
	
	/**
	* The total duration of the sound in seconds.
	*/
	var totalDuration:Float;
	
	/**
	* true if the sound is being played via the Audio tag.
	*/
	var usingAudioTag:Bool;
	
	/**
	* true if this sound is being played with Web Audio.
	*/
	var usingWebAudio:Bool;
	
	/**
	* Gets or sets the volume of this sound, a value between 0 and 1. The value given is clamped to the range 0 to 1.
	*/
	var volume:Float;
	
	/**
	* Adds a marker into the current Sound. A marker is represented by a unique key and a start time and duration.
	* This allows you to bundle multiple sounds together into a single audio file and use markers to jump between them for playback.
	* 
	* @param name A unique name for this marker, i.e. 'explosion', 'gunshot', etc.
	* @param start The start point of this marker in the audio file, given in seconds. 2.5 = 2500ms, 0.5 = 500ms, etc.
	* @param duration The duration of the marker in seconds. 2.5 = 2500ms, 0.5 = 500ms, etc. - Default: 1
	* @param volume The volume the sound will play back at, between 0 (silent) and 1 (full volume). - Default: 1
	* @param loop Sets if the sound will loop or not.
	*/
	function addMarker(name:String, start:Float, duration:Float, ?volume:Float, ?loop:Bool):Void;
	
	/**
	* Starts this sound playing (or restarts it if already doing so) and sets the volume to zero.
	* Then increases the volume from 0 to 1 over the duration specified.
	* 
	* At the end of the fade Sound.onFadeComplete is dispatched with this Sound object as the first parameter,
	* and the final volume (1) as the second parameter.
	* 
	* @param duration The time in milliseconds over which the Sound should fade in. - Default: 1000
	* @param loop Should the Sound be set to loop? Note that this doesn't cause the fade to repeat.
	* @param marker The marker to start at; defaults to the current (last played) marker. To start playing from the beginning specify specify a marker of `''`. - Default: (current marker)
	*/
	function fadeIn(?duration:Float, ?loop:Bool, ?marker:String):Void;
	
	/**
	* Decreases the volume of this Sound from its current value to 0 over the duration specified.
	* At the end of the fade Sound.onFadeComplete is dispatched with this Sound object as the first parameter,
	* and the final volume (0) as the second parameter.
	* 
	* @param duration The time in milliseconds over which the Sound should fade out. - Default: 1000
	*/
	function fadeOut(?duration:Float):Void;
	
	/**
	* Fades the volume of this Sound from its current value to the given volume over the duration specified.
	* At the end of the fade Sound.onFadeComplete is dispatched with this Sound object as the first parameter,
	* and the final volume (volume) as the second parameter.
	* 
	* @param duration The time in milliseconds during which the Sound should fade out. - Default: 1000
	* @param volume The volume which the Sound should fade to. This is a value between 0 and 1.
	*/
	function fadeTo(?duration:Float, ?volume:Float):Void;
	
	/**
	* Loops this entire sound. If you need to loop a section of it then use Sound.play and the marker and loop parameters.
	* 
	* @param volume Volume of the sound you want to play. If none is given it will use the volume given to the Sound when it was created (which defaults to 1 if none was specified). - Default: 1
	* @return This sound instance.
	*/
	function loopFull(?volume:Float):phaser.Sound;
	
	/**
	* Pauses the sound.
	*/
	function pause():Void;
	
	/**
	* Play this sound, or a marked section of it.
	* 
	* @param marker If you want to play a marker then give the key here, otherwise leave blank to play the full sound. - Default: ''
	* @param position The starting position to play the sound from - this is ignored if you provide a marker.
	* @param volume Volume of the sound you want to play. If none is given it will use the volume given to the Sound when it was created (which defaults to 1 if none was specified). - Default: 1
	* @param loop Loop when finished playing? If not using a marker / audio sprite the looping will be done via the WebAudio loop property, otherwise it's time based.
	* @param forceRestart If the sound is already playing you can set forceRestart to restart it from the beginning. - Default: true
	* @return This sound instance.
	*/
	function play(?marker:String, ?position:Float, ?volume:Float, ?loop:Bool, ?forceRestart:Bool):phaser.Sound;
	
	/**
	* Removes a marker from the sound.
	* 
	* @param name The key of the marker to remove.
	*/
	function removeMarker(name:String):Void;
	
	/**
	* Restart the sound, or a marked section of it.
	* 
	* @param marker If you want to play a marker then give the key here, otherwise leave blank to play the full sound. - Default: ''
	* @param position The starting position to play the sound from - this is ignored if you provide a marker.
	* @param volume Volume of the sound you want to play. - Default: 1
	* @param loop Loop when it finished playing?
	*/
	function restart(marker:String, position:Float, ?volume:Float, ?loop:Bool):Void;
	
	/**
	* Resumes the sound.
	*/
	function resume():Void;
	
	/**
	* Called automatically when this sound is unlocked.
	* 
	* @param key The Phaser.Cache key of the sound file to check for decoding.
	*/
	function soundHasUnlocked(key:String):Void;
	
	/**
	* Stop playing this sound.
	*/
	function stop():Void;
	
	/**
	* Called automatically by Phaser.SoundManager.
	*/
	function update():Void;
	
	/**
	* if true when you play this sound it will always start from the beginning.
	*/
	@:native("override")
	var _override:Bool;
	
}

