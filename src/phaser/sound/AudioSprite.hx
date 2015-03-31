package phaser.sound;

@:native("Phaser.AudioSprite")
extern class AudioSprite {
	
	/**
	 * Audio Sprites are a combination of audio files and a JSON configuration.
	 * The JSON follows the format of that created by <a href='https://github.com/tonistiigi/audiosprite'>https://github.com/tonistiigi/audiosprite</a>
	 */
	function new (game:phaser.core.Game, key:String);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
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
	 * Play a sound with the given name.
	 */
	function play (?marker:String, ?volume:Float = 1):phaser.sound.Sound;
	
	/**
	 * Stop a sound with the given name.
	 */
	function stop (?marker:String = ''):Void;
	
	/**
	 * Get a sound with the given name.
	 */
	function get (marker:String):phaser.sound.Sound;
	
}
