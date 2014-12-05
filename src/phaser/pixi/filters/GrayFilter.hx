package phaser.pixi.filters;

@:native("PIXI.GrayFilter")
extern class GrayFilter extends phaser.pixi.filters.AbstractFilter {
	
	/**
	 * The strength of the gray. 1 will make the object black and white, 0 will make the object its normal color.
	 */
	var gray:Float;
	
}
