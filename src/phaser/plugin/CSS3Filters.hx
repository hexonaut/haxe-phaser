package phaser.plugin;

/**
* Phaser - Display - CSS3Filters
* 
* Allows for easy addition and modification of CSS3 Filters on DOM objects (typically the Game.Stage.canvas).
*/
@:native("Phaser.Plugin.CSS3Filters")
extern class CSS3Filters extends phaser.Plugin {

	/**
	* Phaser - Display - CSS3Filters
	* 
	* Allows for easy addition and modification of CSS3 Filters on DOM objects (typically the Game.Stage.canvas).
	*/
	function new(parent:pixi.DisplayObject);
	
	var blur:Float;
	
	var brightness:Float;
	
	var contrast:Float;
	
	var grayscale:Float;
	
	var hueRotate:Float;
	
	var invert:Float;
	
	var opacity:Float;
	
	var saturate:Float;
	
	var sepia:Float;
	
}

