package pixi;

import js.html.webgl.Framebuffer as WebGLFramebuffer;
import js.html.webgl.RenderingContext as WebGLRenderingContext;
import js.html.webgl.Program as WebGLProgram;

@:native("PIXI.FilterTexture")
extern class FilterTexture {

	/**
	* undefined
	* 
	* @param gl the current WebGL drawing context
	* @param width the horizontal range of the filter
	* @param height the vertical range of the filter
	* @param scaleMode See {{#crossLink "PIXI/scaleModes:property"}}PIXI.scaleModes{{/crossLink}} for possible values
	*/
	function new(gl:WebGLRenderingContext, width:Float, height:Float, scaleMode:ScaleModes);
	
	var fragmentSrc:Array<String>;
	
	var frameBuffer:WebGLFramebuffer;
	
	var gl:WebGLRenderingContext;
	
	var program:WebGLProgram;
	
	var scaleMode:Float;
	
	var texture:WebGLTexture;
	
	/**
	* Clears the filter texture.
	*/
	function clear():Void;
	
	/**
	* Resizes the texture to the specified width and height
	* 
	* @param width the new width of the texture
	* @param height the new height of the texture
	*/
	function resize(width:Float, height:Float):Void;
	
	/**
	* Destroys the filter texture.
	*/
	function destroy():Void;
	
}

