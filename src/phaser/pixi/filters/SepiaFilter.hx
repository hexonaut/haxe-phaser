package phaser.pixi.filters;

@:native("PIXI.SepiaFilter")
extern class SepiaFilter extends phaser.pixi.filters.AbstractFilter {
	
	/**
	 * The strength of the sepia. 1 will apply the full sepia effect, 0 will make the object its normal color.
	 */
	var sepia:Float;
	
}
