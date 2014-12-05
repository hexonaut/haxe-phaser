package phaser.pixi.filters;

@:native("PIXI.NormalMapFilter")
extern class NormalMapFilter extends phaser.pixi.filters.AbstractFilter {
	
	/**
	 * The texture used for the displacement map. Must be power of 2 texture.
	 */
	var map:Dynamic;
	
	/**
	 * The multiplier used to scale the displacement result from the map calculation.
	 */
	var scale:Dynamic;
	
	/**
	 * The offset used to move the displacement map.
	 */
	var offset:Dynamic;
	
}
