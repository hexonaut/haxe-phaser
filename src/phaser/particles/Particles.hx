package phaser.particles;

@:native("Phaser.Particles")
extern class Particles {
	
	/**
	 * Phaser.Particles is the Particle Manager for the game. It is called during the game update loop and in turn updates any Emitters attached to it.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Internal emitters store.
	 */
	var emitters:Dynamic;
	
	/**
	 * 
	 */
	var ID:Float;
	
	/**
	 * Adds a new Particle Emitter to the Particle Manager.
	 */
	function add (emitter:Dynamic):Dynamic;
	
	/**
	 * Removes an existing Particle Emitter from the Particle Manager.
	 */
	function remove (emitter:Dynamic):Void;
	
	/**
	 * Called by the core game loop. Updates all Emitters who have their exists value set to true.
	 */
	function update ():Void;
	
}
