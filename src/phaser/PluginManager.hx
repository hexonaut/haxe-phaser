package phaser;

import haxe.extern.Rest;

/**
* The Plugin Manager is responsible for the loading, running and unloading of Phaser Plugins.
*/
@:native("Phaser.PluginManager")
extern class PluginManager implements IStateCycle {

	/**
	* The Plugin Manager is responsible for the loading, running and unloading of Phaser Plugins.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* An array of all the plugins being managed by this PluginManager.
	*/
	var plugins:Array<phaser.Plugin>;
	
	/**
	* Add a new Plugin into the PluginManager.
	* The Plugin must have 2 properties: game and parent. Plugin.game is set to the game reference the PluginManager uses, and parent is set to the PluginManager.
	* 
	* @param plugin The Plugin to add into the PluginManager. This can be a function or an existing object.
	* @param args Additional arguments that will be passed to the Plugin.init method.
	* @return The Plugin that was added to the manager.
	*/
	function add<T:phaser.Plugin>(plugin:PluginConstructorOf<T>, parameters:Rest<Dynamic>):T;
	
	/**
	* Clear down this PluginManager, calls destroy on every plugin and nulls out references.
	*/
	function destroy():Void;
	
	/**
	* Post-render is called after the Game Renderer and State.render have run.
	* It only calls plugins who have visible=true.
	*/
	function postRender():Void;
	
	/**
	* PostUpdate is the last thing to be called before the world render.
	* In particular, it is called after the world postUpdate, which means the camera has been adjusted.
	* It only calls plugins who have active=true.
	*/
	function postUpdate():Void;
	
	/**
	* Pre-update is called at the very start of the update cycle, before any other subsystems have been updated (including Physics).
	* It only calls plugins who have active=true.
	*/
	function preUpdate():Void;
	
	/**
	* Remove a Plugin from the PluginManager. It calls Plugin.destroy on the plugin before removing it from the manager.
	* 
	* @param plugin The plugin to be removed.
	* @param destroy Call destroy on the plugin that is removed? - Default: true
	*/
	function remove(plugin:phaser.Plugin, ?destroy:Bool):Void;
	
	/**
	* Remove all Plugins from the PluginManager. It calls Plugin.destroy on every plugin before removing it from the manager.
	*/
	function removeAll():Void;
	
	/**
	* Render is called right after the Game Renderer completes, but before the State.render.
	* It only calls plugins who have visible=true.
	*/
	function render():Void;
	
	/**
	* Update is called after all the core subsystems (Input, Tweens, Sound, etc) and the State have updated, but before the render.
	* It only calls plugins who have active=true.
	*/
	function update():Void;
	
}

