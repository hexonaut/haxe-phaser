package phaser.core;

@:native("Phaser.Game")
extern class Game {
	
	/**
	 * This is where the magic happens. The Game object is the heart of your game,
	 * providing quick access to common functions and handling the boot process.
	 * 
	 * "Hell, there are no rules here - we're trying to accomplish something."
	 *                                                       Thomas A. Edison
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
	var id(default, null):Float;
	
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
	 * The current Game Width in pixels.
	 * 
	 * <em>Do not modify this property directly:</em> use {@link Phaser.ScaleManager#setGameSize} - eg. game.scale.setGameSize(width, height) - instead.
	 */
	var width(default, null):Int;
	
	/**
	 * The current Game Height in pixels.
	 * 
	 * <em>Do not modify this property directly:</em> use {@link Phaser.ScaleManager#setGameSize} - eg. game.scale.setGameSize(width, height) - instead.
	 */
	var height(default, null):Int;
	
	/**
	 * Private internal var.
	 */
	var _width:Int;
	
	/**
	 * Private internal var.
	 */
	var _height:Int;
	
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
	var renderType(default, null):Float;
	
	/**
	 * The StateManager.
	 */
	var state:phaser.core.StateManager;
	
	/**
	 * Whether the game engine is booted, aka available.
	 */
	var isBooted(default, null):Bool;
	
	/**
	 * Is game running or paused?
	 */
	var isRunning(default, null):Bool;
	
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
	 * If false Phaser will automatically render the display list every update. If true the render loop will be skipped.
	 * You can toggle this value at run-time to gain exact control over when Phaser renders. This can be useful in certain types of game or application.
	 * Please note that if you don't render the display list then none of the game object transforms will be updated, so use this value carefully.
	 */
	var lockRender:Bool;
	
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
	 * The ID of the current/last logic update applied this render frame, starting from 0.
	 * 
	 * The first update is currentUpdateID === 0 and the last update is currentUpdateID === updatesThisFrame.
	 */
	var currentUpdateID:Int;
	
	/**
	 * Number of logic updates expected to occur this render frame;
	 * will be 1 unless there are catch-ups required (and allowed).
	 */
	var updatesThisFrame:Int;
	
	/**
	 * accumulate elapsed time until a logic update is due
	 */
	var _deltaTime:Float;
	
	/**
	 * remember how many 'catch-up' iterations were used on the logicUpdate last frame
	 */
	var _lastCount:Float;
	
	/**
	 * if the 'catch-up' iterations are spiralling out of control, this counter is incremented
	 */
	var _spiralling:Float;
	
	/**
	 * If the game is struggling to maintain the desired FPS, this signal will be dispatched.
	 * The desired/chosen FPS should probably be closer to the {@link Phaser.Time#suggestedFps} value.
	 */
	var fpsProblemNotifier:phaser.core.Signal;
	
	/**
	 * Should the game loop force a logic update, regardless of the delta timer? Set to true if you know you need this. You can toggle it on the fly.
	 */
	var forceSingleUpdate:Bool;
	
	/**
	 * the soonest game.time.time value that the next fpsProblemNotifier can be dispatched
	 */
	var _nextFpsNotification:Float;
	
	var plugins:PluginManager;
	
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
	 * Updates all logic subsystems in Phaser. Called automatically by Game.update.
	 */
	function updateLogic (timeStep:Float):Void;
	
	/**
	 * Runs the Render cycle.
	 * It starts by calling State.preRender. In here you can do any last minute adjustments of display objects as required.
	 * It then calls the renderer, which renders the entire display list, starting from the Stage object and working down.
	 * It then calls plugin.render on any loaded plugins, in the order in which they were enabled.
	 * After this State.render is called. Any rendering that happens here will take place on-top of the display list.
	 * Finally plugin.postRender is called on any loaded plugins, in the order in which they were enabled.
	 * This method is called automatically by Game.update, you don't need to call it directly.
	 * Should you wish to have fine-grained control over when Phaser renders then use the Game.lockRender boolean.
	 * Phaser will only render when this boolean is false.
	 */
	function updateRender (elapsedTime:Float):Void;
	
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
