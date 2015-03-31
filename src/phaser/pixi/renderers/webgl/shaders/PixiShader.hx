package phaser.pixi.renderers.webgl.shaders;

@:native("PIXI.PixiShader")
extern class PixiShader {
	
	/**
	 * @class PixiShader
	 */
	function new (WebGLContext:Dynamic);
	
	/**
	 * @property _UID
	 */
	var _UID:Dynamic;
	
	/**
	 * @property gl
	 */
	var gl:Dynamic;
	
	/**
	 * The WebGL program.
	 */
	var program:Dynamic;
	
	/**
	 * The fragment shader.
	 */
	var fragmentSrc:Array<Dynamic>;
	
	/**
	 * A local texture counter for multi-texture shaders.
	 */
	var textureCount:Float;
	
	/**
	 * A local flag
	 */
	var firstRun:Bool;
	
	/**
	 * A dirty flag
	 */
	var dirty:Bool;
	
	/**
	 * Uniform attributes cache.
	 */
	var attributes:Array<Dynamic>;
	
	/**
	 * The Default Vertex shader source.
	 */
	var defaultVertexSrc:String;
	
}
