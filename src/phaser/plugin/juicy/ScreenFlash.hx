package phaser.plugin.juicy;

/**
* Creates a new `Juicy.ScreenFlash` object.
*/
@:native("Phaser.Plugin.Juicy.ScreenFlash")
extern class ScreenFlash {

	/**
	* Creates a new `Juicy.ScreenFlash` object.
	* 
	* @param game Current game instance.
	* @param color The color to flash the screen. - Default: 'white'
	*/
	function new(game:phaser.Game, ?color:String);
	
	/**
	* Flashes the screen
	* 
	* @param maxAlpha The maximum alpha to flash the screen to - Default: 1
	* @param duration The duration of the flash in milliseconds - Default: 100
	*/
	function flash(?maxAlpha:Float, ?duration:Float):Void;
	
}

