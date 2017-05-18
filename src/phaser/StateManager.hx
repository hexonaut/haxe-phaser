package phaser;

import haxe.extern.Rest;

/**
* The State Manager is responsible for loading, setting up and switching game states.
*/
@:native("Phaser.StateManager")
extern class StateManager {

	/**
	* The State Manager is responsible for loading, setting up and switching game states.
	* 
	* @param game A reference to the currently running game.
	* @param pendingState A State object to seed the manager with.
	*/
	function new(game:phaser.Game, ?pendingState:phaser.State);
	
	/**
	* True if the current state has had its `create` method run (if it has one, if not this is true by default).
	*/
	var created:Bool;
	
	/**
	* The current active State object.
	*/
	var current:String;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* This is called when the state preload has finished and creation begins.
	*/
	var onCreateCallback:Dynamic;
	
	/**
	* This is called when the state is set as the active state.
	*/
	var onInitCallback:Dynamic;
	
	/**
	* This is called when the State is rendered during the preload phase.
	*/
	var onLoadRenderCallback:Dynamic;
	
	/**
	* This is called when the State is updated during the preload phase.
	*/
	var onLoadUpdateCallback:Dynamic;
	
	/**
	* This is called when the game is paused.
	*/
	var onPausedCallback:Dynamic;
	
	/**
	* This is called every frame while the game is paused.
	*/
	var onPauseUpdateCallback:Dynamic;
	
	/**
	* This is called when the state starts to load assets.
	*/
	var onPreloadCallback:Dynamic;
	
	/**
	* This is called before the state is rendered and before the stage is cleared but after all game objects have had their final properties adjusted.
	*/
	var onPreRenderCallback:Dynamic;
	
	/**
	* This is called post-render. It doesn't happen during preload (see onLoadRenderCallback).
	*/
	var onRenderCallback:Dynamic;
	
	/**
	* This is called when the game is resumed from a paused state.
	*/
	var onResumedCallback:Dynamic;
	
	/**
	* This is called if ScaleManager.scalemode is RESIZE and a resize event occurs. It's passed the new width and height.
	*/
	var onResizeCallback:Dynamic;
	
	/**
	* This is called when the state is shut down (i.e. swapped to another state).
	*/
	var onShutDownCallback:Dynamic;
	
	/**
	* This is called when the state is updated, every game loop. It doesn't happen during preload (@see onLoadUpdateCallback).
	*/
	var onUpdateCallback:Dynamic;
	
	/**
	* The object containing Phaser.States.
	*/
	var states:Dynamic;
	
	/**
	* onStateChange is a Phaser.Signal that is dispatched whenever the game changes state.
	* 
	* It is dispatched only when the new state is started, which isn't usually at the same time as StateManager.start
	* is called because state swapping is done in sync with the game loop. It is dispatched *before* any of the new states
	* methods (such as preload and create) are called, and *after* the previous states shutdown method has been run.
	* 
	* The callback you specify is sent two parameters: the string based key of the new state,
	* and the second parameter is the string based key of the old / previous state.
	*/
	var onStateChange:phaser.Signal;
	
	/**
	* Adds a new State into the StateManager. You must give each State a unique key by which you'll identify it.
	* The State can be either a Phaser.State object (or an object that extends it), a plain JavaScript object or a function.
	* If a function is given a new state object will be created by calling it.
	* 
	* @param key A unique key you use to reference this state, i.e. "MainMenu", "Level1".
	* @param state The state you want to switch to.
	* @param autoStart If true the State will be started immediately after adding it.
	*/
	function add(key:String, state:Dynamic, ?autoStart:Bool):Void;
	
	/**
	* Checks if a given phaser state is valid. A State is considered valid if it has at least one of the core functions: preload, create, update or render.
	* 
	* @param key The key of the state you want to check.
	* @return true if the State has the required functions, otherwise false.
	*/
	function checkState(key:String):Bool;
	
	/**
	* This method clears the current State, calling its shutdown callback. The process also removes any active tweens,
	* resets the camera, resets input, clears physics, removes timers and if set clears the world and cache too.
	*/
	function clearCurrentState():Void;
	
	/**
	* Removes all StateManager callback references to the State object, nulls the game reference and clears the States object.
	* You don't recover from this without rebuilding the Phaser instance again.
	*/
	function destroy():Void;
	
	/**
	* Gets the current State.
	*/
	function getCurrentState():phaser.State;
	
	/**
	* Links game properties to the State given by the key.
	* 
	* @param key State key.
	*/
	function link(key:String):Void;
	
	function loadComplete():Void;
	
	/**
	* undefined
	* 
	* @param elapsedTime The time elapsed since the last update.
	*/
	function preRender(elapsedTime:Float):Void;
	
	/**
	* preUpdate is called right at the start of the game loop. It is responsible for changing to a new state that was requested previously.
	*/
	function preUpdate():Void;
	
	function render():Void;
	
	/**
	* Delete the given state.
	* 
	* @param key A unique key you use to reference this state, i.e. "MainMenu", "Level1".
	*/
	function remove(key:String):Void;
	
	function resume():Void;
	
	/**
	* Restarts the current State. State.shutDown will be called (if it exists) before the State is restarted.
	* 
	* @param clearWorld Clear everything in the world? This clears the World display list fully (but not the Stage, so if you've added your own objects to the Stage they will need managing directly) - Default: true
	* @param clearCache Clear the Game.Cache? This purges out all loaded assets. The default is false and you must have clearWorld=true if you want to clearCache as well.
	* @param args Additional parameters that will be passed to the State.init function if it has one.
	*/
	function restart(?clearWorld:Bool, ?clearCache:Bool, args:Rest<Dynamic>):Void;
	
	function resize(width:Float, height:Float):Void;
	
	/**
	* Start the given State. If a State is already running then State.shutDown will be called (if it exists) before switching to the new State.
	* 
	* @param key The key of the state you want to start.
	* @param clearWorld Clear everything in the world? This clears the World display list fully (but not the Stage, so if you've added your own objects to the Stage they will need managing directly) - Default: true
	* @param clearCache Clear the Game.Cache? This purges out all loaded assets. The default is false and you must have clearWorld=true if you want to clearCache as well.
	* @param args Additional parameters that will be passed to the State.init function (if it has one).
	*/
	function start(key:String, ?clearWorld:Bool, ?clearCache:Bool, args:Rest<Dynamic>):Void;
	
	function update():Void;
	
	/**
	* Nulls all State level Phaser properties, including a reference to Game.
	* 
	* @param key State key.
	*/
	function unlink(key:String):Void;
	
}

