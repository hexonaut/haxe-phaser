package phaser.pixi.renderers.webgl.utils;

@:native("PIXI.WebGLShaderManager")
extern class WebGLShaderManager {
	
	/**
	 * @class WebGLShaderManager
	 */
	function new ();
	
	/**
	 * @property maxAttibs
	 */
	var maxAttibs:Dynamic;
	
	/**
	 * @property attribState
	 */
	var attribState:Dynamic;
	
	/**
	 * @property tempAttribState
	 */
	var tempAttribState:Dynamic;
	
	/**
	 * @property stack
	 */
	var stack:Dynamic;
	
}
