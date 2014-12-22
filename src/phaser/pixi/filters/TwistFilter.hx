package phaser.pixi.filters;

@:native("PIXI.TwistFilter")
extern class TwistFilter extends phaser.pixi.filters.AbstractFilter {
	
	/**
	 * This point describes the the offset of the twist.
	 */
	var offset:Dynamic;
	
	/**
	 * This radius of the twist.
	 */
	var radius:Float;
	
	/**
	 * This angle of the twist.
	 */
	var angle:Float;
	
}
