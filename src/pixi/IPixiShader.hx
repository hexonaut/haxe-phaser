package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;
import js.html.webgl.Program as WebGLProgram;

@:native("PIXI.IPixiShader")
extern interface IPixiShader {

	var fragmentSrc:Array<String>;
	
	var gl:WebGLRenderingContext;
	
	var program:WebGLProgram;
	
	var vertexSrc:Array<String>;
	
	function destroy():Void;
	
	function init():Void;
	
}

