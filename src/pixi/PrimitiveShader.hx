package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;
import js.html.webgl.Program as WebGLProgram;

@:native("PIXI.PrimitiveShader")
extern class PrimitiveShader implements IPixiShader {

	/**
	* undefined
	* 
	* @param gl the current WebGL drawing context
	*/
	function new(gl:WebGLRenderingContext);
	
	/**
	* The fragment shader.
	*/
	var fragmentSrc:Array<String>;
	
	var gl:WebGLRenderingContext;
	
	/**
	* The WebGL program.
	*/
	var program:WebGLProgram;
	
	/**
	* The vertex shader.
	*/
	var vertexSrc:Array<String>;
	
	/**
	* Destroys the shader.
	*/
	function destroy():Void;
	
	/**
	* Initialises the shader.
	*/
	function init():Void;
	
}

