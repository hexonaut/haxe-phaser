package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;

@:native("PIXI.WebGLStencilManager")
extern class WebGLStencilManager {

	var stencilStack:Array<Dynamic>;
	
	var reverse:Bool;
	
	var count:Float;
	
	/**
	* TODO this does not belong here!
	* 
	* @param graphics -
	* @param webGLData -
	* @param renderSession -
	*/
	function bindGraphics(graphics:Graphics, webGLData:Array<Dynamic>, renderSession:RenderSession):Void;
	
	/**
	* Destroys the mask stack.
	*/
	function destroy():Void;
	
	/**
	* undefined
	* 
	* @param graphics -
	* @param webGLData -
	* @param renderSession -
	*/
	function popStencil(graphics:Graphics, webGLData:Array<Dynamic>, renderSession:RenderSession):Void;
	
	function pushStencil(graphics:Graphics, webGLData:Array<Dynamic>, renderSession:RenderSession):Void;
	
	/**
	* Sets the drawing context to the one given in parameter.
	* 
	* @param gl the current WebGL drawing context
	*/
	function setContext(gl:WebGLRenderingContext):Void;
	
}

