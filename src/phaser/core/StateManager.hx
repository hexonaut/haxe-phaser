package phaser.core;

@:native("Phaser.StateManager")
extern class StateManager {
	
	/**
	 * The State Manager is responsible for loading, setting up and switching game states.
	 */
	@:overload(function (game:phaser.core.Game, ?pendingState:phaser.core.State):Void {})
	function new (game:phaser.core.Game, ?pendingState:Dynamic);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The object containing Phaser.States.
	 */
	var states:Dynamic;
	
	/**
	 * The state to be switched to in the next frame.
	 */
	var _pendingState:phaser.core.State;
	
	/**
	 * Clear the world when we switch state?
	 */
	var _clearWorld:Bool;
	
	/**
	 * Clear the cache when we switch state?
	 */
	var _clearCache:Bool;
	
	/**
	 * Flag that sets if the State has been created or not.
	 */
	var _created:Bool;
	
	/**
	 * Temporary container when you pass vars from one State to another.
	 */
	var _args:Dynamic;
	
	/**
	 * The current active State object (defaults to null).
	 */
	var current:String;
	
	/**
	 * This is called when the state is set as the active state.
	 */
	var onInitCallback:Dynamic;
	
	/**
	 * This is called when the state starts to load assets.
	 */
	var onPreloadCallback:Dynamic;
	
	/**
	 * This is called when the state preload has finished and creation begins.
	 */
	var onCreateCallback:Dynamic;
	
	/**
	 * This is called when the state is updated, every game loop. It doesn't happen during preload (@see onLoadUpdateCallback).
	 */
	var onUpdateCallback:Dynamic;
	
	/**
	 * This is called post-render. It doesn't happen during preload (see onLoadRenderCallback).
	 */
	var onRenderCallback:Dynamic;
	
	/**
	 * This is called if ScaleManager.scalemode is RESIZE and a resize event occurs. It's passed the new width and height.
	 */
	var onResizeCallback:Dynamic;
	
	/**
	 * This is called before the state is rendered and before the stage is cleared but after all game objects have had their final properties adjusted.
	 */
	var onPreRenderCallback:Dynamic;
	
	/**
	 * This is called when the State is updated during the preload phase.
	 */
	var onLoadUpdateCallback:Dynamic;
	
	/**
	 * This is called when the State is rendered during the preload phase.
	 */
	var onLoadRenderCallback:Dynamic;
	
	/**
	 * This is called when the game is paused.
	 */
	var onPausedCallback:Dynamic;
	
	/**
	 * This is called when the game is resumed from a paused state.
	 */
	var onResumedCallback:Dynamic;
	
	/**
	 * This is called every frame while the game is paused.
	 */
	var onPauseUpdateCallback:Dynamic;
	
	/**
	 * This is called when the state is shut down (i.e. swapped to another state).
	 */
	var onShutDownCallback:Dynamic;
	
	/**
	 * The Boot handler is called by Phaser.Game when it first starts up.
	 */
	function boot ():Void;
	
	/**
	 * Adds a new State into the StateManager. You must give each State a unique key by which you'll identify it.
	 * The State can be either a Phaser.State object (or an object that extends it), a plain JavaScript object or a function.
	 * If a function is given a new state object will be created by calling it.
	 */
	@:overload(function (key:String, state:phaser.core.State, ?autoStart:Bool = false):Void {})
	@:overload(function (key:String, state:Dynamic, ?autoStart:Bool = false):Void {})
	function add (key:String, state:Dynamic, ?autoStart:Bool = false):Void;
	
	/**
	 * Delete the given state.
	 */
	function remove (key:String):Void;
	
	/**
	 * Start the given State. If a State is already running then State.shutDown will be called (if it exists) before switching to the new State.
	 */
	function start (key:String, ?clearWorld:Bool = true, ?clearCache:Bool = false, ?parameter0:Dynamic, ?parameter1:Dynamic, ?parameter2:Dynamic, ?parameter3:Dynamic, ?parameter4:Dynamic):Void;
	
	/**
	 * Restarts the current State. State.shutDown will be called (if it exists) before the State is restarted.
	 */
	function restart (?clearWorld:Bool = true, ?clearCache:Bool = false, ?parameter0:Dynamic, ?parameter1:Dynamic, ?parameter2:Dynamic, ?parameter3:Dynamic, ?parameter4:Dynamic):Void;
	
	/**
	 * Used by onInit and onShutdown when those functions don't exist on the state
	 */
	function dummy ():Void;
	
	/**
	 * preUpdate is called right at the start of the game loop. It is responsible for changing to a new state that was requested previously.
	 */
	function preUpdate ():Void;
	
	/**
	 * This method clears the current State, calling its shutdown callback. The process also removes any active tweens,
	 * resets the camera, resets input, clears physics, removes timers and if set clears the world and cache too.
	 */
	function clearCurrentState ():Void;
	
	/**
	 * Checks if a given phaser state is valid. A State is considered valid if it has at least one of the core functions: preload, create, update or render.
	 */
	function checkState (key:String):Bool;
	
	/**
	 * Links game properties to the State given by the key.
	 */
	function link (key:String):Void;
	
	/**
	 * Nulls all State level Phaser properties, including a reference to Game.
	 */
	function unlink (key:String):Void;
	
	/**
	 * Sets the current State. Should not be called directly (use StateManager.start)
	 */
	function setCurrentState (key:String):Void;
	
	/**
	 * Gets the current State.
	 */
	function getCurrentState ():phaser.core.State;
	
	/**
	 * Removes all StateManager callback references to the State object, nulls the game reference and clears the States object.
	 * You don't recover from this without rebuilding the Phaser instance again.
	 */
	function destroy ():Void;
	
}
