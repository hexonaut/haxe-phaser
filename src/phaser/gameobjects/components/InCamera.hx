package phaser.gameobjects.components;

@:native("Phaser.Component.InCamera")
extern interface InCamera {
	
	/**
	 * Checks if this Game Objects bounds intersects with the Game Cameras bounds.
	 * 
	 * It will be true if they intersect, or false if the Game Object is fully outside of the Cameras bounds.
	 * 
	 * An object outside the bounds can be considered for camera culling if it has the AutoCull component.
	 */
	var inCamera(default, null):Bool;
	
}
