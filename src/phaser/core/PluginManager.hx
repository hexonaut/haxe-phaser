package phaser.core;

@:native("Phaser.PluginManager")
extern class PluginManager {
	
	/**
	 * The Plugin Manager is responsible for the loading, running and unloading of Phaser Plugins.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * An array of all the plugins being managed by this PluginManager.
	 */
	var plugins:Dynamic;
	
	/**
	 * Internal cache var.
	 */
	var _len:Float;
	
	/**
	 * Internal cache var.
	 */
	var _i:Float;
	
	/**
	 * Add a new Plugin into the PluginManager.
	 * The Plugin must have 2 properties: game and parent. Plugin.game is set to the game reference the PluginManager uses, and parent is set to the PluginManager.
	 */
	@:overload(function (plugin:Dynamic, ?parameter0:Dynamic, ?parameter1:Dynamic, ?parameter2:Dynamic, ?parameter3:Dynamic, ?parameter4:Dynamic):phaser.core.Plugin {})
	function add (plugin:phaser.core.Plugin, ?parameter0:Dynamic, ?parameter1:Dynamic, ?parameter2:Dynamic, ?parameter3:Dynamic, ?parameter4:Dynamic):phaser.core.Plugin;
	
	/**
	 * Remove a Plugin from the PluginManager. It calls Plugin.destroy on the plugin before removing it from the manager.
	 */
	function remove (plugin:phaser.core.Plugin):Void;
	
	/**
	 * Remove all Plugins from the PluginManager. It calls Plugin.destroy on every plugin before removing it from the manager.
	 */
	function removeAll ():Void;
	
	/**
	 * Pre-update is called at the very start of the update cycle, before any other subsystems have been updated (including Physics).
	 * It only calls plugins who have active=true.
	 */
	function preUpdate ():Void;
	
	/**
	 * Update is called after all the core subsystems (Input, Tweens, Sound, etc) and the State have updated, but before the render.
	 * It only calls plugins who have active=true.
	 */
	function update ():Void;
	
	/**
	 * PostUpdate is the last thing to be called before the world render.
	 * In particular, it is called after the world postUpdate, which means the camera has been adjusted.
	 * It only calls plugins who have active=true.
	 */
	function postUpdate ():Void;
	
	/**
	 * Render is called right after the Game Renderer completes, but before the State.render.
	 * It only calls plugins who have visible=true.
	 */
	function render ():Void;
	
	/**
	 * Post-render is called after the Game Renderer and State.render have run.
	 * It only calls plugins who have visible=true.
	 */
	function postRender ():Void;
	
	/**
	 * Clear down this PluginManager, calls destroy on every plugin and nulls out references.
	 */
	function destroy ():Void;
	
}
