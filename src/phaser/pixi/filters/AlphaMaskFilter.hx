package phaser.pixi.filters;

@:native("PIXI.AlphaMaskFilter")
extern class AlphaMaskFilter extends phaser.pixi.filters.AbstractFilter {
	
	/**
	 * The texture used for the displacement map. Must be power of 2 sized texture.
	 */
	var map:Dynamic;
	
}
