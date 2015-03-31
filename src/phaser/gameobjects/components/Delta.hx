package phaser.gameobjects.components;

@:native("Phaser.Component.Delta")
extern interface Delta {
	
	/**
	 * Returns the delta x value. The difference between world.x now and in the previous frame.
	 * 
	 * The value will be positive if the Game Object has moved to the right or negative if to the left.
	 */
	var deltaX(default, null):Float;
	
	/**
	 * Returns the delta y value. The difference between world.y now and in the previous frame.
	 * 
	 * The value will be positive if the Game Object has moved down or negative if up.
	 */
	var deltaY(default, null):Float;
	
	/**
	 * Returns the delta z value. The difference between rotation now and in the previous frame.
	 */
	var deltaZ(default, null):Float;
	
}
