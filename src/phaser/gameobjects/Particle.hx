package phaser.gameobjects;

@:native("Phaser.Particle")
extern class Particle extends phaser.gameobjects.Sprite {
	
	/**
	 * If this Particle automatically scales this is set to true by Particle.setScaleData.
	 */
	var autoScale:Bool;
	
	/**
	 * A reference to the scaleData array owned by the Emitter that emitted this Particle.
	 */
	var scaleData:Array<Dynamic>;
	
	/**
	 * Internal cache var for tracking auto scale.
	 */
	var _s:Float;
	
	/**
	 * If this Particle automatically changes alpha this is set to true by Particle.setAlphaData.
	 */
	var autoAlpha:Bool;
	
	/**
	 * A reference to the alphaData array owned by the Emitter that emitted this Particle.
	 */
	var alphaData:Array<Dynamic>;
	
	/**
	 * Internal cache var for tracking auto alpha.
	 */
	var _a:Float;
	
	/**
	 * Updates the Particle scale or alpha if autoScale and autoAlpha are set.
	 */
	function update ():Void;
	
	/**
	 * Called by the Emitter when this particle is emitted. Left empty for you to over-ride as required.
	 */
	function onEmit ():Void;
	
	/**
	 * Called by the Emitter if autoAlpha has been enabled. Passes over the alpha ease data and resets the alpha counter.
	 */
	function setAlphaData ():Void;
	
	/**
	 * Called by the Emitter if autoScale has been enabled. Passes over the scale ease data and resets the scale counter.
	 */
	function setScaleData ():Void;
	
	/**
	 * Resets the Particle. This places the Particle at the given x/y world coordinates and then
	 * sets alive, exists, visible and renderable all to true. Also resets the outOfBounds state and health values.
	 * If the Particle has a physics body that too is reset.
	 */
	function reset (x:Float, y:Float, ?health:Float = 1):phaser.gameobjects.Particle;
	
}
