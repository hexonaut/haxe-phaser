package phaser.pixi.filters;

@:native("PIXI.FilterBlock")
extern class FilterBlock {
	
	/**
	 * A target and pass info object for filters.
	 */
	function new ();
	
	/**
	 * The visible state of this FilterBlock.
	 */
	var visible:Bool;
	
	/**
	 * The renderable state of this FilterBlock.
	 */
	var renderable:Bool;
	
}
