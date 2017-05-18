package phaser.plugin;

/**
* A Sample Plugin demonstrating how to hook into the Phaser plugin system.
*/
@:native("Phaser.Plugin.SamplePlugin")
extern class SamplePlugin extends phaser.Plugin {

	/**
	* A Sample Plugin demonstrating how to hook into the Phaser plugin system.
	*/
	function new(game:phaser.Game, parent:pixi.DisplayObject);
	
	/**
	* Add a Sprite reference to this Plugin.
	* All this plugin does is move the Sprite across the screen slowly.
	*/
	function addSprite(sprite:phaser.Sprite):Void;
	
	/**
	* This is run when the plugins update during the core game loop.
	*/
	@:native("update")
	function SamplePlugin_update():Void;
	
}

