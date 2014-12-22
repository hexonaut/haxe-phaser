package phaser.pixi.loaders;

@:native("PIXI.AtlasLoader")
extern class AtlasLoader {
	
	/**
	 * The atlas file loader is used to load in Texture Atlas data and parse it. When loaded this class will dispatch a 'loaded' event. If loading fails this class will dispatch an 'error' event.
	 * 
	 * To generate the data you can use <a href='http://www.codeandweb.com/texturepacker'>http://www.codeandweb.com/texturepacker</a> and publish in the 'JSON' format.
	 * 
	 * It is highly recommended to use texture atlases (also know as 'sprite sheets') as it allowed sprites to be batched and drawn together for highly increased rendering speed.
	 * Once the data has been loaded the frames are stored in the PIXI texture cache and can be accessed though PIXI.Texture.fromFrameId() and PIXI.Sprite.fromFrameId()
	 */
	function new (String:Dynamic, Boolean:Dynamic);
	
}
