package phaser;

/**
* Audio Sprites are a combination of audio files and a JSON configuration.
* The JSON follows the format of that created by https://github.com/tonistiigi/audiosprite
*/
@:native("Phaser.AudioSprite")
extern class AudioSprite {

	/**
	* Audio Sprites are a combination of audio files and a JSON configuration.
	* The JSON follows the format of that created by https://github.com/tonistiigi/audiosprite
	* 
	* @param game Reference to the current game instance.
	* @param key Asset key for the sound.
	*/
	function new(game:phaser.Game, key:String);
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* Asset key for the Audio Sprite.
	*/
	var key:String;
	
	/**
	* JSON audio atlas object.
	*/
	var config:Dynamic;
	
	/**
	* If a sound is set to auto play, this holds the marker key of it.
	*/
	var autoplayKey:String;
	
	/**
	* Is a sound set to autoplay or not?
	*/
	var autoplay:Bool;
	
	/**
	* An object containing the Phaser.Sound objects for the Audio Sprite.
	*/
	var sounds:Dynamic;
	
	/**
	* Get a sound with the given name.
	* 
	* @param marker The name of sound to get.
	* @return The sound instance.
	*/
	function get(marker:String):phaser.Sound;
	
	/**
	* Play a sound with the given name.
	* 
	* @param marker The name of sound to play
	* @param volume Volume of the sound you want to play. If none is given it will use the volume given to the Sound when it was created (which defaults to 1 if none was specified). - Default: 1
	* @return This sound instance.
	*/
	function play(marker:String, ?volume:Float):phaser.Sound;
	
	/**
	* Stop a sound with the given name.
	* 
	* @param marker The name of sound to stop. If none is given it will stop all sounds in the audio sprite. - Default: ''
	*/
	function stop(marker:String):phaser.Sound;
	
}

