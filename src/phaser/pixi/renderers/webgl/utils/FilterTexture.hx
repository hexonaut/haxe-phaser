package phaser.pixi.renderers.webgl.utils;

@:native("PIXI.FilterTexture")
extern class FilterTexture {
	
	/**
	 * @class FilterTexture
	 */
	function new (WebGLContext:Dynamic, Number:Dynamic, Number:Dynamic, Number:Dynamic);
	
	/**
	 * @property gl
	 */
	var gl:Dynamic;
	
	/**
	 * @property frameBuffer
	 */
	var frameBuffer:Dynamic;
	
	/**
	 * @property texture
	 */
	var texture:Dynamic;
	
}
