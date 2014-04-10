package phaser.core;

@:native("Phaser.Plugin")
extern class Plugin {
	
	/**
	 * This is a base Plugin template to use for any Phaser plugin development.
	 */
	function new (game:phaser.core.Game, parent:Dynamic);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The parent of this plugin. If added to the PluginManager the parent will be set to that, otherwise it will be null.
	 */
	var parent:Dynamic;
	
	/**
	 * A Plugin with active=true has its preUpdate and update methods called by the parent, otherwise they are skipped.
	 */
	var active:Bool;
	
	/**
	 * A Plugin with visible=true has its render and postRender methods called by the parent, otherwise they are skipped.
	 */
	var visible:Bool;
	
	/**
	 * A flag to indicate if this plugin has a preUpdate method.
	 */
	var hasPreUpdate:Bool;
	
	/**
	 * A flag to indicate if this plugin has an update method.
	 */
	var hasUpdate:Bool;
	
	/**
	 * A flag to indicate if this plugin has a postUpdate method.
	 */
	var hasPostUpdate:Bool;
	
	/**
	 * A flag to indicate if this plugin has a render method.
	 */
	var hasRender:Bool;
	
	/**
	 * A flag to indicate if this plugin has a postRender method.
	 */
	var hasPostRender:Bool;
	
	/**
	 * Pre-update is called at the very start of the update cycle, before any other subsystems have been updated (including Physics).
	 * It is only called if active is set to true.
	 */
	function preUpdate ():Void;
	
	/**
	 * Update is called after all the core subsystems (Input, Tweens, Sound, etc) and the State have updated, but before the render.
	 * It is only called if active is set to true.
	 */
	function update ():Void;
	
	/**
	 * Render is called right after the Game Renderer completes, but before the State.render.
	 * It is only called if visible is set to true.
	 */
	function render ():Void;
	
	/**
	 * Post-render is called after the Game Renderer and State.render have run.
	 * It is only called if visible is set to true.
	 */
	function postRender ():Void;
	
	/**
	 * Clear down this Plugin and null out references
	 */
	function destroy ():Void;
	
}
