package phaser.physics;

@:native("Phaser.Physics")
extern class Physics {
	
	/**
	 * The Physics Manager is responsible for looking after all of the running physics systems.
	 * Phaser supports 4 physics systems: Arcade Physics, P2, Ninja Physics and Box2D via a commercial plugin.
	 * 
	 * Game Objects (such as Sprites) can only belong to 1 physics system, but you can have multiple systems active in a single game.
	 * 
	 * For example you could have P2 managing a polygon-built terrain landscape that an vehicle drives over, while it could be firing bullets that use the
	 * faster (due to being much simpler) Arcade Physics system.
	 */
	function new (game:phaser.core.Game, ?physicsConfig:Dynamic);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The physics configuration object as passed to the game on creation.
	 */
	var config:Dynamic;
	
	/**
	 * The Arcade Physics system.
	 */
	var arcade:phaser.physics.arcade.World;
	
	/**
	 * The P2.JS Physics system.
	 */
	var p2:phaser.physics.p2.World;
	
	/**
	 * The N+ Ninja Physics system.
	 */
	var ninja:phaser.physics.ninja.World;
	
	/**
	 * The Box2D Physics system.
	 */
	var box2d:Dynamic;
	
	/**
	 * The Chipmunk Physics system (to be done).
	 */
	var chipmunk:Dynamic;
	
	/**
	 * @const
	 */
	static var ARCADE:Float;
	
	/**
	 * @const
	 */
	static var P2JS:Float;
	
	/**
	 * @const
	 */
	static var NINJA:Float;
	
	/**
	 * @const
	 */
	static var BOX2D:Float;
	
	/**
	 * @const
	 */
	static var CHIPMUNK:Float;
	
	/**
	 * Parses the Physics Configuration object passed to the Game constructor and starts any physics systems specified within.
	 */
	function parseConfig ():Void;
	
	/**
	 * This will create an instance of the requested physics simulation.
	 * Phaser.Physics.Arcade is running by default, but all others need activating directly.
	 * 
	 * You can start the following physics systems:
	 * 
	 * Phaser.Physics.P2JS - A full-body advanced physics system by Stefan Hedman.
	 * Phaser.Physics.NINJA - A port of Metanet Softwares N+ physics system.
	 * Phaser.Physics.BOX2D - A commercial Phaser Plugin (see <a href='http://phaser.io'>http://phaser.io</a>)
	 * 
	 * Both Ninja Physics and Box2D require their respective plugins to be loaded before you can start them.
	 * They are not bundled into the core Phaser library.
	 * 
	 * If the physics world has already been created (i.e. in another state in your game) then 
	 * calling startSystem will reset the physics world, not re-create it. If you need to start them again from their constructors 
	 * then set Phaser.Physics.p2 (or whichever system you want to recreate) to null before calling startSystem.
	 */
	function startSystem (system:Float):Void;
	
	/**
	 * This will create a default physics body on the given game object or array of objects.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	 * It can be for any of the physics systems that have been started:
	 * 
	 * Phaser.Physics.Arcade - A light weight AABB based collision system with basic separation.
	 * Phaser.Physics.P2JS - A full-body advanced physics system supporting multiple object shapes, polygon loading, contact materials, springs and constraints.
	 * Phaser.Physics.NINJA - A port of Metanet Softwares N+ physics system. Advanced AABB and Circle vs. Tile collision.
	 * Phaser.Physics.BOX2D - A port of <a href='https://code.google.com/p/box2d-html5'>https://code.google.com/p/box2d-html5</a>
	 * Phaser.Physics.CHIPMUNK is still in development.
	 * 
	 * If you require more control over what type of body is created, for example to create a Ninja Physics Circle instead of the default AABB, then see the
	 * individual physics systems enable methods instead of using this generic one.
	 */
	@:overload(function (object:Dynamic, ?system:Float, ?debug:Bool = false):Void {})
	function enable (object:Array<Dynamic>, ?system:Float, ?debug:Bool = false):Void;
	
	/**
	 * preUpdate checks.
	 */
	function preUpdate ():Void;
	
	/**
	 * Updates all running physics systems.
	 */
	function update ():Void;
	
	/**
	 * Updates the physics bounds to match the world dimensions.
	 */
	function setBoundsToWorld ():Void;
	
	/**
	 * Clears down all active physics systems. This doesn't destroy them, it just clears them of objects and is called when the State changes.
	 */
	function clear ():Void;
	
	/**
	 * Destroys all active physics systems. Usually only called on a Game Shutdown, not on a State swap.
	 */
	function destroy ():Void;
	
}
