package phaser.pixi.renderers.webgl.utils;

@:native("PIXI.WebGLSpriteBatch")
extern class WebGLSpriteBatch {
	
	/**
	 * @class WebGLSpriteBatch
	 */
	function new ();
	
	/**
	 * @property vertSize
	 */
	var vertSize:Dynamic;
	
	/**
	 * The number of images in the SpriteBatch before it flushes
	 */
	var size:Float;
	
	/**
	 * Holds the vertices
	 */
	var vertices:Dynamic;
	
	/**
	 * View on the vertices as a Float32Array
	 */
	var positions:Dynamic;
	
	/**
	 * View on the vertices as a Uint32Array
	 */
	var colors:Dynamic;
	
	/**
	 * Holds the indices
	 */
	var indices:Dynamic;
	
	/**
	 * @property lastIndexCount
	 */
	var lastIndexCount:Dynamic;
	
	/**
	 * @property drawing
	 */
	var drawing:Dynamic;
	
	/**
	 * @property currentBatchSize
	 */
	var currentBatchSize:Dynamic;
	
	/**
	 * @property currentBaseTexture
	 */
	var currentBaseTexture:Dynamic;
	
	/**
	 * @property dirty
	 */
	var dirty:Dynamic;
	
	/**
	 * @property textures
	 */
	var textures:Dynamic;
	
	/**
	 * @property blendModes
	 */
	var blendModes:Dynamic;
	
	/**
	 * @property shaders
	 */
	var shaders:Dynamic;
	
	/**
	 * @property sprites
	 */
	var sprites:Dynamic;
	
	/**
	 * @property defaultShader
	 */
	var defaultShader:Dynamic;
	
}
