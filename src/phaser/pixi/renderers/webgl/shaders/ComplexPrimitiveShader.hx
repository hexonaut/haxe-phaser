package phaser.pixi.renderers.webgl.shaders;

@:native("PIXI.ComplexPrimitiveShader")
extern class ComplexPrimitiveShader {
	
	/**
	 * @class ComplexPrimitiveShader
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
	 * The vertex shader.
	 */
	var vertexSrc:Array<Dynamic>;
	
}
