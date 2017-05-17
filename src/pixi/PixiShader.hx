package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;
import js.html.webgl.Program as WebGLProgram;

@:native("PIXI.PixiShader")
extern class PixiShader implements IPixiShader {

	/**
	* undefined
	* 
	* @param gl the current WebGL drawing context
	*/
	function new(gl:WebGLRenderingContext);
	
	/**
	* Uniform attributes cache.
	*/
	var attributes:Array<ShaderAttribute>;
	
	/**
	* The Default Vertex shader source.
	*/
	var defaultVertexSrc:Array<String>;
	
	/**
	* A dirty flag
	*/
	var dirty:Bool;
	
	/**
	* A local flag
	*/
	var firstRun:Bool;
	
	/**
	* A local texture counter for multi-texture shaders.
	*/
	var textureCount:Float;
	
	/**
	* The fragment shader.
	*/
	var fragmentSrc:Array<String>;
	
	var gl:WebGLRenderingContext;
	
	/**
	* The WebGL program.
	*/
	var program:WebGLProgram;
	
	var vertexSrc:Array<String>;
	
	/**
	* Initialises a Sampler2D uniform (which may only be available later on after initUniforms once the texture has loaded)
	*/
	function initSampler2D():Void;
	
	/**
	* Initialises the shader uniform values.
	* 
	* Uniforms are specified in the GLSL_ES Specification: http://www.khronos.org/registry/webgl/specs/latest/1.0/
	* http://www.khronos.org/registry/gles/specs/2.0/GLSL_ES_Specification_1.0.17.pdf
	*/
	function initUniforms():Void;
	
	/**
	* Updates the shader uniform values.
	*/
	function syncUniforms():Void;
	
	/**
	* Destroys the shader.
	*/
	function destroy():Void;
	
	/**
	* Initialises the shader.
	*/
	function init():Void;
	
}

