package phaser;

/**
* Phaser.Particles is the Particle Manager for the game. It is called during the game update loop and in turn updates any Emitters attached to it.
*/
@:native("Phaser.Particles")
extern class Particles {

	/**
	* Phaser.Particles is the Particle Manager for the game. It is called during the game update loop and in turn updates any Emitters attached to it.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* Internal emitters store.
	*/
	var emitters:Dynamic;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* -
	*/
	var ID:Float;
	
	/**
	* Adds a new Particle Emitter to the Particle Manager.
	* 
	* @param emitter The emitter to be added to the particle manager.
	* @return The emitter that was added.
	*/
	function add(emitter:phaser.particles.arcade.Emitter):phaser.particles.arcade.Emitter;
	
	/**
	* Removes an existing Particle Emitter from the Particle Manager.
	* 
	* @param emitter The emitter to remove.
	*/
	function remove(emitter:phaser.particles.arcade.Emitter):Void;
	
	/**
	* Updates all Emitters who have their exists value set to true.
	* 
	* Phaser no longer uses this method; Emitters receive updates via {@link Phaser.Stage#update} instead.
	*/
	function update():Void;
	
}

