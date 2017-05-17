package pixi;

/**
* The Sprite object is the base for all textured objects that are rendered to the screen
*/
@:native("PIXI.Sprite")
extern class Sprite extends DisplayObjectContainer {

	/**
	* The Sprite object is the base for all textured objects that are rendered to the screen
	* 
	* @param texture The texture for this sprite
	*/
	function new(texture:Texture);
	
	/**
	* The anchor sets the origin point of the texture.
	* The default is 0,0 this means the texture's origin is the top left
	* Setting than anchor to 0.5,0.5 means the textures origin is centered
	* Setting the anchor to 1,1 would mean the textures origin points will be the bottom right corner
	*/
	var anchor:Point;
	
	/**
	* The blend mode to be applied to the sprite. Set to PIXI.blendModes.NORMAL to remove any blend mode.
	* 
	* Warning: You cannot have a blend mode and a filter active on the same Sprite. Doing so will render the sprite invisible.
	* Default: PIXI.blendModes.NORMAL;
	*/
	var blendMode:BlendModes;
	
	/**
	* Controls if this Sprite is processed by the core Phaser game loops and Group loops (except {@link Phaser.Group#update}).
	* Default: true
	*/
	var exists:Bool;
	
	/**
	* The shader that will be used to render this Sprite.
	* Set to null to remove a current shader.
	* Default: null
	*/
	var shader:IPixiShader;
	
	/**
	* The texture that the sprite is using
	*/
	var texture:Texture;
	
	/**
	* The tint applied to the sprite. This is a hex value. A value of 0xFFFFFF will remove any tint effect.
	* Default: 0xFFFFFF
	*/
	var tint:Float;
	
	/**
	* Sets the texture of the sprite. Be warned that this doesn't remove or destroy the previous
	* texture this Sprite was using.
	* 
	* @param texture The PIXI texture that is displayed by the sprite
	* @param destroy Call Texture.destroy on the current texture before replacing it with the new one?
	*/
	function setTexture(texture:Texture, ?destroyBase:Bool):Void;
	
}

