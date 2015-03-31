package phaser.gameobjects.components;

@:native("Phaser.Component.ScaleMinMax")
extern interface ScaleMinMax {
	
	/**
	 * The callback that will apply any scale limiting to the worldTransform.
	 */
	var transformCallback:Dynamic;
	
	/**
	 * The context under which transformCallback is called.
	 */
	var transformCallbackContext:Dynamic;
	
	/**
	 * The minimum scale this Game Object will scale down to.
	 * 
	 * It allows you to prevent a parent from scaling this Game Object lower than the given value.
	 * 
	 * Set it to null to remove the limit.
	 */
	var scaleMin:phaser.geom.Point;
	
	/**
	 * The maximum scale this Game Object will scale up to. 
	 * 
	 * It allows you to prevent a parent from scaling this Game Object higher than the given value.
	 * 
	 * Set it to null to remove the limit.
	 */
	var scaleMax:phaser.geom.Point;
	
}
