package phaser;

/**
* The Physics Manager is responsible for looking after all of the running physics systems.
* Phaser supports 4 physics systems: Arcade Physics, P2, Ninja Physics and Box2D via a commercial plugin.
* 
* Game Objects (such as Sprites) can only belong to 1 physics system, but you can have multiple systems active in a single game.
* 
* For example you could have P2 managing a polygon-built terrain landscape that an vehicle drives over, while it could be firing bullets that use the
* faster (due to being much simpler) Arcade Physics system.
*/
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
	* 
	* @param game A reference to the currently running game.
	* @param physicsConfig A physics configuration object to pass to the Physics world on creation.
	*/
	function new(game:phaser.Game, ?config:Dynamic);
	
	static var ARCADE:Float;
	
	static var P2JS:Float;
	
	static var NINJA:Float;
	
	static var BOX2D:Float;
	
	static var CHIPMUNK:Float;
	
	static var MATTERJS:Float;
	
	/**
	* The Arcade Physics system.
	*/
	var arcade:phaser.physics.Arcade;
	
	/**
	* The physics configuration object as passed to the game on creation.
	*/
	var config:Dynamic;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* The N+ Ninja Physics system.
	*/
	var ninja:phaser.physics.Ninja;
	
	/**
	* The P2.JS Physics system.
	*/
	var p2:phaser.physics.P2;
	
	/**
	* The Box2D Physics system.
	*/
	var box2d:Dynamic;
	
	/**
	* Clears down all active physics systems. This doesn't destroy them, it just clears them of objects and is called when the State changes.
	*/
	function clear():Void;
	
	/**
	* Destroys all active physics systems. Usually only called on a Game Shutdown, not on a State swap.
	*/
	function destroy():Void;
	
	/**
	* This will create a default physics body on the given game object or array of objects.
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	* It can be for any of the physics systems that have been started:
	* 
	* Phaser.Physics.Arcade - A light weight AABB based collision system with basic separation.
	* Phaser.Physics.P2JS - A full-body advanced physics system supporting multiple object shapes, polygon loading, contact materials, springs and constraints.
	* Phaser.Physics.NINJA - A port of Metanet Softwares N+ physics system. Advanced AABB and Circle vs. Tile collision.
	* Phaser.Physics.BOX2D - A port of https://code.google.com/p/box2d-html5
	* Phaser.Physics.MATTER - A full-body and light-weight advanced physics system (still in development)
	* Phaser.Physics.CHIPMUNK is still in development.
	* 
	* If you require more control over what type of body is created, for example to create a Ninja Physics Circle instead of the default AABB, then see the
	* individual physics systems `enable` methods instead of using this generic one.
	* 
	* @param object The game object to create the physics body on. Can also be an array of objects, a body will be created on every object in the array.
	* @param system The physics system that will be used to create the body. Defaults to Arcade Physics. - Default: Phaser.Physics.ARCADE
	* @param debug Enable the debug drawing for this body. Defaults to false.
	*/
	function enable(object:Dynamic, ?system:Float, ?debug:Bool):Void;
	
	/**
	* Parses the Physics Configuration object passed to the Game constructor and starts any physics systems specified within.
	*/
	function parseConfig():Void;
	
	/**
	* preUpdate checks.
	*/
	function preUpdate():Void;
	
	/**
	* Resets the active physics system. Called automatically on a Phaser.State swap.
	*/
	function reset():Void;
	
	/**
	* Updates the physics bounds to match the world dimensions.
	*/
	function setBoundsToWorld():Void;
	
	/**
	* This will create an instance of the requested physics simulation.
	* Phaser.Physics.Arcade is running by default, but all others need activating directly.
	* 
	* You can start the following physics systems:
	* 
	* Phaser.Physics.P2JS - A full-body advanced physics system by Stefan Hedman.
	* Phaser.Physics.NINJA - A port of Metanet Softwares N+ physics system.
	* Phaser.Physics.BOX2D - A commercial Phaser Plugin (see http://phaser.io)
	* 
	* Both Ninja Physics and Box2D require their respective plugins to be loaded before you can start them.
	* They are not bundled into the core Phaser library.
	* 
	* If the physics world has already been created (i.e. in another state in your game) then
	* calling startSystem will reset the physics world, not re-create it. If you need to start them again from their constructors
	* then set Phaser.Physics.p2 (or whichever system you want to recreate) to `null` before calling `startSystem`.
	* 
	* @param system The physics system to start: Phaser.Physics.ARCADE, Phaser.Physics.P2JS, Phaser.Physics.NINJA or Phaser.Physics.BOX2D.
	*/
	function startSystem(system:Float):Void;
	
	/**
	* Updates all running physics systems.
	*/
	function update():Void;
	
}

