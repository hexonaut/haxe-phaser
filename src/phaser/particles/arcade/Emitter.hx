package phaser.particles.arcade;

@:native("Phaser.Particles.Arcade.Emitter")
extern class Emitter extends phaser.core.Group {
	
	/**
	 * The total number of particles in this emitter.
	 */
	var maxParticles:Float;
	
	/**
	 * The area of the emitter. Particles can be randomly generated from anywhere within this rectangle.
	 */
	var area:phaser.geom.Rectangle;
	
	/**
	 * The minimum possible velocity of a particle.
	 */
	var minParticleSpeed:phaser.geom.Point;
	
	/**
	 * The maximum possible velocity of a particle.
	 */
	var maxParticleSpeed:phaser.geom.Point;
	
	/**
	 * The minimum possible scale of a particle. This is applied to the X and Y axis. If you need to control each axis see minParticleScaleX.
	 */
	var minParticleScale:Float;
	
	/**
	 * The maximum possible scale of a particle. This is applied to the X and Y axis. If you need to control each axis see maxParticleScaleX.
	 */
	var maxParticleScale:Float;
	
	/**
	 * An array of the calculated scale easing data applied to particles with scaleRates > 0.
	 */
	var scaleData:Array<Dynamic>;
	
	/**
	 * The minimum possible angular velocity of a particle.
	 */
	var minRotation:Float;
	
	/**
	 * The maximum possible angular velocity of a particle.
	 */
	var maxRotation:Float;
	
	/**
	 * The minimum possible alpha value of a particle.
	 */
	var minParticleAlpha:Float;
	
	/**
	 * The maximum possible alpha value of a particle.
	 */
	var maxParticleAlpha:Float;
	
	/**
	 * An array of the calculated alpha easing data applied to particles with alphaRates > 0.
	 */
	var alphaData:Array<Dynamic>;
	
	/**
	 * Sets the body.gravity.y of each particle sprite to this value on launch.
	 */
	var gravity:Float;
	
	/**
	 * For emitting your own particle class types. They must extend Phaser.Particle.
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
	var frequency:Float;
	
	/**
	 * How long each particle lives once it is emitted in ms. Default is 2 seconds. Set lifespan to 'zero' for particles to live forever.
	 */
	var lifespan:Float;
	
	/**
	 * How much each particle should bounce on each axis. 1 = full bounce, 0 = no bounce.
	 */
	var bounce:phaser.geom.Point;
	
	/**
	 * Determines whether the emitter is currently emitting particles. It is totally safe to directly toggle this.
	 */
	var on:Bool;
	
	/**
	 * When a particle is created its anchor will be set to match this Point object (defaults to x/y: 0.5 to aid in rotation)
	 */
	var particleAnchor:phaser.geom.Point;
	
	/**
	 * The blendMode as set on the particle when emitted from the Emitter. Defaults to NORMAL. Needs browser capable of supporting canvas blend-modes (most not available in WebGL)
	 */
	var blendMode:Float;
	
	/**
	 * The point the particles are emitted from.
	 * Emitter.x and Emitter.y control the containers location, which updates all current particles
	 * Emitter.emitX and Emitter.emitY control the emission location relative to the x/y position.
	 */
	var emitX:Float;
	
	/**
	 * The point the particles are emitted from.
	 * Emitter.x and Emitter.y control the containers location, which updates all current particles
	 * Emitter.emitX and Emitter.emitY control the emission location relative to the x/y position.
	 */
	var emitY:Float;
	
	/**
	 * When a new Particle is emitted this controls if it will automatically scale in size. Use Emitter.setScale to configure.
	 */
	var autoScale:Bool;
	
	/**
	 * When a new Particle is emitted this controls if it will automatically change alpha. Use Emitter.setAlpha to configure.
	 */
	var autoAlpha:Bool;
	
	/**
	 * If this is true then when the Particle is emitted it will be bought to the top of the Emitters display list.
	 */
	var particleBringToTop:Bool;
	
	/**
	 * If this is true then when the Particle is emitted it will be sent to the back of the Emitters display list.
	 */
	var particleSendToBack:Bool;
	
	/**
	 * Internal particle scale var.
	 */
	var _minParticleScale:phaser.geom.Point;
	
	/**
	 * Internal particle scale var.
	 */
	var _maxParticleScale:phaser.geom.Point;
	
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
	 * Internal counter for figuring out how many particles to launch per flow update.
	 */
	var _flowQuantity:Float;
	
	/**
	 * Internal counter for figuring out how many particles to launch in total.
	 */
	var _flowTotal:Float;
	
	/**
	 * Internal helper for the style of particle emission (all at once, or one at a time).
	 */
	var _explode:Bool;
	
	/**
	 * Internal helper for the particle frame.
	 */
	var _frames:Dynamic;
	
	/**
	 * This function generates a new set of particles for use by this emitter.
	 * The particles are stored internally waiting to be emitted via Emitter.start.
	 */
	@:overload(function (keys:Array<Dynamic>, ?frames:Array<Dynamic> = 0, ?quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter {})
	@:overload(function (keys:String, ?frames:Array<Dynamic> = 0, ?quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter {})
	@:overload(function (keys:Array<Dynamic>, ?frames:Float = 0, ?quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter {})
	function makeParticles (keys:String, ?frames:Float = 0, ?quantity:Float, ?collide:Bool = false, ?collideWorldBounds:Bool = false):phaser.particles.arcade.Emitter;
	
	/**
	 * Call this function to turn off all the particles and the emitter.
	 */
	function kill ():phaser.particles.arcade.Emitter;
	
	/**
	 * Handy for bringing game objects "back to life". Just sets alive and exists back to true.
	 */
	function revive ():phaser.particles.arcade.Emitter;
	
	/**
	 * Call this function to emit the given quantity of particles at all once (an explosion)
	 */
	function explode (?lifespan:Float = 0, ?quantity:Float = 0):phaser.particles.arcade.Emitter;
	
	/**
	 * Call this function to start emitting a flow of particles at the given frequency.
	 * It will carry on going until the total given is reached.
	 * Each time the flow is run the quantity number of particles will be emitted together.
	 * If you set the total to be 20 and quantity to be 5 then flow will emit 4 times in total (4 x 5 = 20 total)
	 * If you set the total to be -1 then no quantity cap is used and it will keep emitting.
	 */
	function flow (?lifespan:Float = 0, ?frequency:Float = 250, ?quantity:Float = 1, ?total:Float, ?immediate:Bool = true):phaser.particles.arcade.Emitter;
	
	/**
	 * Call this function to start emitting particles.
	 */
	function start (?explode:Bool = true, ?lifespan:Float = 0, ?frequency:Float = 250, ?quantity:Float = 0, ?forceQuantity:Float = false):phaser.particles.arcade.Emitter;
	
	/**
	 * This function is used internally to emit the next particle in the queue.
	 * 
	 * However it can also be called externally to emit a particle.
	 * 
	 * When called externally you can use the arguments to override any defaults the Emitter has set.
	 */
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?frame:String):Bool {})
	@:overload(function (?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:String):Bool {})
	@:overload(function (?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:String):Bool {})
	@:overload(function (?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:String):Bool {})
	@:overload(function (?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:String):Bool {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?frame:Float):Bool {})
	@:overload(function (?x:Float, ?y:Float, ?key:phaser.gameobjects.RenderTexture, ?frame:Float):Bool {})
	@:overload(function (?x:Float, ?y:Float, ?key:phaser.gameobjects.BitmapData, ?frame:Float):Bool {})
	@:overload(function (?x:Float, ?y:Float, ?key:phaser.gameobjects.Video, ?frame:Float):Bool {})
	function emitParticle (?x:Float, ?y:Float, ?key:phaser.pixi.textures.Texture, ?frame:Float):Bool;
	
	/**
	 * A more compact way of setting the width and height of the emitter.
	 */
	function setSize (width:Float, height:Float):phaser.particles.arcade.Emitter;
	
	/**
	 * A more compact way of setting the X velocity range of the emitter.
	 */
	function setXSpeed (?min:Float = 0, ?max:Float = 0):phaser.particles.arcade.Emitter;
	
	/**
	 * A more compact way of setting the Y velocity range of the emitter.
	 */
	function setYSpeed (?min:Float = 0, ?max:Float = 0):phaser.particles.arcade.Emitter;
	
	/**
	 * A more compact way of setting the angular velocity constraints of the particles.
	 */
	function setRotation (?min:Float = 0, ?max:Float = 0):phaser.particles.arcade.Emitter;
	
	/**
	 * A more compact way of setting the alpha constraints of the particles.
	 * The rate parameter, if set to a value above zero, lets you set the speed at which the Particle change in alpha from min to max.
	 * If rate is zero, which is the default, the particle won't change alpha - instead it will pick a random alpha between min and max on emit.
	 */
	function setAlpha (?min:Float = 1, ?max:Float = 1, ?rate:Float = 0, ?ease:Dynamic, ?yoyo:Bool = false):phaser.particles.arcade.Emitter;
	
	/**
	 * A more compact way of setting the scale constraints of the particles.
	 * The rate parameter, if set to a value above zero, lets you set the speed and ease which the Particle uses to change in scale from min to max across both axis.
	 * If rate is zero, which is the default, the particle won't change scale during update, instead it will pick a random scale between min and max on emit.
	 */
	function setScale (?minX:Float = 1, ?maxX:Float = 1, ?minY:Float = 1, ?maxY:Float = 1, ?rate:Float = 0, ?ease:Dynamic, ?yoyo:Bool = false):phaser.particles.arcade.Emitter;
	
	/**
	 * Change the emitters center to match the center of any object with a center property, such as a Sprite.
	 * If the object doesn't have a center property it will be set to object.x + object.width / 2
	 */
	@:overload(function (object:Dynamic):phaser.particles.arcade.Emitter {})
	@:overload(function (object:phaser.gameobjects.Sprite):phaser.particles.arcade.Emitter {})
	@:overload(function (object:phaser.gameobjects.Image):phaser.particles.arcade.Emitter {})
	@:overload(function (object:phaser.gameobjects.TileSprite):phaser.particles.arcade.Emitter {})
	@:overload(function (object:phaser.gameobjects.Text):phaser.particles.arcade.Emitter {})
	function at (object:phaser.pixi.display.DisplayObject):phaser.particles.arcade.Emitter;
	
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
