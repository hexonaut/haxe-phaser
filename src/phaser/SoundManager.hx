package phaser;

import haxe.extern.EitherType;

/**
* The Sound Manager is responsible for playing back audio via either the Legacy HTML Audio tag or via Web Audio if the browser supports it.
* Note: On Firefox 25+ on Linux if you have media.gstreamer disabled in about:config then it cannot play back mp3 or m4a files.
* The audio file type and the encoding of those files are extremely important. Not all browsers can play all audio formats.
* There is a good guide to what's supported here: http://hpr.dogphilosophy.net/test/
* 
* If you are reloading a Phaser Game on a page that never properly refreshes (such as in an AngularJS project) then you will quickly run out
* of AudioContext nodes. If this is the case create a global var called PhaserGlobal on the window object before creating the game. The active
* AudioContext will then be saved to window.PhaserGlobal.audioContext when the Phaser game is destroyed, and re-used when it starts again.
* 
* Mobile warning: There are some mobile devices (certain iPad 2 and iPad Mini revisions) that cannot play 48000 Hz audio.
* When they try to play the audio becomes extremely distorted and buzzes, eventually crashing the sound system.
* The solution is to use a lower encoding rate such as 44100 Hz. Sometimes the audio context will
* be created with a sampleRate of 48000. If this happens and audio distorts you should re-create the context.
*/
@:native("Phaser.SoundManager")
extern class SoundManager {

	/**
	* The Sound Manager is responsible for playing back audio via either the Legacy HTML Audio tag or via Web Audio if the browser supports it.
	* Note: On Firefox 25+ on Linux if you have media.gstreamer disabled in about:config then it cannot play back mp3 or m4a files.
	* The audio file type and the encoding of those files are extremely important. Not all browsers can play all audio formats.
	* There is a good guide to what's supported here: http://hpr.dogphilosophy.net/test/
	* 
	* If you are reloading a Phaser Game on a page that never properly refreshes (such as in an AngularJS project) then you will quickly run out
	* of AudioContext nodes. If this is the case create a global var called PhaserGlobal on the window object before creating the game. The active
	* AudioContext will then be saved to window.PhaserGlobal.audioContext when the Phaser game is destroyed, and re-used when it starts again.
	* 
	* Mobile warning: There are some mobile devices (certain iPad 2 and iPad Mini revisions) that cannot play 48000 Hz audio.
	* When they try to play the audio becomes extremely distorted and buzzes, eventually crashing the sound system.
	* The solution is to use a lower encoding rate such as 44100 Hz. Sometimes the audio context will
	* be created with a sampleRate of 48000. If this happens and audio distorts you should re-create the context.
	* 
	* @param game Reference to the current game instance.
	*/
	function new(game:phaser.Game);
	
	/**
	* The number of audio channels to use in playback.
	* Default: 32
	*/
	var channels:Float;
	
	/**
	* Used in conjunction with Sound.externalNode this allows you to stop a Sound node being connected to the SoundManager master gain node.
	* Default: true
	*/
	var connectToMaster:Bool;
	
	/**
	* The AudioContext being used for playback.
	*/
	var context:Dynamic;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* Gets or sets the muted state of the SoundManager. This effects all sounds in the game.
	*/
	var mute:Bool;
	
	/**
	* Set to true to have all sound muted when the Phaser game pauses (such as on loss of focus),
	* or set to false to keep audio playing, regardless of the game pause state. You may need to
	* do this should you wish to control audio muting via external DOM buttons or similar.
	* Default: true
	*/
	var muteOnPause:Bool;
	
	/**
	* True if audio been disabled via the PhaserGlobal (useful if you need to use a 3rd party audio library) or the device doesn't support any audio.
	*/
	var noAudio:Bool;
	
	/**
	* The event dispatched when a sound decodes (typically only for mp3 files)
	*/
	var onSoundDecode:phaser.Signal;
	
	/**
	* This signal is dispatched whenever the global volume changes. The new volume is passed as the only parameter to your callback.
	*/
	var onVolumeChange:phaser.Signal;
	
	/**
	* This signal is dispatched when the SoundManager is globally muted, either directly via game code or as a result of the game pausing.
	*/
	var onMute:phaser.Signal;
	
	/**
	* This signal is dispatched when the SoundManager is globally un-muted, either directly via game code or as a result of the game resuming from a pause.
	*/
	var onUnMute:phaser.Signal;
	
	/**
	* true if the audio system is currently locked awaiting a touch event.
	*/
	var touchLocked:Bool;
	
	/**
	* True the SoundManager and device are both using the Audio tag instead of Web Audio.
	*/
	var usingAudioTag:Bool;
	
	/**
	* True the SoundManager and device are both using Web Audio.
	*/
	var usingWebAudio:Bool;
	
	/**
	* Gets or sets the global volume of the SoundManager, a value between 0 and 1. The value given is clamped to the range 0 to 1.
	*/
	var volume:Float;
	
	/**
	* Adds a new Sound into the SoundManager.
	* 
	* @param key Asset key for the sound.
	* @param volume Default value for the volume. - Default: 1
	* @param loop Whether or not the sound will loop.
	* @param connect Controls if the created Sound object will connect to the master gainNode of the SoundManager when running under WebAudio. - Default: true
	* @return The new sound instance.
	*/
	function add(key:String, ?volume:Float, ?loop:Bool, ?connect:Bool):phaser.Sound;
	
	/**
	* Adds a new AudioSprite into the SoundManager.
	* 
	* @param key Asset key for the sound.
	* @return The new AudioSprite instance.
	*/
	function addSprite(key:String):phaser.AudioSprite;
	
	/**
	* Initialises the sound manager.
	*/
	function boot():Void;
	
	/**
	* Decode a sound by its asset key.
	* 
	* @param key Assets key of the sound to be decoded.
	* @param sound Its buffer will be set to decoded data.
	*/
	function decode(key:String, ?sound:phaser.Sound):Void;
	
	/**
	* Stops all the sounds in the game, then destroys them and finally clears up any callbacks.
	*/
	function destroy():Void;
	
	/**
	* Pauses all the sounds in the game.
	*/
	function pauseAll():Void;
	
	/**
	* Adds a new Sound into the SoundManager and starts it playing.
	* 
	* @param key Asset key for the sound.
	* @param volume Default value for the volume. - Default: 1
	* @param loop Whether or not the sound will loop.
	* @return The new sound instance.
	*/
	function play(key:String, ?volume:Float, ?loop:Bool):phaser.Sound;
	
	/**
	* Removes a Sound from the SoundManager. The removed Sound is destroyed before removal.
	* 
	* @param sound The sound object to remove.
	* @return True if the sound was removed successfully, otherwise false.
	*/
	function remove(sound:phaser.Sound):Bool;
	
	/**
	* Removes all Sounds from the SoundManager that have an asset key matching the given value.
	* The removed Sounds are destroyed before removal.
	* 
	* @param key The key to match when removing sound objects.
	* @return The number of matching sound objects that were removed.
	*/
	function removeByKey(key:String):Float;
	
	/**
	* Resumes every sound in the game.
	*/
	function resumeAll():Void;
	
	/**
	* This method allows you to give the SoundManager a list of Sound files, or keys, and a callback.
	* Once all of the Sound files have finished decoding the callback will be invoked.
	* The amount of time spent decoding depends on the codec used and file size.
	* If all of the files given have already decoded the callback is triggered immediately.
	* 
	* @param files An array containing either Phaser.Sound objects or their key strings as found in the Phaser.Cache.
	* @param callback The callback which will be invoked once all files have finished decoding.
	* @param callbackContext The context in which the callback will run.
	*/
	function setDecodedCallback(files:EitherType<Array<String>, Array<phaser.Sound>>, callback:Dynamic, callbackContext:Dynamic):Void;
	
	/**
	* Sets the Input Manager touch callback to be SoundManager.unlock.
	* Required for iOS audio device unlocking. Mostly just used internally.
	*/
	function setTouchLock():Void;
	
	/**
	* Stops all the sounds in the game.
	*/
	function stopAll():Void;
	
	/**
	* Enables the audio, usually after the first touch.
	* 
	* @return True if the callback should be removed, otherwise false.
	*/
	function unlock():Bool;
	
	/**
	* Updates every sound in the game, checks for audio unlock on mobile and monitors the decoding watch list.
	*/
	function update():Void;
	
}

