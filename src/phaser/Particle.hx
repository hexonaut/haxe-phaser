package phaser;

/**
* Create a new `Particle` object. Particles are extended Sprites that are emitted by a particle emitter such as Phaser.Particles.Arcade.Emitter.
*/
@:native("Phaser.Particle")
extern class Particle extends phaser.Sprite {

	/**
	* Create a new `Particle` object. Particles are extended Sprites that are emitted by a particle emitter such as Phaser.Particles.Arcade.Emitter.
	* 
	* @param game A reference to the currently running game.
	* @param x The x coordinate (in world space) to position the Particle at.
	* @param y The y coordinate (in world space) to position the Particle at.
	* @param key This is the image or texture used by the Particle during rendering. It can be a string which is a reference to the Cache entry, or an instance of a RenderTexture or PIXI.Texture.
	* @param frame If this Particle is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	*/
	function new(game:phaser.Game, x:Float, y:Float, ?key:Dynamic, ?frame:Dynamic);
	
	/**
	* Called by the Emitter when this particle is emitted. Left empty for you to over-ride as required.
	*/
	function onEmit():Void;
	
	/**
	* Resets the Particle. This places the Particle at the given x/y world coordinates and then
	* sets alive, exists, visible and renderable all to true. Also resets the outOfBounds state and health values.
	* If the Particle has a physics body that too is reset.
	* 
	* @param x The x coordinate (in world space) to position the Particle at.
	* @param y The y coordinate (in world space) to position the Particle at.
	* @param health The health to give the Particle. - Default: 1
	* @return This instance.
	*/
	@:native("reset")
	function Particle_reset(x:Float, y:Float, ?health:Float):phaser.Particle;
	
	/**
	* Called by the Emitter if autoAlpha has been enabled. Passes over the alpha ease data and resets the alpha counter.
	*/
	function setAlphaData(data:Array<Dynamic>):Void;
	
	/**
	* Called by the Emitter if autoScale has been enabled. Passes over the scale ease data and resets the scale counter.
	*/
	function setScaleData(data:Array<Dynamic>):Void;
	
	/**
	* Updates the Particle scale or alpha if autoScale and autoAlpha are set.
	*/
	@:native("update")
	function Particle_update():Void;
	
}

