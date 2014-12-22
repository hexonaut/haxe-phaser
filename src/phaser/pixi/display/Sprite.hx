package phaser.pixi.display;

@:native("PIXI.Sprite")
extern class Sprite extends phaser.pixi.display.DisplayObjectContainer {
	
	/**
	 * The anchor sets the origin point of the texture.
	 * The default is 0,0 this means the texture's origin is the top left
	 * Setting than anchor to 0.5,0.5 means the textures origin is centered
	 * Setting the anchor to 1,1 would mean the textures origin points will be the bottom right corner
	 */
	var anchor:Dynamic;
	
	/**
	 * The texture that the sprite is using
	 */
	var texture:Dynamic;
	
	/**
	 * The tint applied to the sprite. This is a hex value. A value of 0xFFFFFF will remove any tint effect.
	 */
	var tint:Float;
	
	/**
	 * The blend mode to be applied to the sprite. Set to PIXI.blendModes.NORMAL to remove any blend mode.
	 */
	var blendMode:Float;
	
	/**
	 * The shader that will be used to render the texture to the stage. Set to null to remove a current shader.
	 */
	var shader:Dynamic;
	
}
