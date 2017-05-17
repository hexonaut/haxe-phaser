package pixi;

import js.html.webgl.RenderingContext as WebGLRenderingContext;

@:native("PIXI.WebGLMaskManager")
extern class WebGLMaskManager {

	/**
	* Destroys the mask stack.
	*/
	function destroy():Void;
	
	/**
	* Removes the last filter from the filter stack and doesn't return it.
	* 
	* @param maskData -
	* @param renderSession an object containing all the useful parameters
	*/
	function popMask(renderSession:RenderSession):Void;
	
	/**
	* Applies the Mask and adds it to the current filter stack.
	* 
	* @param maskData -
	* @param renderSession -
	*/
	function pushMask(maskData:Array<Dynamic>, renderSession:RenderSession):Void;
	
	/**
	* Sets the drawing context to the one given in parameter.
	* 
	* @param gl the current WebGL drawing context
	*/
	function setContext(gl:WebGLRenderingContext):Void;
	
}

