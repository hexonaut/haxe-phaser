package phaser.gameobjects.components;

@:native("Phaser.Component.Health")
extern interface Health {
	
	/**
	 * The Game Objects health value. This is a handy property for setting and manipulating health on a Game Object.
	 * 
	 * It can be used in combination with the damage method or modified directly.
	 */
	var health:Float;
	
	/**
	 * The Game Objects maximum health value. This works in combination with the heal method to ensure
	 * the health value never exceeds the maximum.
	 */
	var maxHealth:Float;
	
}
