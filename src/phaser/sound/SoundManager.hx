package phaser.sound;

@:native("Phaser.SoundManager")
extern class SoundManager {
	
	/**
	 * The Sound Manager is responsible for playing back audio via either the Legacy HTML Audio tag or via Web Audio if the browser supports it.
	 * Note: On Firefox 25+ on Linux if you have media.gstreamer disabled in about:config then it cannot play back mp3 or m4a files.
	 * The audio file type and the encoding of those files are extremely important. Not all browsers can play all audio formats.
	 * There is a good guide to what's supported here: <a href='http://hpr.dogphilosophy.net/test/'>http://hpr.dogphilosophy.net/test/</a>
	 * 
	 * If you are reloading a Phaser Game on a page that never properly refreshes (such as in an AngularJS project) then you will quickly run out
	 * of AudioContext nodes. If this is the case create a global var called PhaserGlobal on the window object before creating the game. The active
	 * AudioContext will then be saved to window.PhaserGlobal.audioContext when the Phaser game is destroyed, and re-used when it starts again.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The event dispatched when a sound decodes (typically only for mp3 files)
	 */
	var onSoundDecode:phaser.core.Signal;
	
	/**
	 * Internal mute tracking var.
	 */
	var _codeMuted:Bool;
	
	/**
	 * Internal mute tracking var.
	 */
	var _muted:Bool;
	
	/**
	 * Internal unlock tracking var.
	 */
	var _unlockSource:Dynamic;
	
	/**
	 * The global audio volume. A value between 0 (silence) and 1 (full volume).
	 */
	var _volume:Float;
	
	/**
	 * An array containing all the sounds
	 */
	var _sounds:Array<Dynamic>;
	
	/**
	 * The AudioContext being used for playback.
	 */
	var context:Dynamic;
	
	/**
	 * true if this sound is being played with Web Audio.
	 */
	var usingWebAudio(default, null):Bool;
	
	/**
	 * true if the sound is being played via the Audio tag.
	 */
	var usingAudioTag(default, null):Bool;
	
	/**
	 * Has audio been disabled via the PhaserGlobal object? Useful if you need to use a 3rd party audio library instead.
	 */
	var noAudio:Bool;
	
	/**
	 * Used in conjunction with Sound.externalNode this allows you to stop a Sound node being connected to the SoundManager master gain node.
	 */
	var connectToMaster:Bool;
	
	/**
	 * true if the audio system is currently locked awaiting a touch event.
	 */
	var touchLocked:Bool;
	
	/**
	 * The number of audio channels to use in playback.
	 */
	var channels:Float;
	
	/**
	 * Initialises the sound manager.
	 */
	function boot ():Void;
	
	/**
	 * Enables the audio, usually after the first touch.
	 */
	function unlock ():Void;
	
	/**
	 * Stops all the sounds in the game.
	 */
	function stopAll ():Void;
	
	/**
	 * Pauses all the sounds in the game.
	 */
	function pauseAll ():Void;
	
	/**
	 * Resumes every sound in the game.
	 */
	function resumeAll ():Void;
	
	/**
	 * Decode a sound by its assets key.
	 */
	function decode (key:String, ?sound:phaser.sound.Sound):Void;
	
	/**
	 * Updates every sound in the game.
	 */
	function update ():Void;
	
	/**
	 * Adds a new Sound into the SoundManager.
	 */
	function add (key:String, ?volume:Float = 1, ?loop:Bool = false, ?connect:Bool = true):phaser.sound.Sound;
	
	/**
	 * Adds a new AudioSprite into the SoundManager.
	 */
	function addSprite (key:String):phaser.sound.AudioSprite;
	
	/**
	 * Removes a Sound from the SoundManager. The removed Sound is destroyed before removal.
	 */
	function remove (sound:phaser.sound.Sound):Bool;
	
	/**
	 * Removes all Sounds from the SoundManager that have an asset key matching the given value.
	 * The removed Sounds are destroyed before removal.
	 */
	function removeByKey (key:String):Float;
	
	/**
	 * Adds a new Sound into the SoundManager and starts it playing.
	 */
	function play (key:String, ?volume:Float = 1, ?loop:Bool = false):phaser.sound.Sound;
	
	/**
	 * Internal mute handler called automatically by the Sound.mute setter.
	 */
	function setMute ():Void;
	
	/**
	 * Internal mute handler called automatically by the Sound.mute setter.
	 */
	function unsetMute ():Void;
	
	/**
	 * Stops all the sounds in the game, then destroys them and finally clears up any callbacks.
	 */
	function destroy ():Void;
	
	/**
	 * @name Phaser.SoundManager#mute
	 */
	var mute:Bool;
	
	/**
	 * @name Phaser.SoundManager#volume
	 */
	var volume:Float;
	
}
