package phaser.particles.arcade;

import haxe.extern.EitherType;

/**
* Emitter is a lightweight particle emitter that uses Arcade Physics.
* It can be used for one-time explosions or for continuous effects like rain and fire.
* All it really does is launch Particle objects out at set intervals, and fixes their positions and velocities accordingly.
*/
@:native("Phaser.Particles.Arcade.Emitter")
extern class Emitter extends phaser.Group {

	/**
	* Emitter is a lightweight particle emitter that uses Arcade Physics.
	* It can be used for one-time explosions or for continuous effects like rain and fire.
	* All it really does is launch Particle objects out at set intervals, and fixes their positions and velocities accordingly.
	* 
	* @param game Current game instance.
	* @param x The x coordinate within the Emitter that the particles are emitted from.
	* @param y The y coordinate within the Emitter that the particles are emitted from.
	* @param maxParticles The total number of particles in this emitter. - Default: 50
	*/
	function new(game:phaser.Game, ?x:Float, ?y:Float, ?maxParticles:Float);
	
	/**
	* An array of the calculated alpha easing data applied to particles with alphaRates > 0.
	*/
	var alphaData:Array<Dynamic>;
	
	/**
	* When a new Particle is emitted this controls if it will automatically change alpha. Use Emitter.setAlpha to configure.
	*/
	var autoAlpha:Bool;
	
	/**
	* When a new Particle is emitted this controls if it will automatically scale in size. Use Emitter.setScale to configure.
	*/
	var autoScale:Bool;
	
	/**
	* The angular drag component of particles launched from the emitter if they are rotating.
	*/
	var angularDrag:Float;
	
	/**
	* Gets the bottom position of the Emitter.
	*/
	@:native("bottom")
	var Emitter_bottom:Float;
	
	/**
	* How much each particle should bounce on each axis. 1 = full bounce, 0 = no bounce.
	*/
	var bounce:phaser.Point;
	
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
	* How often a particle is emitted in ms (if emitter is started with Explode === false).
	* Default: 100
	*/
	var frequency:Float;
	
	/**
	* Sets the `body.gravity` of each particle sprite to this on launch.
	*/
	var gravity:phaser.Point;
	
	var group:phaser.Group;
	
	/**
	* Gets or sets the height of the Emitter. This is the region in which a particle can be emitted.
	*/
	@:native("height")
	var Emitter_height:Float;
	
	/**
	* Gets the left position of the Emitter.
	*/
	@:native("left")
	var Emitter_left:Float;
	
	/**
	* How long each particle lives once it is emitted in ms. Default is 2 seconds. Set lifespan to 'zero' for particles to live forever.
	* Default: 2000
	*/
	var lifespan:Float;
	
	/**
	* The total number of particles in this emitter.
	*/
	var maxParticles:Float;
	
	/**
	* The maximum possible scale of a particle. This is applied to the X and Y axis. If you need to control each axis see maxParticleScaleX.
	* Default: 1
	*/
	var maxParticleScale:Float;
	
	/**
	* The maximum possible velocity of a particle.
	*/
	var maxParticleSpeed:phaser.Point;
	
	/**
	* The maximum possible angular velocity of a particle.
	* Default: 360
	*/
	var maxRotation:Float;
	
	/**
	* The minimum possible scale of a particle. This is applied to the X and Y axis. If you need to control each axis see minParticleScaleX.
	* Default: 1
	*/
	var minParticleScale:Float;
	
	/**
	* The minimum possible velocity of a particle.
	*/
	var minParticleSpeed:phaser.Point;
	
	/**
	* The minimum possible angular velocity of a particle.
	*/
	var minRotation:Float;
	
	/**
	* A handy string name for this emitter. Can be set to anything.
	*/
	@:native("name")
	var Emitter_name:String;
	
	/**
	* Determines whether the emitter is currently emitting particles. It is totally safe to directly toggle this.
	*/
	var on:Bool;
	
	/**
	* When a particle is created its anchor will be set to match this Point object (defaults to x/y: 0.5 to aid in rotation)
	*/
	var particleAnchor:phaser.Point;
	
	/**
	* If this is `true` then when the Particle is emitted it will be bought to the top of the Emitters display list.
	*/
	var particleBringToTop:Bool;
	
	/**
	* If this is `true` then when the Particle is emitted it will be sent to the back of the Emitters display list.
	*/
	var particleSendToBack:Bool;
	
	/**
	* For emitting your own particle class types. They must extend Phaser.Particle.
	*/
	var particleClass:Dynamic;
	
	/**
	* The X and Y drag component of particles launched from the emitter.
	*/
	var particleDrag:phaser.Point;
	
	/**
	* The coordinates, in pixels, of this DisplayObject, relative to its parent container.
	* 
	* The value of this property does not reflect any positioning happening further up the display list.
	* To obtain that value please see the `worldPosition` property.
	*/
	@:native("position")
	var Emitter_position:phaser.Point;
	
	/**
	* Gets the right position of the Emitter.
	*/
	@:native("right")
	var Emitter_right:Float;
	
	/**
	* An array of the calculated scale easing data applied to particles with scaleRates > 0.
	*/
	var scaleData:Array<Dynamic>;
	
	/**
	* Gets the top position of the Emitter.
	*/
	@:native("top")
	var Emitter_top:Float;
	
	/**
	* Gets or sets the width of the Emitter. This is the region in which a particle can be emitted.
	*/
	@:native("width")
	var Emitter_width:Float;
	
	/**
	* Gets or sets the x position of the Emitter.
	*/
	@:native("x")
	var Emitter_x:Float;
	
	/**
	* Gets or sets the y position of the Emitter.
	*/
	@:native("y")
	var Emitter_y:Float;
	
	/**
	* Change the emitters center to match the center of any object with a `center` property, such as a Sprite.
	* If the object doesn't have a center property it will be set to object.x + object.width / 2
	* 
	* @param object The object that you wish to match the center with.
	* @return This Emitter instance.
	*/
	function at(object:Dynamic):phaser.particles.arcade.Emitter;
	
	/**
	* This function is used internally to emit the next particle in the queue.
	* 
	* However it can also be called externally to emit a particle.
	* 
	* When called externally you can use the arguments to override any defaults the Emitter has set.
	* 
	* @param x The x coordinate to emit the particle from. If `null` or `undefined` it will use `Emitter.emitX` or if the Emitter has a width > 1 a random value between `Emitter.left` and `Emitter.right`.
	* @param y The y coordinate to emit the particle from. If `null` or `undefined` it will use `Emitter.emitY` or if the Emitter has a height > 1 a random value between `Emitter.top` and `Emitter.bottom`.
	* @param key This is the image or texture used by the Particle during rendering. It can be a string which is a reference to the Cache Image entry, or an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If this Particle is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	* @return True if a particle was emitted, otherwise false.
	*/
	function emitParticle(?x:Float, ?y:Float, ?key:EitherType<String, EitherType<phaser.RenderTexture, EitherType<phaser.BitmapData, EitherType<phaser.Video, pixi.Texture>>>>, ?frame:EitherType<String, Float>):Bool;
	
	/**
	* Call this function to emit the given quantity of particles at all once (an explosion)
	* 
	* @param lifespan How long each particle lives once emitted in ms. 0 = forever.
	* @param quantity How many particles to launch. - Default: this.maxParticles
	* @return This Emitter instance.
	*/
	function explode(?lifespan:Float, ?quantity:Float):phaser.particles.arcade.Emitter;
	
	/**
	* Call this function to start emitting a flow of particles at the given frequency.
	* It will carry on going until the total given is reached.
	* Each time the flow is run the quantity number of particles will be emitted together.
	* If you set the total to be 20 and quantity to be 5 then flow will emit 4 times in total (4 x 5 = 20 total)
	* If you set the total to be -1 then no quantity cap is used and it will keep emitting.
	* 
	* @param lifespan How long each particle lives once emitted in ms. 0 = forever.
	* @param frequency Frequency is how often to emit the particles, given in ms. - Default: 250
	* @param quantity How many particles to launch each time the frequency is met. Can never be > Emitter.maxParticles. - Default: 1
	* @param total How many particles to launch in total. If -1 it will carry on indefinitely. - Default: -1
	* @param immediate Should the flow start immediately (true) or wait until the first frequency event? (false) - Default: true
	* @return This Emitter instance.
	*/
	function flow(?lifespan:Float, ?frequency:Float, ?quantity:Float, ?total:Float, ?immediate:Bool):phaser.particles.arcade.Emitter;
	
	/**
	* Call this function to turn off all the particles and the emitter.
	* 
	* @return This Emitter instance.
	*/
	function kill():phaser.particles.arcade.Emitter;
	
	/**
	* This function generates a new set of particles for use by this emitter.
	* The particles are stored internally waiting to be emitted via Emitter.start.
	* 
	* @param keys A string or an array of strings that the particle sprites will use as their texture. If an array one is picked at random.
	* @param frames A frame number, or array of frames that the sprite will use. If an array one is picked at random.
	* @param quantity The number of particles to generate. If not given it will use the value of Emitter.maxParticles. If the value is greater than Emitter.maxParticles it will use Emitter.maxParticles as the quantity.
	* @param collide If you want the particles to be able to collide with other Arcade Physics bodies then set this to true.
	* @param collideWorldBounds A particle can be set to collide against the World bounds automatically and rebound back into the World if this is set to true. Otherwise it will leave the World.
	* @param particleArguments Custom arguments to pass to your particle class
	* @return This Emitter instance.
	*/
	function makeParticles(keys:Dynamic, ?frames:Dynamic, ?quantity:Float, ?collide:Bool, ?collideWorldBounds:Bool, ?particleArguments:Dynamic):phaser.particles.arcade.Emitter;
	
	function reset(x:Float, y:Float, ?health:Float):phaser.Particles;
	
	/**
	* A more compact way of setting the alpha constraints of the particles.
	* The rate parameter, if set to a value above zero, lets you set the speed at which the Particle change in alpha from min to max.
	* If rate is zero, which is the default, the particle won't change alpha - instead it will pick a random alpha between min and max on emit.
	* 
	* @param min The minimum value for this range. - Default: 1
	* @param max The maximum value for this range. - Default: 1
	* @param rate The rate (in ms) at which the particles will change in alpha from min to max, or set to zero to pick a random alpha between the two.
	* @param ease If you've set a rate > 0 this is the easing formula applied between the min and max values. - Default: Phaser.Easing.Linear.None
	* @param yoyo If you've set a rate > 0 you can set if the ease will yoyo or not (i.e. ease back to its original values)
	* @return This Emitter instance.
	*/
	function setAlpha(?min:Float, ?max:Float, ?rate:Float, ?ease:Float->Float, ?yoyo:Bool):phaser.particles.arcade.Emitter;
	
	/**
	* A more compact way of setting the angular velocity constraints of the particles.
	* 
	* @param min The minimum value for this range.
	* @param max The maximum value for this range.
	* @return This Emitter instance.
	*/
	function setRotation(?min:Float, ?max:Float):phaser.particles.arcade.Emitter;
	
	/**
	* A more compact way of setting the scale constraints of the particles.
	* The rate parameter, if set to a value above zero, lets you set the speed and ease which the Particle uses to change in scale from min to max across both axis.
	* If rate is zero, which is the default, the particle won't change scale during update, instead it will pick a random scale between min and max on emit.
	* 
	* @param minX The minimum value of Particle.scale.x. - Default: 1
	* @param maxX The maximum value of Particle.scale.x. - Default: 1
	* @param minY The minimum value of Particle.scale.y. - Default: 1
	* @param maxY The maximum value of Particle.scale.y. - Default: 1
	* @param rate The rate (in ms) at which the particles will change in scale from min to max, or set to zero to pick a random size between the two.
	* @param ease If you've set a rate > 0 this is the easing formula applied between the min and max values. - Default: Phaser.Easing.Linear.None
	* @param yoyo If you've set a rate > 0 you can set if the ease will yoyo or not (i.e. ease back to its original values)
	* @return This Emitter instance.
	*/
	function setScale(?minX:Float, ?maxX:Float, ?minY:Float, ?maxY:Float, ?rate:Float, ?ease:Float->Float, ?yoyo:Bool):phaser.particles.arcade.Emitter;
	
	/**
	* A more compact way of setting the width and height of the emitter.
	* 
	* @param width The desired width of the emitter (particles are spawned randomly within these dimensions).
	* @param height The desired height of the emitter.
	* @return This Emitter instance.
	*/
	function setSize(width:Float, height:Float):phaser.particles.arcade.Emitter;
	
	/**
	* A more compact way of setting the X velocity range of the emitter.
	* 
	* @param min The minimum value for this range.
	* @param max The maximum value for this range.
	* @return This Emitter instance.
	*/
	function setXSpeed(min:Float, max:Float):phaser.particles.arcade.Emitter;
	
	/**
	* A more compact way of setting the Y velocity range of the emitter.
	* 
	* @param min The minimum value for this range.
	* @param max The maximum value for this range.
	* @return This Emitter instance.
	*/
	function setYSpeed(min:Float, max:Float):phaser.particles.arcade.Emitter;
	
	/**
	* Start emitting particles.
	* 
	* {@link Phaser.Particles.Arcade.Emitter#explode explode} and {@link Phaser.Particles.Arcade.Emitter#flow flow} are simpler methods.
	* 
	* There are two patterns, based on the `explode` argument:
	* 
	* - `start(true, lifespan=0, null, quantity)`
	* - `start(false, lifespan=0, frequency=250, quantity=0)`
	* 
	* When `explode` is true or `forceQuantity` is true, `start` emits `quantity` particles immediately. You should pass a nonzero `quantity`.
	* 
	* When `explode` is false and `forceQuantity` is false, `start` emits 1 particle every interval of `frequency` ms. If `quantity` is not zero, the emitter turns itself off after `quantity` particles have been released. If `quantity` is zero, the emitter keeps emitting particles as long as they are available. To emit more than 1 particle per flow interval, use {@link Phaser.Particles.Arcade.Emitter#flow flow} instead.
	* 
	* `forceQuantity` seems equivalent to `explode` and can probably be avoided.
	* 
	* @param explode Whether the particles should all burst out at once (true) or at the frequency given (false). - Default: true
	* @param lifespan How long each particle lives once emitted in ms. 0 = forever.
	* @param frequency Frequency is how often to emit 1 particle when `explode` is false. Value given in ms. Ignored if `explode` is set to true. - Default: 250
	* @param quantity How many particles to launch in total (not larger than {
	* @link Phaser.Particles.Arcade.Emitter#maxParticles maxParticles}).
	* @param forceQuantity Equivalent to `explodes`.
	* @return This Emitter instance.
	*/
	function start(?explode:Bool, ?lifespan:Float, ?frequency:Float, ?quantity:Float, ?forceQuantity:Bool):phaser.particles.arcade.Emitter;
	
	/**
	* Called automatically by the game loop, decides when to launch particles and when to "die".
	*/
	@:native("update")
	function Emitter_update():Void;
	
	/**
	* Handy for bringing game objects "back to life". Just sets alive and exists back to true.
	* 
	* @return This Emitter instance.
	*/
	function revive():phaser.particles.arcade.Emitter;
	
}

