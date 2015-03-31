package phaser.gameobjects.components;

@:native("Phaser.Component.Crop")
extern interface Crop {
	
	/**
	 * The Rectangle used to crop the texture this Game Object uses.
	 * Set this property via crop. 
	 * If you modify this property directly you must call updateCrop in order to have the change take effect.
	 */
	var cropRect:phaser.geom.Rectangle;
	
}
