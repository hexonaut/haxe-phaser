package phaser.core;

@:native("Phaser.State")
extern class State {
	
	/**
	 * This is a base State class which can be extended if you are creating your own game.
	 * It provides quick access to common functions such as the camera, cache, input, match, sound and more.
	 */
	function new ();
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Reference to the GameObjectFactory.
	 */
	var add:phaser.gameobjects.GameObjectFactory;
	
	/**
	 * Reference to the GameObjectCreator.
	 */
	var make:phaser.gameobjects.GameObjectCreator;
	
	/**
	 * A handy reference to world.camera.
	 */
	var camera:phaser.core.Camera;
	
	/**
	 * Reference to the assets cache.
	 */
	var cache:phaser.loader.Cache;
	
	/**
	 * Reference to the input manager
	 */
	var input:phaser.input.Input;
	
	/**
	 * Reference to the assets loader.
	 */
	var load:phaser.loader.Loader;
	
	/**
	 * Reference to the math helper.
	 */
	var math:phaser.math.Math;
	
	/**
	 * Reference to the sound manager.
	 */
	var sound:phaser.sound.SoundManager;
	
	/**
	 * Reference to the game scale manager.
	 */
	var scale:phaser.core.ScaleManager;
	
	/**
	 * Reference to the stage.
	 */
	var stage:phaser.core.Stage;
	
	/**
	 * Reference to the core game clock.
	 */
	var time:phaser.time.Time;
	
	/**
	 * Reference to the tween manager.
	 */
	var tweens:phaser.tween.TweenManager;
	
	/**
	 * Reference to the world.
	 */
	var world:phaser.core.World;
	
	/**
	 * The Particle Manager for the game. It is called during the game update loop and in turn updates any Emitters attached to it.
	 */
	var particles:phaser.particles.Particles;
	
	/**
	 * Reference to the physics manager.
	 */
	var physics:phaser.physics.Physics;
	
	/**
	 * Reference to the random data generator.
	 */
	var rnd:phaser.math.RandomDataGenerator;
	
	/**
	 * Override this method to add some load operations.
	 * If you need to use the loader, you may need to use them here.
	 */
	function preload ():Void;
	
	/**
	 * Put update logic here.
	 */
	function loadUpdate ():Void;
	
	/**
	 * Put render operations here.
	 */
	function loadRender ():Void;
	
	/**
	 * This method is called after the game engine successfully switches states.
	 * Feel free to add any setup code here (do not load anything here, override preload() instead).
	 */
	function create ():Void;
	
	/**
	 * Put update logic here.
	 */
	function update ():Void;
	
	/**
	 * Put render operations here.
	 */
	function render ():Void;
	
	/**
	 * This method will be called when game paused.
	 */
	function paused ():Void;
	
	/**
	 * This method will be called when the state is shut down (i.e. you switch to another state from this one).
	 */
	function shutdown ():Void;
	
}
