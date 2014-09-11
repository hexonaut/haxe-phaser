package phaser.core;

@:native("Phaser.State")
extern class State {
	
	/**
	 * This is a base State class which can be extended if you are creating your own game.
	 * It provides quick access to common functions such as the camera, cache, input, match, sound and more.
	 */
	function new ();
	
	/**
	 * This is a reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A reference to the GameObjectFactory which can be used to add new objects to the World.
	 */
	var add:phaser.gameobjects.GameObjectFactory;
	
	/**
	 * A reference to the GameObjectCreator which can be used to make new objects.
	 */
	var make:phaser.gameobjects.GameObjectCreator;
	
	/**
	 * A handy reference to World.camera.
	 */
	var camera:phaser.core.Camera;
	
	/**
	 * A reference to the game cache which contains any loaded or generated assets, such as images, sound and more.
	 */
	var cache:phaser.loader.Cache;
	
	/**
	 * A reference to the Input Manager.
	 */
	var input:phaser.input.Input;
	
	/**
	 * A reference to the Loader, which you mostly use in the preload method of your state to load external assets.
	 */
	var load:phaser.loader.Loader;
	
	/**
	 * A reference to Math class with lots of helpful functions.
	 */
	var math:phaser.math.Math;
	
	/**
	 * A reference to the Sound Manager which can create, play and stop sounds, as well as adjust global volume.
	 */
	var sound:phaser.sound.SoundManager;
	
	/**
	 * A reference to the Scale Manager which controls the way the game scales on different displays.
	 */
	var scale:phaser.core.ScaleManager;
	
	/**
	 * A reference to the Stage.
	 */
	var stage:phaser.core.Stage;
	
	/**
	 * A reference to the game clock and timed events system.
	 */
	var time:phaser.time.Time;
	
	/**
	 * A reference to the tween manager.
	 */
	var tweens:phaser.tween.TweenManager;
	
	/**
	 * A reference to the game world. All objects live in the Game World and its size is not bound by the display resolution.
	 */
	var world:phaser.core.World;
	
	/**
	 * The Particle Manager. It is called during the core gameloop and updates any Particle Emitters it has created.
	 */
	var particles:phaser.particles.Particles;
	
	/**
	 * A reference to the physics manager which looks after the different physics systems available within Phaser.
	 */
	var physics:phaser.physics.Physics;
	
	/**
	 * A reference to the seeded and repeatable random data generator.
	 */
	var rnd:phaser.math.RandomDataGenerator;
	
	/**
	 * preload is called first. Normally you'd use this to load your game assets (or those needed for the current State)
	 * You shouldn't create any objects in this method that require assets that you're also loading in this method, as
	 * they won't yet be available.
	 */
	function preload ():Void;
	
	/**
	 * loadUpdate is called during the Loader process. This only happens if you've set one or more assets to load in the preload method.
	 */
	function loadUpdate ():Void;
	
	/**
	 * loadRender is called during the Loader process. This only happens if you've set one or more assets to load in the preload method.
	 * The difference between loadRender and render is that any objects you render in this method you must be sure their assets exist.
	 */
	function loadRender ():Void;
	
	/**
	 * create is called once preload has completed, this includes the loading of any assets from the Loader.
	 * If you don't have a preload method then create is the first method called in your State.
	 */
	function create ():Void;
	
	/**
	 * The update method is left empty for your own use.
	 * It is called during the core game loop AFTER debug, physics, plugins and the Stage have had their preUpdate methods called.
	 * If is called BEFORE Stage, Tweens, Sounds, Input, Physics, Particles and Plugins have had their postUpdate methods called.
	 */
	function update ():Void;
	
	/**
	 * Nearly all display objects in Phaser render automatically, you don't need to tell them to render.
	 * However the render method is called AFTER the game renderer and plugins have rendered, so you're able to do any
	 * final post-processing style effects here. Note that this happens before plugins postRender takes place.
	 */
	function render ():Void;
	
	/**
	 * If your game is set to Scalemode RESIZE then each time the browser resizes it will call this function, passing in the new width and height.
	 */
	function resize ():Void;
	
	/**
	 * This method will be called if the core game loop is paused.
	 */
	function paused ():Void;
	
	/**
	 * pauseUpdate is called while the game is paused instead of preUpdate, update and postUpdate.
	 */
	function pauseUpdate ():Void;
	
	/**
	 * This method will be called when the State is shutdown (i.e. you switch to another state from this one).
	 */
	function shutdown ():Void;
	
}
