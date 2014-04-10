package phaser.particles.arcade;

@:native("Phaser.Particles.Arcade.Emitter")
extern class Emitter extends phaser.core.Group {
	
	/**
	 * The total number of particles in this emitter..
	 */
	var maxParticles:Float;
	
	/**
	 * The width of the emitter.  Particles can be randomly generated from anywhere within this box.
	 */
	var width:Float;
	
	/**
	 * The height of the emitter.  Particles can be randomly generated from anywhere within this box.
	 */
	var height:Float;
	
	/**
	 * The minimum possible velocity of a particle.
	 */
	var minParticleSpeed:phaser.geom.Point;
	
	/**
	 * The maximum possible velocity of a particle.
	 */
	var maxParticleSpeed:phaser.geom.Point;
	
	/**
	 * The minimum possible scale of a particle.
	 */
	var minParticleScale:Float;
	
	/**
	 * The maximum possible scale of a particle.
	 */
	var maxParticleScale:Float;
	
	/**
	 * The minimum possible angular velocity of a particle.
	 */
	var minRotation:Float;
	
	/**
	 * The maximum possible angular velocity of a particle.
	 */
	var maxRotation:Float;
	
	/**
	 * Sets the body.gravity.y of each particle sprite to this value on launch.
	 */
	var gravity:Float;
	
	/**
	 * For emitting your own particle class types. They must extend Phaser.Sprite.
	 */
	var particleClass:Dynamic;
	
	/**
	 * The X and Y drag component of particles launched from the emitter.
	 */
	var particleDrag:phaser.geom.Point;
	
	/**
	 * The angular drag component of particles launched from the emitter if they are rotating.
	 */
	var angularDrag:Float;
	
	/**
	 * How often a particle is emitted in ms (if emitter is started with Explode === false).
	 */
	var frequency:Bool;
	
	/**
	 * How long each particle lives once it is emitted in ms. Default is 2 seconds. Set lifespan to 'zero' for particles to live forever.
	 */
	var lifespan:Float;
	
	/**
	 * How much each particle should bounce on each axis.  1 = full bounce, 0 = no bounce.
	 */
	var bounce:phaser.geom.Point;
	
	/**
	 * Internal helper for deciding how many particles to launch.
	 */
	var _quantity:Float;
	
	/**
	 * Internal helper for deciding when to launch particles or kill them.
	 */
	var _timer:Float;
	
	/**
	 * Internal counter for figuring out how many particles to launch.
	 */
	var _counter:Float;
	
	/**
	 * Internal helper for the style of particle emission (all at once, or one at a time).
	 */
	var _explode:Bool;
	
	/**
	 * Internal helper for the particle frame.
	 */
	var _frames:Dynamic;
	
	/**
	 * Determines whether the emitter is currently emitting particles. It is totally safe to directly toggle this.
	 */
	var on:Bool;
	
	/**
	 * The point the particles are emitted from.
	 * Emitter.x and Emitter.y control the containers location, which updates all current particles
	 * Emitter.emitX and Emitter.emitY control the emission location relative to the x/y position.
	 */
	var emitX:Bool;
	
	/**
	 * The point the particles are emitted from.
	 * Emitter.x and Emitter.y control the containers location, which updates all current particles
	 * Emitter.emitX and Emitter.emitY control the emission location relative to the x/y position.
	 */
	var emitY:Bool;
	
	/**
	 * This function generates a new array of particle sprites to attach to the emitter.
	 */
	@:overload(function (keys:Array<Dynamic>, frames:Array<Dynamic>, quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter {})
	@:overload(function (keys:String, frames:Array<Dynamic>, quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter {})
	@:overload(function (keys:Array<Dynamic>, frames:Float, quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter {})
	function makeParticles (keys:String, frames:Float, quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter;
	
	/**
	 * Call this function to turn off all the particles and the emitter.
	 */
	function kill ():Void;
	
	/**
	 * Handy for bringing game objects "back to life". Just sets alive and exists back to true.
	 */
	function revive ():Void;
	
	/**
	 * Call this function to start emitting particles.
	 */
	function start (?explode:Bool = true, ?lifespan:Float = 0, ?frequency:Float = 250, ?quantity:Float = 0):Void;
	
	/**
	 * This function can be used both internally and externally to emit the next particle.
	 */
	function emitParticle ():Void;
	
	/**
	 * A more compact way of setting the width and height of the emitter.
	 */
	function setSize (width:Float, height:Float):Void;
	
	/**
	 * A more compact way of setting the X velocity range of the emitter.
	 */
	function setXSpeed (?min:Float = 0, ?max:Float = 0):Void;
	
	/**
	 * A more compact way of setting the Y velocity range of the emitter.
	 */
	function setYSpeed (?min:Float = 0, ?max:Float = 0):Void;
	
	/**
	 * A more compact way of setting the angular velocity constraints of the emitter.
	 */
	function setRotation (?min:Float = 0, ?max:Float = 0):Void;
	
	/**
	 * Change the emitters center to match the center of any object with a center property, such as a Sprite.
	 */
	@:overload(function (object:Dynamic):Void {})
	function at (object:phaser.gameobjects.Sprite):Void;
	
	/**
	 * @name Phaser.Particles.Arcade.Emitter#left
	 */
	var left(default, null):Float;
	
	/**
	 * @name Phaser.Particles.Arcade.Emitter#right
	 */
	var right(default, null):Float;
	
	/**
	 * @name Phaser.Particles.Arcade.Emitter#top
	 */
	var top(default, null):Float;
	
	/**
	 * @name Phaser.Particles.Arcade.Emitter#bottom
	 */
	var bottom(default, null):Float;
	
}
