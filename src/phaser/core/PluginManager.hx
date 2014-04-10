package phaser.core;

@:native("Phaser.PluginManager")
extern class PluginManager {
	
	/**
	 * The Plugin Manager is responsible for the loading, running and unloading of Phaser Plugins.
	 */
	function new (game:phaser.core.Game, parent:Dynamic);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Description.
	 */
	var _parent:Dynamic;
	
	/**
	 * Description.
	 */
	var plugins:Array<Dynamic>;
	
	/**
	 * Description.
	 */
	var _pluginsLength:Array<Dynamic>;
	
	/**
	 * Add a new Plugin to the PluginManager.
	 * The plugin's game and parent reference are set to this game and pluginmanager parent.
	 */
	function add (plugin:phaser.core.Plugin):phaser.core.Plugin;
	
	/**
	 * Remove a Plugin from the PluginManager.
	 */
	function remove (plugin:phaser.core.Plugin):Void;
	
	/**
	 * Removes all Plugins from the PluginManager.
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
	 * Clear down this PluginManager and null out references
	 */
	function destroy ():Void;
	
}
