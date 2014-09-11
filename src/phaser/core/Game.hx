package phaser.core;

@:native("Phaser.Game")
extern class Game {
	
	/**
	 * Game constructor
	 * 
	 * Instantiate a new Phaser.Game object.
	 */
	@:overload(function (?width:Float = 800, ?height:Float = 600, ?renderer:Float, ?parent:String = '', ?state:Dynamic, ?transparent:Bool = false, ?antialias:Bool = true, ?physicsConfig:Dynamic):Void {})
	@:overload(function (?width:String = 800, ?height:Float = 600, ?renderer:Float, ?parent:String = '', ?state:Dynamic, ?transparent:Bool = false, ?antialias:Bool = true, ?physicsConfig:Dynamic):Void {})
	@:overload(function (?width:Float = 800, ?height:String = 600, ?renderer:Float, ?parent:String = '', ?state:Dynamic, ?transparent:Bool = false, ?antialias:Bool = true, ?physicsConfig:Dynamic):Void {})
	@:overload(function (?width:String = 800, ?height:String = 600, ?renderer:Float, ?parent:String = '', ?state:Dynamic, ?transparent:Bool = false, ?antialias:Bool = true, ?physicsConfig:Dynamic):Void {})
	@:overload(function (?width:Float = 800, ?height:Float = 600, ?renderer:Float, ?parent:Dynamic = '', ?state:Dynamic, ?transparent:Bool = false, ?antialias:Bool = true, ?physicsConfig:Dynamic):Void {})
	@:overload(function (?width:String = 800, ?height:Float = 600, ?renderer:Float, ?parent:Dynamic = '', ?state:Dynamic, ?transparent:Bool = false, ?antialias:Bool = true, ?physicsConfig:Dynamic):Void {})
	@:overload(function (?width:Float = 800, ?height:String = 600, ?renderer:Float, ?parent:Dynamic = '', ?state:Dynamic, ?transparent:Bool = false, ?antialias:Bool = true, ?physicsConfig:Dynamic):Void {})
	function new (?width:String = 800, ?height:String = 600, ?renderer:Float, ?parent:Dynamic = '', ?state:Dynamic, ?transparent:Bool = false, ?antialias:Bool = true, ?physicsConfig:Dynamic);
	
	/**
	 * Phaser Game ID (for when Pixi supports multiple instances).
	 */
	var id:Float;
	
	/**
	 * The Phaser.Game configuration object.
	 */
	var config:Dynamic;
	
	/**
	 * The Phaser.Physics.World configuration object.
	 */
	var physicsConfig:Dynamic;
	
	/**
	 * The Games DOM parent.
	 */
	var parent:Dynamic;
	
	/**
	 * The calculated game width in pixels.
	 */
	var width:Float;
	
	/**
	 * The calculated game height in pixels.
	 */
	var height:Float;
	
	/**
	 * Use a transparent canvas background or not.
	 */
	var transparent:Bool;
	
	/**
	 * Anti-alias graphics. By default scaled images are smoothed in Canvas and WebGL, set anti-alias to false to disable this globally.
	 */
	var antialias:Bool;
	
	/**
	 * The value of the preserveDrawingBuffer flag affects whether or not the contents of the stencil buffer is retained after rendering.
	 */
	var preserveDrawingBuffer:Bool;
	
	/**
	 * The Pixi Renderer.
	 */
	var renderer:Dynamic;
	
	/**
	 * The Renderer this game will use. Either Phaser.AUTO, Phaser.CANVAS or Phaser.WEBGL.
	 */
	var renderType:Float;
	
	/**
	 * The StateManager.
	 */
	var state:phaser.core.StateManager;
	
	/**
	 * Whether the game engine is booted, aka available.
	 */
	var isBooted:Bool;
	
	/**
	 * s game running or paused?
	 */
	var isRunning:Bool;
	
	/**
	 * Automatically handles the core game loop via requestAnimationFrame or setTimeout
	 */
	var raf:phaser.system.RequestAnimationFrame;
	
	/**
	 * Reference to the Phaser.GameObjectFactory.
	 */
	var add:phaser.gameobjects.GameObjectFactory;
	
	/**
	 * Reference to the GameObject Creator.
	 */
	var make:phaser.gameobjects.GameObjectCreator;
	
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
	 * Reference to the network class.
	 */
	var net:phaser.net.Net;
	
	/**
	 * The game scale manager.
	 */
	var scale:phaser.core.ScaleManager;
	
	/**
	 * Reference to the sound manager.
	 */
	var sound:phaser.sound.SoundManager;
	
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
	 * Reference to the physics manager.
	 */
	var physics:phaser.physics.Physics;
	
	/**
	 * Instance of repeatable random data generator helper.
	 */
	var rnd:phaser.math.RandomDataGenerator;
	
	/**
	 * Contains device information and capabilities.
	 */
	var device:phaser.system.Device;
	
	/**
	 * A handy reference to world.camera.
	 */
	var camera:phaser.core.Camera;
	
	/**
	 * A handy reference to renderer.view, the canvas that the game is being rendered in to.
	 */
	var canvas:Dynamic;
	
	/**
	 * A handy reference to renderer.context (only set for CANVAS games, not WebGL)
	 */
	var context:Dynamic;
	
	/**
	 * A set of useful debug utilitie.
	 */
	var debug:phaser.utils.Debug;
	
	/**
	 * The Particle Manager.
	 */
	var particles:phaser.particles.Particles;
	
	/**
	 * Enable core loop stepping with Game.enableStep().
	 */
	var stepping(default, null):Bool;
	
	/**
	 * An internal property used by enableStep, but also useful to query from your own game objects.
	 */
	var pendingStep(default, null):Bool;
	
	/**
	 * When stepping is enabled this contains the current step cycle.
	 */
	var stepCount(default, null):Float;
	
	/**
	 * This event is fired when the game pauses.
	 */
	var onPause:phaser.core.Signal;
	
	/**
	 * This event is fired when the game resumes from a paused state.
	 */
	var onResume:phaser.core.Signal;
	
	/**
	 * This event is fired when the game no longer has focus (typically on page hide).
	 */
	var onBlur:phaser.core.Signal;
	
	/**
	 * This event is fired when the game has focus (typically on page show).
	 */
	var onFocus:phaser.core.Signal;
	
	/**
	 * Is game paused?
	 */
	var _paused:Bool;
	
	/**
	 * Was the game paused via code or a visibility change?
	 */
	var _codePaused:Bool;
	
	/**
	 * Parses a Game configuration object.
	 */
	function parseConfig ():Void;
	
	/**
	 * Initialize engine sub modules and start the game.
	 */
	function boot ():Void;
	
	/**
	 * Displays a Phaser version debug header in the console.
	 */
	function showDebugHeader ():Void;
	
	/**
	 * Checks if the device is capable of using the requested renderer and sets it up or an alternative if not.
	 */
	function setUpRenderer ():Void;
	
	/**
	 * The core game loop.
	 */
	function update (time:Float):Void;
	
	/**
	 * Enable core game loop stepping. When enabled you must call game.step() directly (perhaps via a DOM button?)
	 * Calling step will advance the game loop by one frame. This is extremely useful for hard to track down errors!
	 */
	function enableStep ():Void;
	
	/**
	 * Disables core game loop stepping.
	 */
	function disableStep ():Void;
	
	/**
	 * When stepping is enabled you must call this function directly (perhaps via a DOM button?) to advance the game loop by one frame.
	 * This is extremely useful to hard to track down errors! Use the internal stepCount property to monitor progress.
	 */
	function step ():Void;
	
	/**
	 * Nukes the entire game from orbit.
	 */
	function destroy ():Void;
	
	/**
	 * Called by the Stage visibility handler.
	 */
	function gamePaused (event:Dynamic):Void;
	
	/**
	 * Called by the Stage visibility handler.
	 */
	function gameResumed (event:Dynamic):Void;
	
	/**
	 * Called by the Stage visibility handler.
	 */
	function focusLoss (event:Dynamic):Void;
	
	/**
	 * Called by the Stage visibility handler.
	 */
	function focusGain (event:Dynamic):Void;
	
	/**
	 * The paused state of the Game. A paused game doesn't update any of its subsystems.
	 * When a game is paused the onPause event is dispatched. When it is resumed the onResume event is dispatched.
	 */
	var paused:Bool;
	
}
