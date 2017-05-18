package phaser;

import haxe.extern.EitherType;
import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.HtmlElement as HTMLElement;

/**
* The Phaser.Game object is the main controller for the entire Phaser game. It is responsible
* for handling the boot process, parsing the configuration values, creating the renderer,
* and setting-up all of the Phaser systems, such as physics, sound and input.
* Once that is complete it will start the default State, and then begin the main game loop.
* 
* You can access lots of the Phaser systems via the properties on the `game` object. For
* example `game.renderer` is the Renderer, `game.sound` is the Sound Manager, and so on.
* 
* Anywhere you can access the `game` property, you can access all of these core systems.
* For example a Sprite has a `game` property, allowing you to talk to the various parts
* of Phaser directly, without having to look after your own references.
* 
* In it's most simplest form, a Phaser game can be created by providing the arguments
* to the constructor:
* 
* ```
* var game = new Phaser.Game(800, 600, Phaser.AUTO, '', { preload: preload, create: create });
* ```
* 
* In the example above it is passing in a State object directly. You can also use the State
* Manager to do this:
* 
* ```
* var game = new Phaser.Game(800, 600, Phaser.AUTO);
* game.state.add('Boot', BasicGame.Boot);
* game.state.add('Preloader', BasicGame.Preloader);
* game.state.add('MainMenu', BasicGame.MainMenu);
* game.state.add('Game', BasicGame.Game);
* game.state.start('Boot');
* 
* ```
* In the example above, 4 States are added to the State Manager, and Phaser is told to
* start running the `Boot` state when it has finished initializing. There are example
* project templates you can use in the Phaser GitHub repo, inside the `resources` folder.
* 
* Instead of specifying arguments you can also pass a single object instead:
* 
* ```
* var config = {
*      width: 800,
*      height: 600,
*      renderer: Phaser.AUTO,
*      antialias: true,
*      multiTexture: true,
*      state: {
*          preload: preload,
*          create: create,
*          update: update
*      }
* }
* 
* var game = new Phaser.Game(config);
* ```
*/
@:native("Phaser.Game")
extern class Game {

	/**
	* The Phaser.Game object is the main controller for the entire Phaser game. It is responsible
	* for handling the boot process, parsing the configuration values, creating the renderer,
	* and setting-up all of the Phaser systems, such as physics, sound and input.
	* Once that is complete it will start the default State, and then begin the main game loop.
	* 
	* You can access lots of the Phaser systems via the properties on the `game` object. For
	* example `game.renderer` is the Renderer, `game.sound` is the Sound Manager, and so on.
	* 
	* Anywhere you can access the `game` property, you can access all of these core systems.
	* For example a Sprite has a `game` property, allowing you to talk to the various parts
	* of Phaser directly, without having to look after your own references.
	* 
	* In it's most simplest form, a Phaser game can be created by providing the arguments
	* to the constructor:
	* 
	* ```
	* var game = new Phaser.Game(800, 600, Phaser.AUTO, '', { preload: preload, create: create });
	* ```
	* 
	* In the example above it is passing in a State object directly. You can also use the State
	* Manager to do this:
	* 
	* ```
	* var game = new Phaser.Game(800, 600, Phaser.AUTO);
	* game.state.add('Boot', BasicGame.Boot);
	* game.state.add('Preloader', BasicGame.Preloader);
	* game.state.add('MainMenu', BasicGame.MainMenu);
	* game.state.add('Game', BasicGame.Game);
	* game.state.start('Boot');
	* 
	* ```
	* In the example above, 4 States are added to the State Manager, and Phaser is told to
	* start running the `Boot` state when it has finished initializing. There are example
	* project templates you can use in the Phaser GitHub repo, inside the `resources` folder.
	* 
	* Instead of specifying arguments you can also pass a single object instead:
	* 
	* ```
	* var config = {
	*      width: 800,
	*      height: 600,
	*      renderer: Phaser.AUTO,
	*      antialias: true,
	*      multiTexture: true,
	*      state: {
	*          preload: preload,
	*          create: create,
	*          update: update
	*      }
	* }
	* 
	* var game = new Phaser.Game(config);
	* ```
	* 
	* @param width The width of your game in game pixels. If given as a string the value must be between 0 and 100 and will be used as the percentage width of the parent container, or the browser window if no parent is given. - Default: 800
	* @param height The height of your game in game pixels. If given as a string the value must be between 0 and 100 and will be used as the percentage height of the parent container, or the browser window if no parent is given. - Default: 600
	* @param renderer Which renderer to use: Phaser.AUTO will auto-detect, Phaser.WEBGL, Phaser.WEBGL_MULTI, Phaser.CANVAS or Phaser.HEADLESS (no rendering at all). - Default: Phaser.AUTO
	* @param parent The DOM element into which this games canvas will be injected. Either a DOM ID (string) or the element itself. - Default: ''
	* @param state The default state object. A object consisting of Phaser.State functions (preload, create, update, render) or null.
	* @param transparent Use a transparent canvas background or not.
	* @param antialias Draw all image textures anti-aliased or not. The default is for smooth textures, but disable if your game features pixel art. - Default: true
	* @param physicsConfig A physics configuration object to pass to the Physics world on creation.
	* @param config A single configuration object
	* @param config .antialias  - Default: true
	* @param config .height  - Default: 600
	* @param config .enableDebug Enable {
	* @link Phaser.Utils.Debug}. You can gain a little performance by disabling this in production. - Default: true
	* @param config .multiTexture Enable support for multiple bound Textures in WebGL. Same as `renderer: Phaser.WEBGL_MULTI`.
	* @param config .parent  - Default: ''
	* @param config .physicsConfig
	* @param config .preserveDrawingBuffer Whether or not the contents of the stencil buffer is retained after rendering.
	* @param config .renderer  - Default: Phaser.AUTO
	* @param config .resolution The resolution of your game, as a ratio of canvas pixels to game pixels. - Default: 1
	* @param config .seed Seed for {
	* @link Phaser.RandomDataGenerator}.
	* @param config .state
	* @param config .transparent
	* @param config .width  - Default: 800
	*/
	@:overload(function(config:IGameConfig):Dynamic{})
	function new(?width:EitherType<Float, String>, ?height:EitherType<Float, String>, ?renderer:Float, ?parent:Dynamic, ?state:Dynamic, ?transparent:Bool, ?antialias:Bool, ?physicsConfig:Dynamic);
	
	/**
	* Reference to the Phaser.GameObjectFactory.
	*/
	var add:phaser.GameObjectFactory;
	
	/**
	* Anti-alias graphics (as set when the Game is created). By default scaled and rotated images are smoothed in Canvas and WebGL; set `antialias` to false to disable this globally. After the game boots, use `game.stage.smoothed` instead.
	* Default: true
	*/
	var antialias:Bool;
	
	/**
	* Reference to the assets cache.
	*/
	var cache:phaser.Cache;
	
	/**
	* A handy reference to world.camera.
	*/
	var camera:phaser.Camera;
	
	/**
	* A handy reference to renderer.view, the canvas that the game is being rendered in to.
	*/
	var canvas:HTMLCanvasElement;
	
	/**
	* Clear the Canvas each frame before rendering the display list.
	* You can set this to `false` to gain some performance if your game always contains a background that completely fills the display.
	* Default: true
	*/
	var clearBeforeRender:Bool;
	
	/**
	* The Phaser.Game configuration object.
	*/
	var config:IGameConfig;
	
	/**
	* A handy reference to renderer.context (only set for CANVAS games, not WebGL)
	*/
	var context:CanvasRenderingContext2D;
	
	var count:Float;
	
	/**
	* The Asset Generator.
	*/
	var create:phaser.Create;
	
	/**
	* A set of useful debug utilities.
	*/
	var debug:phaser.utils.Debug;
	
	/**
	* Contains device information and capabilities.
	*/
	var device:phaser.Device;
	
	/**
	* Should the game loop force a logic update, regardless of the delta timer? You can toggle it on the fly.
	*/
	var forceSingleUpdate:Bool;
	
	/**
	* If the game is struggling to maintain the desired FPS, this signal will be dispatched.
	* The desired/chosen FPS should probably be closer to the {@link Phaser.Time#suggestedFps} value.
	*/
	var fpsProblemNotifier:phaser.Signal;
	
	/**
	* The current Game Height in pixels.
	* 
	* _Do not modify this property directly:_ use {@link Phaser.ScaleManager#setGameSize} - eg. `game.scale.setGameSize(width, height)` - instead.
	* Default: 600
	*/
	var height:Float;
	
	/**
	* Phaser Game ID
	*/
	var id:Float;
	
	/**
	* Reference to the input manager
	*/
	var input:phaser.Input;
	
	/**
	* Whether the game engine is booted, aka available.
	*/
	var isBooted:Bool;
	
	/**
	* Is game running or paused?
	*/
	var isRunning:Bool;
	
	/**
	* Reference to the assets loader.
	*/
	var load:phaser.Loader;
	
	/**
	* If `false` Phaser will automatically render the display list every update. If `true` the render loop will be skipped.
	* You can toggle this value at run-time to gain exact control over when Phaser renders. This can be useful in certain types of game or application.
	* Please note that if you don't render the display list then none of the game object transforms will be updated, so use this value carefully.
	*/
	var lockRender:Bool;
	
	/**
	* Reference to the GameObject Creator.
	*/
	var make:phaser.GameObjectCreator;
	
	/**
	* Reference to the math helper.
	*/
	var math:phaser.Math;
	
	/**
	* Reference to the network class.
	*/
	var net:phaser.Net;
	
	/**
	* This event is fired when the game no longer has focus (typically on page hide).
	*/
	var onBlur:phaser.Signal;
	
	/**
	* This event is fired when the game has focus (typically on page show).
	*/
	var onFocus:phaser.Signal;
	
	/**
	* This event is fired when the game pauses.
	*/
	var onPause:phaser.Signal;
	
	/**
	* This event is fired when the game resumes from a paused state.
	*/
	var onResume:phaser.Signal;
	
	/**
	* The Game's DOM parent (or name thereof), if any, as set when the game was created. The actual parent can be found in `game.canvas.parentNode`. Setting this has no effect after {@link Phaser.ScaleManager} is booted.
	*/
	var parent:HTMLElement;
	
	/**
	* The Particle Manager.
	*/
	var particles:phaser.Particles;
	
	/**
	* The paused state of the Game. A paused game doesn't update any of its subsystems.
	* When a game is paused the onPause event is dispatched. When it is resumed the onResume event is dispatched. Gets and sets the paused state of the Game.
	*/
	var paused:Bool;
	
	/**
	* An internal property used by enableStep, but also useful to query from your own game objects.
	*/
	var pendingStep:Bool;
	
	/**
	* Reference to the physics manager.
	*/
	var physics:phaser.Physics;
	
	/**
	* The Phaser.Physics.World configuration object.
	*/
	var physicsConfig:Dynamic;
	
	/**
	* Reference to the plugin manager.
	*/
	var plugins:PluginManager;
	
	/**
	* The value of the preserveDrawingBuffer flag affects whether or not the contents of the stencil buffer is retained after rendering.
	*/
	var preserveDrawingBuffer:Bool;
	
	/**
	* Automatically handles the core game loop via requestAnimationFrame or setTimeout
	*/
	var raf:phaser.RequestAnimationFrame;
	
	/**
	* The Pixi Renderer.
	*/
	var renderer:EitherType<pixi.CanvasRenderer, pixi.WebGLRenderer>;
	
	/**
	* The Renderer this game will use. Either Phaser.AUTO, Phaser.CANVAS, Phaser.WEBGL, Phaser.WEBGL_MULTI or Phaser.HEADLESS. After the game boots, renderType reflects the renderer in use: AUTO changes to CANVAS or WEBGL and WEBGL_MULTI changes to WEBGL. HEADLESS skips `render` hooks but not `preRender` or `postRender`; set {@link lockRender} to skip those as well.
	*/
	var renderType:Float;
	
	/**
	* The resolution of your game, as a ratio of canvas pixels to game pixels. This value is read only, but can be changed at start time it via a game configuration object.
	* Default: 1
	*/
	var resolution:Float;
	
	/**
	* Instance of repeatable random data generator helper.
	*/
	var rnd:phaser.RandomDataGenerator;
	
	/**
	* The game scale manager.
	*/
	var scale:phaser.ScaleManager;
	
	var scratch:phaser.BitmapData;
	
	/**
	* Reference to the sound manager.
	*/
	var sound:phaser.SoundManager;
	
	/**
	* Reference to the stage.
	*/
	var stage:phaser.Stage;
	
	/**
	* The StateManager.
	*/
	var state:phaser.StateManager;
	
	/**
	* When stepping is enabled this contains the current step cycle.
	*/
	var stepCount:Float;
	
	/**
	* Enable core loop stepping with Game.enableStep().
	*/
	var stepping:Bool;
	
	/**
	* Reference to the core game clock.
	*/
	var time:phaser.Time;
	
	/**
	* Use a transparent canvas background or not.
	*/
	var transparent:Bool;
	
	/**
	* Reference to the tween manager.
	*/
	var tweens:phaser.TweenManager;
	
	/**
	* The ID of the current/last logic update applied this render frame, starting from 0.
	* The first update is `currentUpdateID === 0` and the last update is `currentUpdateID === updatesThisFrame.`
	*/
	var currentUpdateID:Float;
	
	/**
	* Number of logic updates expected to occur this render frame; will be 1 unless there are catch-ups required (and allowed).
	*/
	var updatesThisFrame:Float;
	
	/**
	* The current Game Width in pixels.
	* 
	* _Do not modify this property directly:_ use {@link Phaser.ScaleManager#setGameSize} - eg. `game.scale.setGameSize(width, height)` - instead.
	* Default: 800
	*/
	var width:Float;
	
	/**
	* Reference to the world.
	*/
	var world:phaser.World;
	
	/**
	* Initialize engine sub modules and start the game.
	*/
	function boot():Void;
	
	/**
	* Nukes the entire game from orbit.
	* 
	* Calls destroy on Game.state, Game.sound, Game.scale, Game.stage, Game.input, Game.physics and Game.plugins.
	* 
	* Then sets all of those local handlers to null, destroys the renderer, removes the canvas from the DOM
	* and resets the PIXI default renderer.
	*/
	function destroy():Void;
	
	/**
	* Disables core game loop stepping.
	*/
	function disableStep():Void;
	
	/**
	* Enable core game loop stepping. When enabled you must call game.step() directly (perhaps via a DOM button?)
	* Calling step will advance the game loop by one frame. This is extremely useful for hard to track down errors!
	*/
	function enableStep():Void;
	
	/**
	* Called by the Stage visibility handler.
	* 
	* @param event The DOM event that caused the game to pause, if any.
	*/
	function focusGain(event:Dynamic):Void;
	
	/**
	* Called by the Stage visibility handler.
	* 
	* @param event The DOM event that caused the game to pause, if any.
	*/
	function focusLoss(event:Dynamic):Void;
	
	/**
	* Called by the Stage visibility handler.
	* 
	* @param event The DOM event that caused the game to pause, if any.
	*/
	function gamePaused(event:Dynamic):Void;
	
	/**
	* Called by the Stage visibility handler.
	* 
	* @param event The DOM event that caused the game to pause, if any.
	*/
	function gameResumed(event:Dynamic):Void;
	
	/**
	* Parses a Game configuration object.
	*/
	function parseConfig(config:Dynamic):Void;
	
	function removeFromDOM(canvas:HTMLCanvasElement):Void;
	
	/**
	* Checks if the device is capable of using the requested renderer and sets it up or an alternative if not.
	*/
	function setUpRenderer():Void;
	
	/**
	* Displays a Phaser version debug header in the console.
	*/
	function showDebugHeader():Void;
	
	/**
	* When stepping is enabled you must call this function directly (perhaps via a DOM button?) to advance the game loop by one frame.
	* This is extremely useful to hard to track down errors! Use the internal stepCount property to monitor progress.
	*/
	function step():Void;
	
	/**
	* The core game loop.
	* 
	* @param time The current time as provided by RequestAnimationFrame.
	*/
	function update(time:Float):Void;
	
	/**
	* Updates all logic subsystems in Phaser. Called automatically by Game.update.
	* 
	* @param timeStep The current timeStep value as determined by Game.update.
	*/
	function updateLogic(timeStep:Float):Void;
	
	/**
	* Runs the Render cycle.
	* It starts by calling State.preRender. In here you can do any last minute adjustments of display objects as required.
	* It then calls the renderer, which renders the entire display list, starting from the Stage object and working down.
	* It then calls plugin.render on any loaded plugins, in the order in which they were enabled.
	* After this State.render is called. Any rendering that happens here will take place on-top of the display list.
	* Finally plugin.postRender is called on any loaded plugins, in the order in which they were enabled.
	* This method is called automatically by Game.update, you don't need to call it directly.
	* Should you wish to have fine-grained control over when Phaser renders then use the `Game.lockRender` boolean.
	* Phaser will only render when this boolean is `false`.
	* 
	* @param elapsedTime The time elapsed since the last update.
	*/
	function updateRender(timeStep:Float):Void;
	
}

