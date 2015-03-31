package phaser.gameobjects.components;

@:native("Phaser.Component.Smoothed")
extern interface Smoothed {
	
	/**
	 * Enable or disable texture smoothing for this Game Object.
	 * 
	 * It only takes effect if the Game Object is using an image based texture.
	 * 
	 * Smoothing is enabled by default.
	 */
	var smoothed:Bool;
	
}
