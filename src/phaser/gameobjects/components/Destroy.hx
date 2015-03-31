package phaser.gameobjects.components;

@:native("Phaser.Component.Destroy")
extern class Destroy {
	
	/**
	 * As a Game Object runs through its destroy method this flag is set to true, 
	 * and can be checked in any sub-systems or plugins it is being destroyed from.
	 */
	var destroyPhase:Bool;
	
}
